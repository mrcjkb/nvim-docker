local Layout = require('nui.layout')
local state = require('nvim-docker.popup-state')

local _M = {}

function _M.create_layout(main_box, other_boxes)
  local boxes = {}
  table.insert(boxes, main_box)
  for _, box in ipairs(other_boxes) do
    table.insert(boxes, box)
  end
  local layout = Layout({
    position = '50%',
    size = {
      height = '90%',
      width = '90%'
    }
  }, Layout.Box(boxes))
  layout:mount()
  state.layout = layout
end

return _M
