#!/bin/lua
local letters = {"q","w","e","r","t","y","u","i","o","p","a","s","d","f","g","h","j","k","l","z","x","c","v","b","n","m","1","2","3","4","5","6","7","8","9","0","~","!","@","#","$","%","^","&","*","(",")","_","+","=","-","/",".",";","'","\\",";","'","<",">","0","?"}
local password = ""
local showBanner = false
if showBanner == true then 
   print("Password generator for bob (DO NOT LEAK!)")
end
local input = function()
   local a = io.stdin:read()
   local g = string.gsub(a,"eval ","")
   return g
end

if tonumber(arg[1]) == nil then
   while true do
     print("Length or else I will send you a hitman")
     l = input()
     if tonumber(l) == nil then
       print("Invaild, Sent a hitman")
     else
        for i = 1,tonumber(l) do
          password = password..letters[math.random(1,#letters)]
        end
        print(password)
        file = io.open("passout", "w")
        file:write(password)
        file:close()
        l = nil
        password = nil
        os.exit(0)
    end
   end
else
   for i = 1,tonumber(arg[1]) do
	password = password..letters[math.random(1,#letters)]
   end
   print(password)
        file = io.open("passout", "w")
        file:write(password)
        file:close()
        l = nil
        password = nil
        os.exit(0)
end
