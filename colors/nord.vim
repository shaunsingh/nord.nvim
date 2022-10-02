lua << EOF
-- TODO: rename nord symbol
-- 开发的时候使用 :colorscheme nord 即可重新让样式生效
package.loaded['nord'] = nil
package.loaded['nord.util'] = nil
package.loaded['nord.colors'] = nil
package.loaded['nord.theme'] = nil
package.loaded['nord.functions'] = nil
package.loaded['nord.named_colors'] = nil

require('nord').set()
EOF
