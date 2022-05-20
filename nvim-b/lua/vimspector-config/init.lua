vim.cmd([[
let g:vimspector_configurations = {
  \ "$schema": "https://puremourning.github.io/vimspector/schema/vimspector.schema.json#",
  \ "configurations": {
  \     "Python": {
  \       "adapter": "debugpy",
  \       "filetypes": [ "python" ],
  \       "default": v:true,
  \       "configuration": {
  \         "request": "launch",
  \         "program": "${file}",
  \         "stopOnEntry": v:true,
  \         "cwd": "${workspaceRoot}"
  \       }
  \     },
  \   }}
]])
