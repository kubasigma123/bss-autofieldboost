#Requires AutoHotkey v2.0
#SingleInstance Force
#include <start>

TraySetIcon("images\Field_Dice.ico")
MyGui := Gui()
MyGui.Opt("+Resize")
MyGui.AddText(, "Select Field: ")
Field := MyGui.AddDropDownList("vField", ["Sunflower Field", "Dandelion Field", "Mushroom Field", "Blue Flower Field", "Clover Field", "Spider Field", "Strawberry Field", "Bamboo Field", "Pineapple Field", "Pumpkin Field", "Cactus Field", "Rose Field", "Pine Tree Field", "Stump Field", "Coconut Field", "Pepper Field", "Mountain Top Field", "Any Blue Field", "Any Red Field", "Any White Field", "Any Mixed Field"])
MyGui.AddText(, "Field Dice Slot: ")
MyGui.AddEdit()
Slot := MyGui.AddUpDown("vSlot Range1-7", 1)
MyGui.Add("Button",, "Start").OnEvent("Click", StartBoosting)
MyGui.AddText(, "Stop after how many tries (-1 for infinite) ")
MyGui.AddEdit()
StopAfter :=MyGui.AddUpDown("vStop Range-1-100", -1)

MyGui.Show("w200 h180 Center")
