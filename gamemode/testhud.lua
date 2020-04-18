function HUD()
    local client = LocalPlayer()

    if !client:Alive() then
        return
    end

    draw.RoundedBox(0, 0, ScrH() - 100, 250, 100, Color(30, 30, 30, 130))

    draw.SimpleText("Health: "..client:Health().."%", "DermaDefaultBold", 10, ScrH() - 90, Color(255,255,255), 0, 0)
    draw.RoundedBox(0, 10, ScrH() - 75, 100 * 2.25, 15, Color(255,0,0,30))
    draw.RoundedBox(0, 10, ScrH() - 75, math.Clamp(client:Health(), 0, 100) * 2.25, 15, Color(255, 30, 30, 255))

    draw.SimpleText("Armor: "..client:Armor().."%", "DermaDefaultBold", 10, ScrH() - 55, Color(255,255,255), 0, 0)
    draw.RoundedBox(0, 10, ScrH() - 30, 100 * 2.25, 15, Color(0,0,255,30))
    draw.RoundedBox(0, 10, ScrH() - 30, math.Clamp(client:Armor(), 0, 100) * 2.25, 15, Color(0, 0, 255, 255))

    draw.RoundedBox(0, 255, ScrH() - 70, 125, 70, Color(30, 30, 30, 130))

    if (client:GetActiveWeapon() != nil && client:GetActiveWeapon():GetPrintName() != nil) then
        draw.SimpleText(client:GetActiveWeapon():GetPrintName(), "DermaDefaultBold", 260, ScrH() - 60, Color(255, 255, 255, 255), 0, 0)
    end

    if (client:GetActiveWeapon():Clip1() != -1) then
        draw.SimpleText("Ammo: "..client:GetActiveWeapon():Clip1() .. "/" .. client:GetAmmoCount(client:GetActiveWeapon():GetPrimaryAmmoType()), "DermaDefaultBold", 260, ScrH() - 40, Color(255,255,255,255), 0, 0)
    else
        draw.SimpleText("Ammo: ".. client:GetAmmoCount(client:GetActiveWeapon():GetPrimaryAmmoType()), "DermaDefaultBold", 260, ScrH() - 40, Color(255,255,255,255), 0, 0)
    end

    if (client:GetAmmoCount(client:GetActiveWeapon():GetSecondaryAmmoType()) > 0) then
        draw.SimpleText("Secondary: " .. client:GetAmmoCount(client:GetActiveWeapon():GetSecondaryAmmoType()), "DermaDefaultBold", 260, ScrH() - 25, Color(255,255,255,255), 0, 0)
    end

    draw.RoundedBox(0, 255, ScrH() - 100, 125, 25, Color(30,30,30,130))
    draw.SimpleText("KillCount: " .. client:GetNWInt("killCount"), "DermaDefaultBold", 260, ScrH() - 95, Color(255,255,255,255),0)
end
hook.Add("HUDPaint", "TestHud", HUD)

function HideHud(name)
    for k, v in pairs({"CHudHealth", "CHudBattery", "CHudAmmo", "CHudSecondaryAmmo"}) do
        if name == v then
            return false
        end
    end
end
hook.Add("HUDShouldDraw", "HideDefaultHud", HideHud)