# terraria-duper
PowerShell scripts to accelerate item duplication for Terraria the game.
# Setup
1. Install Terraria
2. Create a non-Journey, classic World named "Duplicator" you will use to duplicate items. If you want to use a different world name you will need to modify the scripts.
3. Add a chest to this world near spawn and build an enclosure around both the chest and the spawn point
4. Fill up the chest with items you want to duplicate like money, potions, food, crafting ingredients, and building materials
5. Save and close the world. You may leave Terraria running, you do not need to exit the game to use duplication.
6. Run **Save-Duplicator.ps1** from anywhere on your computer using Windows PowerShell
7. You will now have a copy of this World saved in your temporary files
# Usage
1. Play Terraria
2. Open the Duplicator world
3. Take out whatever you need for your character
4. Save and close the world
5. Alt + Tab out of Terraria to Windows Explorer. You do not need to exit Terraria.
6. Run **Dupe-Duplicator.ps1** to replenish the World from your saved copy. The fastest way to do this is to right-click on the script and select Run with PowerShell.
7. Repeat as needed
# Other Notes
Make sure to always run **Dupe-Duplicator.ps1** immediately after taking resources out of the Duplicator world to replenish them in case you add more later. You may want to add more resources later and use **Save-Duplicator.ps1** to setup a new version.
# Modifying the Scripts
If you don't want to use the name "Duplicator" for your world, open both scripts and change the first line from:  
```powershell
$worlds = "Duplicator.wld","Duplicator.wld.bak","Duplicator.wld.bak2"  
```
to
```powershell
$worlds = "My_World_Name.wld","My_World_Name.wld.bak","My_World_Name.wld.bak2"  
```
where you replace `My_World_Name` with the actual world name file name from your Terraria My Games/Worlds folder. You can find this file name by going to your Documents folder, opening the My Games folder, opening the Terraria folder, and the Worlds folder. Example:  
```
C:\Users\[my-user]\Documents\My Games\Terraria\Worlds
```
