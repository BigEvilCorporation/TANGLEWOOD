# TANGLEWOOD

A puzzle-platforming game for the SEGA Mega Drive and Genesis, in 68000 assembly. Release date 14th August 2018.

A game by Matt Phillips, [Big Evil Corporation Ltd](http://www.bigevilcorporation.co.uk)

## **PLEASE DO NOT DISTRIBUTE UNMODIFIED BINARIES**

You may build and play a personal copy of TANGLEWOOD from this source, but **please do not pirate the original, unmodified game**.

**TANGLEWOOD is still available for sale in the following stores:**

- **TANGLEWOOD WEBSITE**: http://www.tanglewoodgame.com (physical cartridge copy)
- **STEAM**: https://store.steampowered.com/app/837190/TANGLEWOOD/ (Windows, Mac, Linux, Mega Drive ROM)
- **GOG**: https://www.gog.com/game/tanglewoodr (Windows, Mac, Linux, Mega Drive ROM)
- **ITCH**: https://bigevilcorporation.itch.io/tanglewood (Windows, Mac, Linux, Mega Drive ROM)

## Building

TANGLEWOOD builds with **SNASM68K.EXE** (16-bit, 2.02Ex, Mar 1995) or **PSY-Q ASM68K.EXE** (32-bit, with path fix by Nemesis). No links to these executables are provided, please source them yourself. Despite their ages, they're still proprietary software.

SNASM68K.EXE runs under MS-DOS 5, Windows 95, or DOSBox configured with EMS option.

### SEGA Mega Drive/Genesis Build

Start by looking at **BLDCONF.ASM** to configure the various build options, then run one of the build batch files from the **TANGLEWD** directory:

- **BLDFIN.BAT**: assembles a final build with all debug options disabled
- **BLDEMU.BAT**: assembles a debug/emulator build in BIN format
- **BLDDEBUG.BAT**: assembles a debug build in COFF format, for SNASM2 debugger (Cross Products MegaCD devkits)

### Emulator Hosted Build

To build the PC emulator hosted version of the game with achievements and save system support, pass the **EMUBUILD** preprocessor option. These builds will hang without the necessary communication from the host emulator, though. See https://github.com/BigEvilCorporation/EvilEmu

## Debug Tools

In a non-FINAL build, during level gameplay, the following debug button combinations are active:

- **A+B+START**: Complete current level
- **B+C+START**: Enter/exit debug move mode. Move player using **D-Pad**, and hold **A, B, or C** to increase move speed.
- **A+B+C+START**: Kill player and reload from last checkpoint

## Cheats

To enter cheat mode: at the legal disclaimer screen, hold **START and LEFT** until the Djakk eats the Fuzzl. At the main menu, the cursor will be red and angry to indicate cheat mode is active.

### Level Select

Enter **Sound Test** and play the following sound effects:

- **0x19**
- **0x65**
- **0x09**
- **0x17**

then back out to the main menu.

## Echo Sound System

TANGLEWOOD uses the **Echo Sound System** by Javier (Sik) Degirolmo. See https://github.com/sikthehedgehog/Echo for the license.
