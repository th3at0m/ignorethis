tape = peripheral.find("tape_drive")
term.clear()
if tape == nil then
    print("No Tape Drive Found!")
end
if not tape.isReady() then
    print("No Tape Inserted!")
end
print("URL: ")
url = read()
local response = http.get(url, nil, true)
tape.seek(-tape.getPosition())
tape.write(response.readAll())
response.close()
tape.seek(-tape.getPosition())
write("Label: ")
label = read()
tape.setLabel(name)