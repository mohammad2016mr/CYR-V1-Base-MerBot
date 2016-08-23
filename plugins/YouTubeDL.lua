do
function run(msg, matches)
local hash = 'yout:'..msg.from.id..matches[2]
if matches[1] == "dl" and redis:get(hash) then
local rr = redis:get(hash)
text = io.popen("youtube-dl -f "..matches[3].." https://www.youtube.com/watch?v="..rr):read('*all')
return text
end
end
return {
patterns = {
"^[#!/](dl) (.*)/(.*)$",
},
run = run
}
end
-- By #EhsanFox
