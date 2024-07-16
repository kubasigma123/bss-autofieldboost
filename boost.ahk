#Requires AutoHotkey v2.0
#SingleInstance Force
#include <script> ; includes script from \lib so it will run

TraySetIcon("images\FieldDice.ico")

MyGui := Gui(, "GUI")
MyGui.SetFont("cWhite", "Verdana")
MyGui.Opt("-Resize")

MyGui.AddText(, "Select Field: ")
Field := MyGui.AddDropDownList("vField", ["Sunflower Field", "Dandelion Field", "Mushroom Field", "Blue Flower Field", "Clover Field", "Spider Field", "Strawberry Field", "Bamboo Field", "Pineapple Field", "Pumpkin Field", "Cactus Field", "Rose Field", "Pine Tree Field", "Stump Field", "Coconut Field", "Pepper Field", "Mountain Top Field", "Any Blue Field", "Any Red Field", "Any White Field", "Any Mixed Field"])

MyGui.AddText(, "Field Dice Slot: ")
MyGui.AddEdit("cBlack")
Slot := MyGui.AddUpDown("vSlot Range1-7", 1)

MyGui.AddText(, "Stop after how many tries (-1 for infinite) ")
MyGui.AddEdit("cBlack")
StopAfter := MyGui.AddUpDown("vStop Range-1-100", -1)

MyGui.AddButton("x100 y145", "Start").OnEvent("Click", StartBoosting)

MyGui.AddPicture("x220 y5 w25 h25 vGithub", A_ScriptDir "\images\github.ico")
MyGui["Github"].OnEvent("Click", Repo)


MyGui.Show("w250 h180 Center")
MyGui.BackColor := "0x6E7795" ; idk about hexadec colors


Repo(*){
     Run "https://github.com/kubasigma123/bss-autofieldboost"
}

F5::{
     Reload
}
