kcd_flowgraph_hook by OVNI
==========================
This mod for Kingdom Come: Deliverance allows multiple mods to start flowgraphs once the game is fully loaded.

Why this mod ?
==============
CryEngine activates only one flowgraph when the game starts: Sys_StateControl.xml.
So any mod that'd like to launch a flowgraph when game starts would have to override it. Problem: only one mod can do so.
kcd_flowgraph_hook allows up to 999 mods to launch a flowgraph when game starts.

How it works
============
This mod override Sys_StateControl.xml so it calls SYS_Main.xml when game is fully started.
Then SYS_Main.xml calls SYS_Main_x.xml flowgraphs, where x is a number between 1 and 1000.

Usage
=====
- Get an Id using the [reservation topic](https://www.nexusmods.com/kingdomcomedeliverance/mods/378/?tab=forum&topic_id=6453131)
- Name your flowgraph SYS_Main_x.xml where x is the previously reserved id.
- include zzz_flowgraph_hook.pak with your mod.
