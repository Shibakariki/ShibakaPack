# ShibakaPack

A Minecraft Java Edition datapack adding :
- **death counter** system
- **homes** system (main & personals homes)

***

## I — Description

ShibakaPack is a datapack designed for Minecraft Java Edition servers. It provides two independent modules that can be toggled on or off at any time without restarting the server.

### 🗡️ DeathCounter Module
- Displays each player's death count in the sidebar
- Updates automatically every second

### 🏠 Homes Module
- **5 personal home slots** (easily extendable)
- **Global home** shared by all players (settable by OPs)
- Saves both **position** and **look direction**
- **Rename** homes using an anvil
- **Delete** individual homes
- Interface via **clickable book** and native Minecraft **dialogs**
- Home list displayed in chat with clickable teleport buttons

### ⚙️ Configuration
Both modules can be toggled on or off in real time with a simple scoreboard command — no server restart or datapack reload required.

***

## II — How to Give Feedback

Feedback, suggestions, and bug reports are always welcome!

### 🐛 Reporting a Bug
1. Go to the [**Issues**](../../issues) tab of this repository
2. Click **New Issue**
3. Describe the problem including:
   - Your Minecraft version
   - Steps to reproduce the bug
   - What you expected vs. what actually happened
   - Any error messages (logs, chat output)

### 💡 Suggesting a Feature
1. Open an **Issue** with the `enhancement` label
2. Describe the feature and explain why it would be useful

### 💬 General Discussion
Use the [**Discussions**](../../discussions) tab for any questions or general conversation about the project.

***

## III — How to Use

### Installation
1. Download the datapack folder
2. Place it inside `saves/<world_name>/datapacks/` of your world
3. Start or reload the world with `/reload`
4. The datapack loads automatically and initializes all scoreboards

### DeathCounter module

#### Configuration Commands *(OP only)*

| Action | Command |
|--------|---------|
| Enable DeathCounter | `/scoreboard players set #deathcounter config 1` |
| Disable DeathCounter | `/scoreboard players set #deathcounter config 0` |


### Home module
#### Getting the Book
```
/loot give @s loot shibakapack:book
```

#### Using the Book
The book contains all action buttons:
- **[Go to global home]** — teleports to the global home (if set)
- **[Create main home]** *(OP only)* — [+] symbol sets the global home to your current position
- **[Home list]** — displays your homes in chat with one-click teleportation
- **[Create a home]** — 
[+] symbol opens a dialog to choose a slot
- **[Rename a home]** — select a slot, rename the paper received on an anvil, then click **[Confirm]** in chat

#### Extending the Number of Home Slots
1. Change the value in `load.mcfunction`:
```mcfunction
scoreboard players set #max_slot listCounter 10
```
2. Add the corresponding options in `data/shibakapack/dialog/set_dialog.json`
3. Add the matching entries in `data/shibakapack/dialog/rename_dialog.json`
4. Reload with `/reload`

#### Configuration Commands *(OP only)*

| Action | Command |
|--------|---------|
| Enable Homes | `/scoreboard players set #homes config 1` |
| Disable Homes | `/scoreboard players set #homes config 0` |

### Compatibility
- Minecraft Java Edition **1.21.5+** (Created for 1.26.2)
- Requires **dialogs** (enabled by default in 1.21.5+)