StartBoosting(*) {
    global Field, Slot, StopAfter

    SlotValue := Slot.Value
    StopAfterValue := StopAfter.Value
    attempts := 0

    if !WinExist("ahk_exe RobloxPlayerBeta.exe") { ; checks for roblox 
        MsgBox("RobloxPlayerBeta.exe window not found.", "Error")
        return
    }

    if !WinActive("ahk_exe RobloxPlayerBeta.exe") { ; turns on roblox window if its active in background
        WinActivate("ahk_exe RobloxPlayerBeta.exe")
        WinWaitActive("ahk_exe RobloxPlayerBeta.exe", "", 5)
        if !WinActive("ahk_exe RobloxPlayerBeta.exe") {
            MsgBox("Failed to activate RobloxPlayerBeta.exe window.", "Error")
            return
        }
    }

    Loop {
        if !WinActive("ahk_exe RobloxPlayerBeta.exe") {
            MsgBox("RobloxPlayerBeta.exe window is no longer active. Stopping script.", "Error")
            Break
        }

        
        Send(SlotValue)
        attempts++
        Sleep(2000)

        SelectedField := Field.Text
        success := false

        if (SelectedField = "Any Blue Field") { ; starts looking for images for fields
            if ImageSearch(&x, &y, 0, 0, A_ScreenWidth, 60, "*50 " A_ScriptDir "\images\boostblueflower.png") {
                MouseMove(x, y)
                MsgBox("Boosted Blue Flower Field", "Success")
                success := true
            }
            if ImageSearch(&x, &y, 0, 0, A_ScreenWidth, 60, "*50 " A_ScriptDir "\images\boostbamboo.png") {
                MouseMove(x, y)
                MsgBox("Boosted Bamboo Field", "Success")
                success := true
            }
            if ImageSearch(&x, &y, 0, 0, A_ScreenWidth, 60, "*50 " A_ScriptDir "\images\boostpinetree.png") {
                MouseMove(x, y)
                MsgBox("Boosted Pine Tree Field", "Success")
                success := true
            }
            if ImageSearch(&x, &y, 0, 0, A_ScreenWidth, 60, "*50 " A_ScriptDir "\images\booststump.png") {
                MouseMove(x, y)
                MsgBox("Boosted Stump Field", "Success")
                success := true
            }
        }
        else if (SelectedField = "Any Red Field") {
            if ImageSearch(&x, &y, 0, 0, A_ScreenWidth, 60, "*50 " A_ScriptDir "\images\boostmushroom.png") {
                MouseMove(x, y)
                MsgBox("Boosted Mushroom Field", "Success")
                success := true
            }
            if ImageSearch(&x, &y, 0, 0, A_ScreenWidth, 60, "*50 " A_ScriptDir "\images\booststrawberry.png") {
                MouseMove(x, y)
                MsgBox("Boosted Strawberry Field", "Success")
                success := true  
            }
            if ImageSearch(&x, &y, 0, 0, A_ScreenWidth, 60, "*50 " A_ScriptDir "\images\boostrose.png") {
                MouseMove(x, y)
                MsgBox("Boosted Rose Field", "Success")
                success := true
            }
            if ImageSearch(&x, &y, 0, 0, A_ScreenWidth, 60, "*50 " A_ScriptDir "\images\boostpepper.png") {
                MouseMove(x, y)
                MsgBox("Boosted Pepper Field", "Success")
                success := true
            }
        }
        else if (SelectedField = "Any White Field") {
            if ImageSearch(&x, &y, 0, 0, A_ScreenWidth, 60, "*50 " A_ScriptDir "\images\boostsunflower.png") {
                MouseMove(x, y)
                MsgBox("Boosted Sunflower Field", "Success")
                success := true
            }
            if ImageSearch(&x, &y, 0, 0, A_ScreenWidth, 60, "*50 " A_ScriptDir "\images\boostdandelion.png") {
                MouseMove(x, y)
                MsgBox("Boosted Dandelion Field", "Success")
                success := true
            }
            if ImageSearch(&x, &y, 0, 0, A_ScreenWidth, 60, "*50 " A_ScriptDir "\images\boostspider.png") {
                MouseMove(x, y)
                MsgBox("Boosted Spider Field", "Success")
                success := true
            }
            if ImageSearch(&x, &y, 0, 0, A_ScreenWidth, 60, "*50 " A_ScriptDir "\images\boostpineapple.png") {
                MouseMove(x, y)
                MsgBox("Boosted Pineapple Field", "Success")
                success := true
            }
            if ImageSearch(&x, &y, 0, 0, A_ScreenWidth, 60, "*50 " A_ScriptDir "\images\boostpumpkin.png") {
                MouseMove(x, y)
                MsgBox("Boosted Pumpkin Field", "Success")
                success := true
            }
            if ImageSearch(&x, &y, 0, 0, A_ScreenWidth, 60, "*50 " A_ScriptDir "\images\boostcoconut.png") {
                MouseMove(x, y)
                MsgBox("Boosted Coconut Field", "Success")
                success := true
            }
        }
        else if (SelectedField = "Any Mixed Field") {
            if ImageSearch(&x, &y, 0, 0, A_ScreenWidth, 60, "*50 " A_ScriptDir "\images\boostclover.png") {
                MouseMove(x, y)
                MsgBox("Boosted Clover Field", "Success")
                success := true
            }
            if ImageSearch(&x, &y, 0, 0, A_ScreenWidth, 60, "*50 " A_ScriptDir "\images\boostcactus.png") {
                MouseMove(x, y)
                MsgBox("Boosted Cactus Field", "Success")
                success := true
            }
            if ImageSearch(&x, &y, 0, 0, A_ScreenWidth, 60, "*50 " A_ScriptDir "\images\boostmountaintop.png") {
                MouseMove(x, y)
                MsgBox("Boosted Mountain Top Field", "Success")
                success := true
            }

        }
        else if (SelectedField = "Sunflower Field") { 
            if ImageSearch(&x, &y, 0, 0, A_ScreenWidth, 60, "*50 " A_ScriptDir "\images\boostsunflower.png") {
                MouseMove(x, y)
                MsgBox("Boosted Sunflower Field", "Success")
                success := true
            }
        }
        else if (SelectedField = "Dandelion Field") {
            if ImageSearch(&x, &y, 0, 0, A_ScreenWidth, 60, "*50 " A_ScriptDir "\images\boostdandelion.png") {
                MouseMove(x, y)
                MsgBox("Boosted Dandelion Field", "Success")
                success := true
            }
        }
        else if (SelectedField = "Mushroom Field") {
            if ImageSearch(&x, &y, 0, 0, A_ScreenWidth, 60, "*50 " A_ScriptDir "\images\boostmushroom.png") {
                MouseMove(x, y)
                MsgBox("Boosted Mushroom Field", "Success")
                success := true
            }
        }
        else if (SelectedField = "Blue Flower Field") {
            if ImageSearch(&x, &y, 0, 0, A_ScreenWidth, 60, "*50 " A_ScriptDir "\images\boostblueflower.png") {
                MouseMove(x, y)
                MsgBox("Boosted Blue Flower Field", "Success")
                success := true
            }
        }
        else if (SelectedField = "Clover Field") {
            if ImageSearch(&x, &y, 0, 0, A_ScreenWidth, 60, "*50 " A_ScriptDir "\images\boostclover.png") {
                MouseMove(x, y)
                MsgBox("Boosted Clover Field", "Success")
                success := true
            }
        }
        else if (SelectedField = "Spider Field") {
            if ImageSearch(&x, &y, 0, 0, A_ScreenWidth, 60, "*50 " A_ScriptDir "\images\boostspider.png") {
                MouseMove(x, y)
                MsgBox("Boosted Spider Field", "Success")
                success := true
            }
        }
        else if (SelectedField = "Strawberry Field") {
            if ImageSearch(&x, &y, 0, 0, A_ScreenWidth, 60, "*50 " A_ScriptDir "\images\booststrawberry.png") {
                MouseMove(x, y)
                MsgBox("Boosted Strawberry Field", "Success")
                success := true  
            }
        }
        else if (SelectedField = "Bamboo Field") {
            if ImageSearch(&x, &y, 0, 0, A_ScreenWidth, 60, "*50 " A_ScriptDir "\images\boostbamboo.png") {
                MouseMove(x, y)
                MsgBox("Boosted Bamboo Field", "Success")
                success := true
            }
        }
        else if (SelectedField = "Pineapple Field") {
            if ImageSearch(&x, &y, 0, 0, A_ScreenWidth, 60, "*50 " A_ScriptDir "\images\boostpineapple.png") {
                MouseMove(x, y)
                MsgBox("Boosted Pineapple Field", "Success")
                success := true
            }
        }
        else if (SelectedField = "Pumpkin Field") {
            if ImageSearch(&x, &y, 0, 0, A_ScreenWidth, 60, "*50 " A_ScriptDir "\images\boostpumpkin.png") {
                MouseMove(x, y)
                MsgBox("Boosted Pumpkin Field", "Success")
                success := true
            }
        }
        else if (SelectedField = "Cactus Field") {
            if ImageSearch(&x, &y, 0, 0, A_ScreenWidth, 60, "*50 " A_ScriptDir "\images\boostcactus.png") {
                MouseMove(x, y)
                MsgBox("Boosted Cactus Field", "Success")
                success := true
            }
        }
        else if (SelectedField = "Rose Field") {
            if ImageSearch(&x, &y, 0, 0, A_ScreenWidth, 60, "*50 " A_ScriptDir "\images\boostrose.png") {
                MouseMove(x, y)
                MsgBox("Boosted Rose Field", "Success")
                success := true
            }
        }
        else if (SelectedField = "Pine Tree Field") {
            if ImageSearch(&x, &y, 0, 0, A_ScreenWidth, 60, "*50 " A_ScriptDir "\images\boostpinetree.png") {
                MouseMove(x, y)
                MsgBox("Boosted Pine Tree Field", "Success")
                success := true
            }
        }
        else if (SelectedField = "Stump Field") {
            if ImageSearch(&x, &y, 0, 0, A_ScreenWidth, 60, "*50 " A_ScriptDir "\images\booststump.png") {
                MouseMove(x, y)
                MsgBox("Boosted Stump Field", "Success")
                success := true
            }
        }
        else if (SelectedField = "Coconut Field") {
            if ImageSearch(&x, &y, 0, 0, A_ScreenWidth, 60, "*50 " A_ScriptDir "\images\boostcoconut.png") {
                MouseMove(x, y)
                MsgBox("Boosted Coconut Field", "Success")
                success := true
            }
        }
        else if (SelectedField = "Pepper Field") {
            if ImageSearch(&x, &y, 0, 0, A_ScreenWidth, 60, "*50 " A_ScriptDir "\images\boostpepper.png") {
                MouseMove(x, y)
                MsgBox("Boosted Pepper Field", "Success")
                success := true
            }
        }
        else if (SelectedField = "Mountain Top Field") {
            if ImageSearch(&x, &y, 0, 0, A_ScreenWidth, 60, "*50 " A_ScriptDir "\images\boostmountaintop.png") {
                MouseMove(x, y)
                MsgBox("Boosted Mountain Top Field", "Success")
                success := true
            }
        }

        if success {
            Break ; breaks out of the loop if boosted field sucessfully
        } else {
            if (StopAfterValue != -1 && attempts >= StopAfterValue) { ; stops if reached attempt limit
                MsgBox("Failed to boost " SelectedField " after " attempts " attempts.", "Stopped")
                Break
            }
        }
    }
}