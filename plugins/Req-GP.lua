do

 function run(msg, matches)
 local ch = ''..msg.to.id -- YourID Example '146661928' 
 local fuse = 'New SuperGroup Request!\n\nId : ' .. msg.from.id .. '\n\nName: ' .. msg.from.print_name ..'\n\nUsername: @' .. msg.from.username ..'\n\nMessage From: '..msg.to.id.. '\n\nThe Pm:\n' .. matches[1]
 local fuses = '!printf user#id' .. msg.from.id


   local text = matches[1]
   local chat = "chat#id"..1040275374

  local sends = send_msg(chat, fuse, ok_cb, false)
  return 'Request Is Sent!\nYour SuperGroup Is Waiting For Create!'

 end
 end
 return {

  description = "SuperGroup request",

  usage = "",
  patterns = {
  "^[#!/]reqgp$"

  },
  run = run
 }
