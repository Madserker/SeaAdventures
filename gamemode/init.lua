AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
AddCSLuaFile("testhud.lua")

include("shared.lua")

function GM:PlayerSpawn(ply)--evrytime it spawns
    ply:SetGravity(.80)
    ply:SetMaxHealth(100)
    ply:SetRunSpeed(500)
    ply:Give("weapon_physgun")
    ply:SetupHands()
end

function GM:PlayerInitialSpawn()--first time it spawns
end

function GM:OnNPCKilled(npc, attacker, inflictor)

end

function GM:PlayerDeath(victim, inflictor, attacker)
    attacker:SetNWInt("killCount", attacker:GetNWInt("killCount") + 1)
end

util.AddNetworkString("FMenu")
function GM:ShowSpare2(ply)
    net.Start("FMenu")
    net.Broadcast()
end

function GM:OnEndRound()
end

function GM:OnStartRound()
    net.Start("FMenu")
    net.Broadcast()
end
