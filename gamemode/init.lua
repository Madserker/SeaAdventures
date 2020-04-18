AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
AddCSLuaFile("testhud.lua")

include("shared.lua")

function GM:Initialize()
    GAMEMODE.round_state = ROUND_WAIT
    self.BaseClass:Initialize()
end

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

end