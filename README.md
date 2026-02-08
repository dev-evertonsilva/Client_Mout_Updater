# Client Update System Guide

This guide explains how to set up and manage updates for your client using the MyAAC website structure.

## How it Works

The client automatically checks for updates by reading the `update.json` file hosted on your website. When you release a new update (like new sprites, data files, or executables), you need to generate a new `update.json` so the client knows what to download.

## Setup Instructions

### 1. Website Configuration
Ensure your website (MyAAC) has a folder for downloads. This is typically located at:
*   `www/download`
*   or simply `/download`

### 2. Adding Update Files
Place all your updated client files into this download folder on your website. This includes:
*   `.spr` (Sprite file)
*   `.dat` (Data file)
*   `Tibia.exe` (or your client executable)
*   Any other files that need updating

### 3. Generating the Update Configuration
Once your files are in the correct folder, you need to generate the `update.json` file:

1.  Locate the file **`#Create_update_json.bat`** in your client folder.
2.  Double-click to run it.
3.  This script will scan your folder and automatically generate/update the `update.json` file.

### 4. Final Step
Upload the newly generated `update.json` to the same download folder on your website. The client will now read this file and automatically download the new `.spr`, `.dat`, and other files for your players.
