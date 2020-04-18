include("concommands.lua")

local Menu

net.Receive("FMenu", function()
    local client = LocalPlayer()

    if (Menu == nil) then
        local Menu = vgui.Create("DFrame")
        Menu:SetSize(500,500)
        Menu:SetPos(ScrW()/2 - 250, ScrH()/2 - 250)
        Menu:SetTitle("Sea Adventures Menu")
        Menu:SetDraggable(false)
        Menu:ShowCloseButton(true)
        Menu:MakePopup()

        addButtons(Menu)
    end
end)

function addButtons(Menu)
    local pirataButton = vgui.Create("DButton")
    pirataButton:SetParent(Menu)
    pirataButton:SetText("")
    pirataButton:SetSize(100,50)
    pirataButton:SetPos(0,25)
    pirataButton.Paint = function()
        surface.SetDrawColor(50,50,50,255)
        surface.DrawRect(0,0,pirataButton:GetWide(), pirataButton:GetTall())

        surface.SetDrawColor(40,40,40,255)
        surface.DrawRect(0,49, pirataButton:GetWide(), 1)
        surface.DrawRect(99,0,1,pirataButton:GetTall())

        draw.DrawText("Pirata pataPalo", "DermaDefaultBold", pirataButton:GetWide()/2,17, Color(1,1,255,255),1)
    end

    pirataButton.DoClick = function(pirataButton)
        LocalPlayer():SetNWString("playerType", "Pirata")
        LocalPlayer():ConCommand("change_to_pirate")
    end

    local oroButton = vgui.Create("DButton")
    oroButton:SetParent(Menu)
    oroButton:SetText("")
    oroButton:SetSize(100,50)
    oroButton:SetPos(0,75)
    oroButton.Paint = function()
        surface.SetDrawColor(50,50,50,255)
        surface.DrawRect(0,0,oroButton:GetWide(), oroButton:GetTall())

        surface.SetDrawColor(40,40,40,255)
        surface.DrawRect(0,49, oroButton:GetWide(), 1)
        surface.DrawRect(99,0,1,oroButton:GetTall())

        draw.DrawText("Oro", "DermaDefaultBold", oroButton:GetWide()/2,17, Color(255,255,0,255),1)
    end

    oroButton.DoClick = function(oroButton)
        LocalPlayer():SetNWString("playerType", "Oro")
        LocalPlayer():ConCommand("change_to_lapa")
    end

    local hombreRanaButton = vgui.Create("DButton")
    hombreRanaButton:SetParent(Menu)
    hombreRanaButton:SetText("")
    hombreRanaButton:SetSize(100,50)
    hombreRanaButton:SetPos(0,125)
    hombreRanaButton.Paint = function()
        surface.SetDrawColor(50,50,50,255)
        surface.DrawRect(0,0,hombreRanaButton:GetWide(), hombreRanaButton:GetTall())

        surface.SetDrawColor(40,40,40,255)
        surface.DrawRect(0,49, hombreRanaButton:GetWide(), 1)
        surface.DrawRect(99,0,1,hombreRanaButton:GetTall())

        draw.DrawText("Hombre Rana", "DermaDefaultBold", hombreRanaButton:GetWide()/2,17, Color(0,255,100,255),1)
    end

    hombreRanaButton.DoClick = function(hombreRanaButton)
        LocalPlayer():SetNWString("playerType", "Hombre rana")
        LocalPlayer():ConCommand("change_to_frog_man")

    end

    local mocoButton = vgui.Create("DButton")
    mocoButton:SetParent(Menu)
    mocoButton:SetText("")
    mocoButton:SetSize(100,50)
    mocoButton:SetPos(0,175)
    mocoButton.Paint = function()
        surface.SetDrawColor(50,50,50,255)
        surface.DrawRect(0,0,mocoButton:GetWide(), mocoButton:GetTall())

        surface.SetDrawColor(40,40,40,255)
        surface.DrawRect(0,49, mocoButton:GetWide(), 1)
        surface.DrawRect(99,0,1,mocoButton:GetTall())

        draw.DrawText("Moco", "DermaDefaultBold", mocoButton:GetWide()/2,17, Color(0,255,0,255),1)
    end

    mocoButton.DoClick = function(mocoButton)
        LocalPlayer():SetNWString("playerType", "Moco")
        LocalPlayer():ConCommand("change_to_moco")

    end

    local piedraButton = vgui.Create("DButton")
    piedraButton:SetParent(Menu)
    piedraButton:SetText("")
    piedraButton:SetSize(100,50)
    piedraButton:SetPos(0,225)
    piedraButton.Paint = function()
        surface.SetDrawColor(50,50,50,255)
        surface.DrawRect(0,0,piedraButton:GetWide(), piedraButton:GetTall())

        surface.SetDrawColor(40,40,40,255)
        surface.DrawRect(0,49, piedraButton:GetWide(), 1)
        surface.DrawRect(99,0,1,piedraButton:GetTall())

        draw.DrawText("Piedra", "DermaDefaultBold", piedraButton:GetWide()/2,17, Color(255,255,255,255),1)
    end

    piedraButton.DoClick = function(piedraButton)
        LocalPlayer():SetNWString("playerType", "Piedra")
        LocalPlayer():ConCommand("change_to_stone")
    end

    local lapaButton = vgui.Create("DButton")
    lapaButton:SetParent(Menu)
    lapaButton:SetText("")
    lapaButton:SetSize(100,50)
    lapaButton:SetPos(0,275)
    lapaButton.Paint = function()
        surface.SetDrawColor(50,50,50,255)
        surface.DrawRect(0,0,lapaButton:GetWide(), lapaButton:GetTall())

        surface.SetDrawColor(40,40,40,255)
        surface.DrawRect(0,49, lapaButton:GetWide(), 1)
        surface.DrawRect(99,0,1,lapaButton:GetTall())

        draw.DrawText("Lapa", "DermaDefaultBold", lapaButton:GetWide()/2,17, Color(150,50,200,255),1)
    end
    
    lapaButton.DoClick = function(lapaButton)
        LocalPlayer():SetNWString("playerType", "Lapa")
        LocalPlayer():ConCommand("change_to_lapa")
    end
end