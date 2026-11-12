# Roland AIRA TR-8 — Reason Remote Codec

Deprecated Reason Remote files (Lua codec + remote map) for using the Roland AIRA TR-8 drum machine as a controller for Reason's drum devices. No longer in development; kept here as an archive.

The codec and map are my own work, written in 2014.

## Controls

The codec reads the TR-8's knobs and faders as MIDI CCs on channel 10, plus its pads/notes as a keyboard:

- **Per instrument** (BD, SD, LT, MT, HT, RS, HC, CH, OH, CC, RC): Level, Tune, Decay
- **BD / SD extras:** BD Attack, BD Comp, SD Snappy, SD Comp
- **Global:** Accent, Reverb Level/Time/Gate, Delay Level/Time/Feedback, External In Level/Side Chain, Shuffle

## Supported devices

| TR-8 control | Kong Drum Designer | Redrum Drum Computer |
|--------------|--------------------|----------------------|
| BD … RC Level | Drum 1–11 Level | Drum 1–10 Level (no RC) |
| BD … RC Tune | Drum 1–11 DM Pitch | Drum 1–10 Pitch (no RC) |
| BD … RC Decay | Drum 1–11 DM Decay | Drum 1–10 Length (no RC) |
| BD Attack | Drum 1 DM Variable | Drum 1 Tone |
| SD Snappy | Drum 2 DM Variable | Drum 2 Tone |

The Master Keyboard scope maps the TR-8's notes to whichever device has keyboard focus. The Comp, Accent, effects, External In and Shuffle controls are defined in the codec but not mapped.

## Install

1. Set the TR-8 to MIDI channel 10.
2. Copy `TR-8.luacodec`, `TR-8.lua` and `TR-8.png` to the `Remote/Codecs/Lua Codecs/Roland/` folder.
3. Copy `TR-8.remotemap` to the `Remote/Maps/Roland/` folder.
4. Restart Reason, then add the surface manually in Preferences → Control Surfaces (Manufacturer: Roland, Model: TR-8).

On macOS the Remote folder is `~/Library/Application Support/Propellerhead Software/Remote/`; on Windows it's `%APPDATA%\Propellerhead Software\Remote\`.

## Licence

MIT — see `LICENSE`.
