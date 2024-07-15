#Requires AutoHotkey v2.0
#SingleInstance Force
#include <script> ; includes script from \lib so it will run

TraySetIcon("images\FieldDice.ico")

MyGui := Gui(, "GUI")
MyGui.SetFont("cBlack", "Verdana")
MyGui.Opt("-Resize")

MyGui.AddText(, "Select Field: ")
Field := MyGui.AddDropDownList("vField", ["Sunflower Field", "Dandelion Field", "Mushroom Field", "Blue Flower Field", "Clover Field", "Spider Field", "Strawberry Field", "Bamboo Field", "Pineapple Field", "Pumpkin Field", "Cactus Field", "Rose Field", "Pine Tree Field", "Stump Field", "Coconut Field", "Pepper Field", "Mountain Top Field", "Any Blue Field", "Any Red Field", "Any White Field", "Any Mixed Field"])

MyGui.AddText(, "Field Dice Slot: ")
MyGui.AddEdit()
Slot := MyGui.AddUpDown("vSlot Range1-7", 1)

MyGui.AddText(, "Stop after how many tries (-1 for infinite) ")
MyGui.AddEdit()
StopAfter := MyGui.AddUpDown("vStop Range-1-100", -1)

MyGui.AddButton(, "Start").OnEvent("Click", StartBoosting)

MyGui.AddPicture("x220 y5 w25 h25 vGithub", A_SCRiptDir "\images\github.ico")
MyGui["Github"].OnEvent("Click", Repo)


MyGui.Show("w250 h180 Center")
MyGui.BackColor := "0xbbbffa"


Repo(*){
     Run "https://github.com/kubasigma123/bss-autofieldboost"
}
