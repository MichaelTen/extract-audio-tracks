# extract-audio-tracks
Extra audio tracks from MKV video files. 

# OBS MKV Audio Track Extractor

This is a lightweight Windows `.bat` script to extract **separate audio tracks** from `.mkv` video recordings created in **OBS Studio** using multiple audio tracks (e.g., desktop audio, microphone, etc.).

## 🔍 Overview

When you record in OBS with the **Matroska (.mkv)** format and enable multiple **audio tracks**, this script allows you to:

- Extract the **full mix** (e.g., desktop + mic)
- Extract **only desktop audio**
- Extract **only mic input**

You can then edit them separately in your DAW or video editor.

## 🎬 OBS Setup Instructions

1. Open OBS.
2. Go to `Settings ➜ Output ➜ Recording`.
3. Set **Recording Format** to `.mkv`.
4. Enable **Audio Tracks 1, 2, and 3**.
5. Go to `Edit ➜ Advanced Audio Properties`.
6. Set your sources:
   - `Desktop Audio` ➜ Tracks 1 and 2
   - `Mic/Aux` ➜ Tracks 1 and 3
   - (Track 1 is the mixed-down output; Tracks 2 and 3 are separated)

## 🛠️ How to Use

1. Download [FFmpeg](https://ffmpeg.org/download.html) and place `ffmpeg.exe` in the same folder as this script — or ensure it's available in your system PATH.
2. Save the code above as `extract_audio_tracks.bat`.
3. Record your OBS session with MKV and multiple audio tracks.
4. Double-click the `.bat` file.
5. Enter your `.mkv` filename when prompted (e.g., `myrecording.mkv`).
6. The script will generate:
   - `myrecording.mkv_audio_fullmix.wav`
   - `myrecording.mkv_audio_desktop.wav`
   - `myrecording.mkv_audio_mic.wav`

## ✏️ Customization

- If you're using different track mappings in OBS (e.g., Mic on Track 2), change the `-map 0:a:X` values accordingly.
- You can rename the output files by editing the script.
- Add more `-map` lines if you're using more than 3 tracks.

## 🧪 Example

If `myrecording.mkv` has:

| Track | Description         |
|-------|---------------------|
| 0     | Mixed (Mic + Desktop) |
| 1     | Desktop Audio       |
| 2     | Mic Input           |

Then this script will correctly extract each.

## ⚠️ Notes

- This script is Windows-only (uses `.bat`).
- Be sure to **not overwrite** your original `.mkv` file during extraction.

## 💡 Tip

You can also **drag and drop** the `.mkv` file onto the `.bat` if you modify the script slightly — ask in the issues if you'd like help doing that.

---

Made for creators who want **clean audio separation** when recording screencasts, music demos, or podcasts in OBS.
