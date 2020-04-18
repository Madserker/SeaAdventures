function changeToPirate(ply,cmd,args)
    ply:RemoveAllItems()

    ply:Give("weapon_stunstick")

    ply:Give("weapon_crowbar")

    ply:SetGravity(.80)
    ply:SetMaxHealth(100)
    ply:SetRunSpeed(500)

    ply:SetNWString("playerType", "P")

end
concommand.Add("change_to_pirate", changeToPirate)

function changeToFrogMan(ply,cmd,args)
    ply:RemoveAllItems()

    ply:Give("weapon_stunstick")

    ply:Give("weapon_pistol")

    ply:SetGravity(.80)
    ply:SetMaxHealth(150)
    ply:SetRunSpeed(500)

    ply:SetNWString("playerType", "F")
end
concommand.Add("change_to_frog_man", changeToFrogMan)

function changeToMoco(ply,cmd,args)
    ply:RemoveAllItems()

    ply:Give("weapon_stunstick")

    ply:Give("weapon_pistol")
    ply:Give("weapon_crowbar")

    ply:SetGravity(.80)
    ply:SetMaxHealth(50)
    ply:SetRunSpeed(500)

    ply:SetNWString("playerType", "M")
end
concommand.Add("change_to_moco", changeToMoco)

function changeToLapa(ply,cmd,args)
    ply:RemoveAllItems()

    ply:Give("weapon_stunstick")

    ply:SetGravity(.80)
    ply:SetMaxHealth(100)
    ply:SetRunSpeed(800)

    ply:SetNWString("playerType", "L")
end
concommand.Add("change_to_lapa", changeToLapa)

function changeToStone(ply,cmd,args)
    ply:RemoveAllItems()

    ply:Give("weapon_stunstick")

    ply:SetGravity(.80)
    ply:SetMaxHealth(10000)
    ply:SetRunSpeed(0)

    ply:SetNWString("playerType", "S")
end
concommand.Add("change_to_stone", changeToStone)

function changeToGold(ply,cmd,args)
    ply:RemoveAllItems()

    ply:SetGravity(.80)
    ply:SetMaxHealth(100)
    ply:SetRunSpeed(300)

    ply:SetNWString("playerType", "G")
end
concommand.Add("change_to_gold", changeToGold)

function restart(ply,cmd,args)
    for k,v in pairs(player.GetAll()) do
        v:Kill()
    end
end
concommand.Add("restart", restart)

