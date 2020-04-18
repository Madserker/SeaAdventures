GM.Name = "Sea Adventures"
GM.Author = "Madserker"
GM.Email = "madserker@gmail.com"
GM.Website = "N/A"

DeriveGamemode("sandbox")

include("custom_menu.lua")

function GM:Initialize()
    self.BaseClass.Initialize(self)
end