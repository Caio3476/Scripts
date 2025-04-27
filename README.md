# Anime Vanguards Macros
A collection of AutoHotkey (AHK) scripts for automating portal selection and stage progression in a winter and valentines-themed environment.

## Overview

This project includes several AHK scripts designed to automate interactions within various portals. The scripts manage portal selection, stage progression, and looping actions based on image detection and predefined stages. The system works with different types of portals, including "love" and "winter" portals, as well as units that are customized per script.

## Scripts

### `leach_love.ahk`
- **Description**: Operates within a love portal. It picks a portal and starts the next stage.

### `leach.ahk`
- **Description**: Completes the stage, analyzes images on the screen to pick a "namek" portal, and tries to find the selected portal.

### `main.ahk`
- **Description**: Inside a winter portal, the user specifies desired positions for units. The script runs through stages, finds the "namek" portal based on images on the screen, picks a portal, and loops the stage again.

### `main-ragna.ahk`
- **Description**: Same as `main.ahk` but uses different units.

### `nonhost.ahk`
- **Description**: Similar to `main.ahk` but without the final part of the portal loop.

## Requirements

- 1920x1080 display size with 100% scale

- [AutoHotkey](https://www.autohotkey.com/) (version 1.x or higher)

## Installation

1. Download and install AutoHotkey from the official website:  
   [AutoHotkey Download](https://www.autohotkey.com/)
   
2. Clone or download this repository to your local machine.

3. Double-click any of the `.ahk` scripts to run them with AutoHotkey.

## Usage

1. Run the desired script (e.g., `main.ahk`) by double-clicking the script file.

2. Follow the on-screen instructions to interact with the portals and set positions for the units.
