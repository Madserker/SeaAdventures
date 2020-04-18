AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
AddCSLuaFile("testhud.lua")
AddCSLuaFile("custom_menu.lua")

include("shared.lua")
include("concommands.lua")

function GM:PlayerSpawn(ply)--evrytime it spawns
    ply:SetGravity(.80)
    ply:SetMaxHealth(100)
    ply:SetRunSpeed(500)
    ply:SetupHands()

    ply:SetModel("models\\police_ss.mdl")

    ply:SetNWString("Objective", "None")

    print(ply:GetNWString("playerType"))
end

function GM:PlayerDeath(victim, inflictor, attacker)
    attacker:SetNWInt("killCount", attacker:GetNWInt("killCount") + 1)
end

util.AddNetworkString("FMenu")
function GM:ShowSpare2(ply)
    net.Start("FMenu")
    net.Broadcast()
end

function GM:PlayerSay(sender,text,teamChat)
    found = false
    print(sender:GetName())
    print(sender:GetNWString("playerType"))
    if (sender:GetNWString("playerType") == "G") then 
        if(sender:GetNWString("Objective") == "None") then
            sender:SetNWString("Objective", text)
        else
            for k,v in pairs(player.GetAll()) do
                if(sender:GetNWString("Objective") == v:GetName() && v:GetNWString("PlayerType") == text) then
                    v:Kill()
                    sender:SetNWString("Objective", "None")
                    found = true
                end
            end
            if (!found) then
                sender:Kill()
            end
        end
    end
end
