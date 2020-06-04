function file_exists(name)
   local f=io.open(name,"r")
   if f~=nil then io.close(f) return true else return false end
end

function lines_from(file)
  lines = {}
  for line in io.lines(file) do
    lines[#lines + 1] = line
  end
  return lines
end

if not file_exists("LoadLevelScript.lcfg") then
  print("file does not exist!")
  os.exit()
end

local configGrab = lines_from("LoadLevelScript.lcfg")
print(configGrab[1])
print(configGrab[2] .. ".lua")
SubProject_Switch(configGrab[1], configGrab[2] .. ".lua")
