import * as React from 'react';
import { BaseSelect } from 'rc-select';
import type { IconType } from 'rc-tree/lib/interface';
import type { ExpandAction } from 'rc-tree/lib/Tree';
import type {
  BaseSelectRef,
  BaseSelectPropsWithoutPrivate,
  BaseSelectProps,
  SelectProps,
} from 'rc-select';
import { conductCheck } from 'rc-tree/lib/utils/conductUtil';
import useId from 'rc-select/lib/hooks/useId';
import useMergedState from 'rc-util/lib/hooks/useMergedState';
import OptionList from './OptionList';
import TreeNode from './TreeNode';
import { formatStrategyValues, SHOW_ALL, SHOW_PARENT, SHOW_CHILD } from './utils/strategyUtil';
import type { CheckedStrategy } from './utils/strategyUtil';
import TreeSelectContext from './TreeSelectContext';
import type { TreeSelectContextProps } from './TreeSelectContext';
import LegacyContext from './LegacyContext';
import useTreeData from './hooks/useTreeData';
import { toArray, fillFieldNames, isNil } from './utils/valueUtil';
import useCache from './hooks/useCache';
import useRefFunc from './hooks/useRefFunc';
import useDataEntities from './hooks/useDataEntities';
import { fillAdditionalInfo, fillLegacyProps } from './utils/legacyUtil';
import useCheckedKeys from './hooks/useCheckedKeys';
import useFilterTreeData from './hooks/useFilterTreeData';
import warningProps from './utils/warningPropsUtil';
import warning from 'rc-util/lib/warning';

export type OnInternalSelect = (value: RawValueType, info: { selected: boolean }) => void;

export type RawValueType = string | number;

export interface LabeledValueType {
  key?: React.Key;
  value?: RawValueType;
  label?: React.ReactNode;
  /** Only works on `treeCheckStrictly` */
  halfChecked?: boolean;
}

export type SelectSource = 'option' | 'selection' | 'input' | 'clear';

export type DraftValueType = RawValueType | LabeledValueType | (RawValueType | LabeledValueType)[];

/** @deprecated This is only used for legacy compatible. Not works on new code. */
export interface LegacyCheckedNode {
  pos: string;
  node: React.ReactElement;
  children?: LegacyCheckedNode[];
}

export interface ChangeEventExtra {
  /** @deprecated Please save prev value by control logic instead */
  preValue: LabeledValueType[];
  triggerValue: RawValueType;
  /** @deprecated Use `onSelect` or `onDeselect` instead. */
  selected?: boolean;
  /** @deprecated Use `onSelect` or `onDeselect` instead. */
  checked?: boolean;

  // Not sure if exist user still use this. We have to keep but not recommend user to use
  /** @deprecated This prop not work as react node anymore. */
  triggerNode: React.ReactElement;
  /** @deprecated This prop not work as react node anymore. */
  allCheckedNodes: LegacyCheckedNode[];
}

export interface FieldNames {
  value?: string;
  label?: string;
  children?: string;
}

export interface InternalFieldName extends Omit<FieldNames, 'label'> {
  _title: string[];
}

export interface SimpleModeConfig {
  id?: React.Key;
  pId?: React.Key;
  rootPId?: React.Key;
}

export interface BaseOptionType {
  disabled?: boolean;
  checkable?: boolean;
  disableCheckbox?: boolean;
  children?: BaseOptionType[];
  [name: string]: any;
}

export interface DefaultOptionType extends BaseOptionType {
  value?: RawValueType;
  title?: React.ReactNode;
  label?: React.ReactNode;
  key?: React.Key;
  children?: DefaultOptionType[];
}

export interface LegacyDataNode extends DefaultOptionType {
  props: any;
}
export interface TreeSelectProps<
  ValueType = any,
  OptionType extends BaseOptionType = DefaultOptionType
> extends Omit<BaseSelectPropsWithoutPrivate, 'mode'> {
  prefixCls?: string;
  id?: string;

  // >>> Value
  value?: ValueType;
  defaultValue?: ValueType;
  onChange?: (value: ValueType, labelList: React.ReactNode[], extra: ChangeEventExtra) => void;

  // >>> Search
  searchValue?: string;
  /** @deprecated Use `searchValue` instead */
  inputValue?: string;
  onSearch?: (value: string) => void;
  autoClearSearchValue?: boolean;
  filterTreeNode?: boolean | ((inputValue: string, treeNode: DefaultOptionType) => boolean);
  treeNodeFilterProp?: string;

  // >>> Select
  onSelect?: SelectProps<ValueType, OptionType>['onSelect'];
  onDeselect?: SelectProps<ValueType, OptionType>['onDeselect'];

  // >>> Selector
  showCheckedStrategy?: CheckedStrategy;
  treeNodeLabelProp?: string;

  // >>> Field Names
  fieldNames?: FieldNames;

  // >>> Mode
  multiple?: boolean;
  treeCheckable?: boolean | React.ReactNode;
  treeCheckStrictly?: boolean;
  labelInValue?: boolean;

  // >>> Data
  treeData?: OptionType[];
  treeDataSimpleMode?: boolean | SimpleModeConfig;
  loadData?: (dataNode: LegacyDataNode) => Promise<unknown>;
  treeLoadedKeys?: React.Key[];
  onTreeLoad?: (loadedKeys: React.Key[]) => void;

  // >>> Expanded
  treeDefaultExpandAll?: boolean;
  treeExpandedKeys?: React.Key[];
  treeDefaultExpandedKeys?: React.Key[];
  onTreeExpand?: (expandedKeys: React.Key[]) => void;
  treeExpandAction?: ExpandAction;

  // >>> Options
  virtual?: boolean;
  listHeight?: number;
  listItemHeight?: number;
  onDropdownVisibleChange?: (open: boolean) => void;

  // >>> Tree
  treeLine?: boolean;
  treeIcon?: IconType;
  showTreeIcon?: boolean;
  switcherIcon?: IconType;
  treeMotion?: any;
}

function isRawValue(value: RawValueType | LabeledValueType): value is RawValueType {
  return !value || typeof value !== 'object';
}

const TreeSelect = React.forwardRef<BaseSelectRef, TreeSelectProps>((props, ref) => {
  const {
    id,
    prefixCls = 'rc-tree-select',

    // Value
    value,
    defaultValue,
    onChange,
    onSelect,
    onDeselect,

    // Search
    searchValue,
    inputValue,
    onSearch,
    autoClearSearchValue = true,
    filterTreeNode,
    treeNodeFilterProp = 'value',

    // Selector
    showCheckedStrategy = SHOW_CHILD,
    treeNodeLabelProp,

    //  Mode
    multiple,
    treeCheckable,
    treeCheckStrictly,
    labelInValue,

    // FieldNames
    fieldNames,

    // Data
    treeDataSimpleMode,
    treeData,
    children,
    loadData,
    treeLoadedKeys,
    onTreeLoad,

    // Expanded
    treeDefaultExpandAll,
    treeExpandedKeys,
    treeDefaultExpandedKeys,
    onTreeExpand,
    treeExpandAction,

    // Options
    virtual,
    listHeight = 200,
    listItemHeight = 20,
    onDropdownVisibleChange,
    dropdownMatchSelectWidth = true,

    // Tree
    treeLine,
    treeIcon,
    showTreeIcon,
    switcherIcon,
    treeMotion,

    ...restProps
  } = props;

  const mergedId = useId(id);
  const treeConduction = treeCheckable && !treeCheckStrictly;
  const mergedCheckable = treeCheckable || treeCheckStrictly;
  const mergedLabelInValue = treeCheckStrictly || labelInValue;
  const mergedMultiple = mergedCheckable || multiple;

  // ========================== Warning ===========================
  if (process.env.NODE_ENV !== 'production') {
    warningProps(props);
  }

  // ========================= FieldNames =========================
  const mergedFieldNames: InternalFieldName = React.useMemo(
    () => fillFieldNames(fieldNames),
    /* eslint-disable react-hooks/exhaustive-deps */
    [JSON.stringify(fieldNames)],
    /* eslint-enable react-hooks/exhaustive-deps */
  );

  // =========================== Search ===========================
  const [mergedSearchValue, setSearchValue] = useMergedState('', {
    value: searchValue !== undefined ? searchValue : inputValue,
    postState: search => search || '',
  });

  const onInternalSearch: BaseSelectProps['onSearch'] = searchText => {
    setSearchValue(searchText);
    onSearch?.(searchText);
  };

  // ============================ Data ============================
  // `useTreeData` only do convert of `children` or `simpleMode`.
  // Else will return origin `treeData` for perf consideration.
  // Do not do anything to loop the data.
  const mergedTreeData = useTreeData(treeData, children, treeDataSimpleMode);

  const { keyEntities, valueEntities } = useDataEntities(mergedTreeData, mergedFieldNames);

  /** Get `missingRawValues` which not exist in the tree yet */
  const splitRawValues = React.useCallback(
    (newRawValues: RawValueType[]) => {
      const missingRawValues = [];
      const existRawValues = [];

      // Keep missing value in the cache
      newRawValues.forEach(val => {
        if (valueEntities.has(val)) {
          existRawValues.push(val);
        } else {
          missingRawValues.push(val);
        }
      });

      return { missingRawValues, existRawValues };
    },
    [valueEntities],
  );

  // Filtered Tree
  const filteredTreeData = useFilterTreeData(mergedTreeData, mergedSearchValue, {
    fieldNames: mergedFieldNames,
    treeNodeFilterProp,
    filterTreeNode,
  });

  // =========================== Label ============================
  const getLabel = React.useCallback(
    (item: DefaultOptionType) => {
      if (item) {
        if (treeNodeLabelProp) {
          return item[treeNodeLabelProp];
        }

        // Loop from fieldNames
        const { _title: titleList } = mergedFieldNames;

        for (let i = 0; i < titleList.length; i += 1) {
          const title = item[titleList[i]];
          if (title !== undefined) {
            return title;
          }
        }
      }
    },
    [mergedFieldNames, treeNodeLabelProp],
  );

  // ========================= Wrap Value =========================
  const toLabeledValues = React.useCallback((draftValues: DraftValueType) => {
    const values = toArray(draftValues);

    return values.map(val => {
      if (isRawValue(val)) {
        return { value: val };
      }
      return val;
    });
  }, []);

  const convert2LabelValues = React.useCallback(
    (draftValues: DraftValueType) => {
      const values = toLabeledValues(draftValues);

      return values.map(item => {
        let { label: rawLabel } = item;
        const { value: rawValue, halfChecked: rawHalfChecked } = item;

        let rawDisabled: boolean | undefined;

        const entity = valueEntities.get(rawValue);

        // Fill missing label & status
        if (entity) {
          rawLabel = rawLabel ?? getLabel(entity.node);
          rawDisabled = entity.node.disabled;
        }

        return {
          label: rawLabel,
          value: rawValue,
          halfChecked: rawHalfChecked,
          disabled: rawDisabled,
        };
      });
    },
    [valueEntities, getLabel, toLabeledValues],
  );

  // =========================== Values ===========================
  const [internalValue, setInternalValue] = useMergedState(defaultValue, { value });

  const rawMixedLabeledValues = React.useMemo(() => toLabeledValues(internalValue), [
    toLabeledValues,
    internalValue,
  ]);

  // Split value into full check and half check
  const [rawLabeledValues, rawHalfLabeledValues] = React.useMemo(() => {
    const fullCheckValues: LabeledValueType[] = [];
    const halfCheckValues: LabeledValueType[] = [];

    rawMixedLabeledValues.forEach(item => {
      if (item.halfChecked) {
        halfCheckValues.push(item);
      } else {
        fullCheckValues.push(item);
      }
    });

    return [fullCheckValues, halfCheckValues];
  }, [rawMixedLabeledValues]);

  // const [mergedValues] = useCache(rawLabeledValues);
  const rawValues = React.useMemo(() => rawLabeledValues.map(item => item.value), [
    rawLabeledValues,
  ]);

  // Convert value to key. Will fill missed keys for conduct check.
  const [rawCheckedValues, rawHalfCheckedValues] = useCheckedKeys(
    rawLabeledValues,
    rawHalfLabeledValues,
    treeConduction,
    keyEntities,
  );

  // Convert rawCheckedKeys to check strategy related values
  const displayValues = React.useMemo(() => {
    // Collect keys which need to show
    const displayKeys = formatStrategyValues(
      rawCheckedValues,
      showCheckedStrategy,
      keyEntities,
      mergedFieldNames,
    );

    // Convert to value and filled with label
    const values = displayKeys.map(key => keyEntities[key]?.node?.[mergedFieldNames.value] ?? key);

    // Back fill with origin label
    const labeledValues = values.map(val => {
      const targetItem = rawLabeledValues.find(item => item.value === val);
      return {
        value: val,
        label: targetItem?.label,
      };
    });

    const rawDisplayValues = convert2LabelValues(labeledValues);

    const firstVal = rawDisplayValues[0];

    if (!mergedMultiple && firstVal && isNil(firstVal.value) && isNil(firstVal.label)) {
      return [];
    }

    return rawDisplayValues.map(item => ({
      ...item,
      label: item.label ?? item.value,
    }));
  }, [
    mergedFieldNames,
    mergedMultiple,
    rawCheckedValues,
    rawLabeledValues,
    convert2LabelValues,
    showCheckedStrategy,
    keyEntities,
  ]);

  const [cachedDisplayValues] = useCache(displayValues);

  // =========================== Change ===========================
  const triggerChange = useRefFunc(
    (
      newRawValues: RawValueType[],
      extra: { triggerValue?: RawValueType; selected?: boolean },
      source: SelectSource,
    ) => {
      const labeledValues = convert2LabelValues(newRawValues);
      setInternalValue(labeledValues);

      // Clean up if needed
      if (autoClearSearchValue) {
        setSearchValue('');
      }

      // Generate rest parameters is costly, so only do it when necessary
      if (onChange) {
        let eventValues: RawValueType[] = newRawValues;
        if (treeConduction) {
          const formattedKeyList = formatStrategyValues(
            newRawValues,
            showCheckedStrategy,
            keyEntities,
            mergedFieldNames,
          );
          eventValues = formattedKeyList.map(key => {
            const entity = valueEntities.get(key);
            return entity ? entity.node[mergedFieldNames.value] : key;
          });
        }

        const { triggerValue, selected } = extra || {
          triggerValue: undefined,
          selected: undefined,
        };

        let returnRawValues: (LabeledValueType | RawValueType)[] = eventValues;

        // We need fill half check back
        if (treeCheckStrictly) {
          const halfValues = rawHalfLabeledValues.filter(item => !eventValues.includes(item.value));

          returnRawValues = [...returnRawValues, ...halfValues];
        }

        const returnLabeledValues = convert2LabelValues(returnRawValues);
        const additionalInfo = {
          // [Legacy] Always return as array contains label & value
          preValue: rawLabeledValues,
          triggerValue,
        } as ChangeEventExtra;

        // [Legacy] Fill legacy data if user query.
        // This is expansive that we only fill when user query
        // https://github.com/react-component/tree-select/blob/fe33eb7c27830c9ac70cd1fdb1ebbe7bc679c16a/src/Select.jsx
        let showPosition = true;
        if (treeCheckStrictly || (source === 'selection' && !selected)) {
          showPosition = false;
        }

        fillAdditionalInfo(
          additionalInfo,
          triggerValue,
          newRawValues,
          mergedTreeData,
          showPosition,
          mergedFieldNames,
        );

        if (mergedCheckable) {
          additionalInfo.checked = selected;
        } else {
          additionalInfo.selected = selected;
        }

        const returnValues = mergedLabelInValue
          ? returnLabeledValues
          : returnLabeledValues.map(item => item.value);

        onChange(
          mergedMultiple ? returnValues : returnValues[0],
          mergedLabelInValue ? null : returnLabeledValues.map(item => item.label),
          additionalInfo,
        );
      }
    },
  );

  // ========================== Options ===========================
  /** Trigger by option list */
  const onOptionSelect = React.useCallback(
    (selectedKey: React.Key, { selected, source }: { selected: boolean; source: SelectSource }) => {
      const entity = keyEntities[selectedKey];
      const node = entity?.node;
      const selectedValue = node?.[mergedFieldNames.value] ?? selectedKey;

      // Never be falsy but keep it safe
      if (!mergedMultiple) {
        // Single mode always set value
        triggerChange([selectedValue], { selected: true, triggerValue: selectedValue }, 'option');
      } else {
        let newRawValues = selected
          ? [...rawValues, selectedValue]
          : rawCheckedValues.filter(v => v !== selectedValue);

        // Add keys if tree conduction
        if (treeConduction) {
          // Should keep missing values
          const { missingRawValues, existRawValues } = splitRawValues(newRawValues);
          const keyList = existRawValues.map(val => valueEntities.get(val).key);

          // Conduction by selected or not
          let checkedKeys: React.Key[];
          if (selected) {
            ({ checkedKeys } = conductCheck(keyList, true, keyEntities));
          } else {
            ({ checkedKeys } = conductCheck(
              keyList,
              { checked: false, halfCheckedKeys: rawHalfCheckedValues },
              keyEntities,
            ));
          }

          // Fill back of keys
          newRawValues = [
            ...missingRawValues,
            ...checkedKeys.map(key => keyEntities[key].node[mergedFieldNames.value]),
          ];
        }
        triggerChange(newRawValues, { selected, triggerValue: selectedValue }, source || 'option');
      }

      // Trigger select event
      if (selected || !mergedMultiple) {
        onSelect?.(selectedValue, fillLegacyProps(node));
      } else {
        onDeselect?.(selectedValue, fillLegacyProps(node));
      }
    },
    [
      splitRawValues,
      valueEntities,
      keyEntities,
      mergedFieldNames,
      mergedMultiple,
      rawValues,
      triggerChange,
      treeConduction,
      onSelect,
      onDeselect,
      rawCheckedValues,
      rawHalfCheckedValues,
    ],
  );

  // ========================== Dropdown ==========================
  const onInternalDropdownVisibleChange = React.useCallback(
    (open: boolean) => {
      if (onDropdownVisibleChange) {
        const legacyParam = {};

        Object.defineProperty(legacyParam, 'documentClickClose', {
          get() {
            warning(false, 'Second param of `onDropdownVisibleChange` has been removed.');
            return false;
          },
        });

        (onDropdownVisibleChange as any)(open, legacyParam);
      }
    },
    [onDropdownVisibleChange],
  );

  // ====================== Display Change ========================
  const onDisplayValuesChange = useRefFunc<BaseSelectProps['onDisplayValuesChange']>(
    (newValues, info) => {
      const newRawValues = newValues.map(item => item.value);

      if (info.type === 'clear') {
        triggerChange(newRawValues, {}, 'selection');
        return;
      }

      // TreeSelect only have multiple mode which means display change only has remove
      if (info.values.length) {
        onOptionSelect(info.values[0].value, { selected: false, source: 'selection' });
      }
    },
  );

  // ========================== Context ===========================
  const treeSelectContext = React.useMemo<TreeSelectContextProps>(
    () => ({
      virtual,
      dropdownMatchSelectWidth,
      listHeight,
      listItemHeight,
      treeData: filteredTreeData,
      fieldNames: mergedFieldNames,
      onSelect: onOptionSelect,
      treeExpandAction,
    }),
    [
      virtual,
      dropdownMatchSelectWidth,
      listHeight,
      listItemHeight,
      filteredTreeData,
      mergedFieldNames,
      onOptionSelect,
      treeExpandAction,
    ],
  );

  // ======================= Legacy Context =======================
  const legacyContext = React.useMemo(
    () => ({
      checkable: mergedCheckable,
      loadData,
      treeLoadedKeys,
      onTreeLoad,
      checkedKeys: rawCheckedValues,
      halfCheckedKeys: rawHalfCheckedValues,
      treeDefaultExpandAll,
      treeExpandedKeys,
      treeDefaultExpandedKeys,
      onTreeExpand,
      treeIcon,
      treeMotion,
      showTreeIcon,
      switcherIcon,
      treeLine,
      treeNodeFilterProp,
      keyEntities,
    }),
    [
      mergedCheckable,
      loadData,
      treeLoadedKeys,
      onTreeLoad,
      rawCheckedValues,
      rawHalfCheckedValues,
      treeDefaultExpandAll,
      treeExpandedKeys,
      treeDefaultExpandedKeys,
      onTreeExpand,
      treeIcon,
      treeMotion,
      showTreeIcon,
      switcherIcon,
      treeLine,
      treeNodeFilterProp,
      keyEntities,
    ],
  );

  // =========================== Render ===========================
  return (
    <TreeSelectContext.Provider value={treeSelectContext}>
      <LegacyContext.Provider value={legacyContext}>
        <BaseSelect
          ref={ref}
          {...restProps}
          // >>> MISC
          id={mergedId}
          prefixCls={prefixCls}
          mode={mergedMultiple ? 'multiple' : undefined}
          // >>> Display Value
          displayValues={cachedDisplayValues}
          onDisplayValuesChange={onDisplayValuesChange}
          // >>> Search
          searchValue={mergedSearchValue}
          onSearch={onInternalSearch}
          // >>> Options
          OptionList={OptionList}
          emptyOptions={!mergedTreeData.length}
          onDropdownVisibleChange={onInternalDropdownVisibleChange}
          dropdownMatchSelectWidth={dropdownMatchSelectWidth}
        />
      </LegacyContext.Provider>
    </TreeSelectContext.Provider>
  );
});

// Assign name for Debug
if (process.env.NODE_ENV !== 'production') {
  TreeSelect.displayName = 'TreeSelect';
}

const GenericTreeSelect = (TreeSelect as unknown) as (<
  ValueType = any,
  OptionType extends BaseOptionType | DefaultOptionType = DefaultOptionType
>(
  props: React.PropsWithChildren<TreeSelectProps<ValueType, OptionType>> & {
    ref?: React.Ref<BaseSelectRef>;
  },
) => React.ReactElement) & {
  TreeNode: typeof TreeNode;
  SHOW_ALL: typeof SHOW_ALL;
  SHOW_PARENT: typeof SHOW_PARENT;
  SHOW_CHILD: typeof SHOW_CHILD;
};

GenericTreeSelect.TreeNode = TreeNode;
GenericTreeSelect.SHOW_ALL = SHOW_ALL;
GenericTreeSelect.SHOW_PARENT = SHOW_PARENT;
GenericTreeSelect.SHOW_CHILD = SHOW_CHILD;

export default GenericTreeSelect;
