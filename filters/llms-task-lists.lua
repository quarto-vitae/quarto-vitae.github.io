--[[
  Keep task lists as task lists in the llms.txt markdown copies.

  Quarto builds each <page>.llms.md by converting the rendered HTML back to
  markdown with pandoc. Pandoc writes a task list item as
  `<input type="checkbox" />`, but Quarto re-serialises the page through a DOM,
  which drops the self-closing slash; pandoc's HTML reader then fails to read
  the list, and the whole list collapses into plain paragraphs.

  For agent-only content (`.content-visible when-format="llms-txt"`) this writes
  each checkbox as a literal ballot box character instead. That survives the
  round trip, and pandoc's gfm writer turns a list item starting with one back
  into `- [ ]` (or `- [x]` for a ticked box).
]]

local BOXES = { ["☐"] = "&#9744;", ["☒"] = "&#9746;" }

local function is_llms_only(div)
  return div.classes:includes("content-visible")
    and div.attributes["when-format"] == "llms-txt"
end

local function plain_boxes(list)
  for _, item in ipairs(list.content) do
    local first = item[1]
    if first and (first.t == "Plain" or first.t == "Para") then
      local lead = first.content[1]
      if lead and lead.t == "Str" and BOXES[lead.text] then
        first.content[1] = pandoc.RawInline("html", BOXES[lead.text])
      end
    end
  end
  return list
end

function Div(div)
  if FORMAT:match("html") and is_llms_only(div) then
    return div:walk({ BulletList = plain_boxes })
  end
end
