# Anti-Stumble Mod for BO2 Zombies (Plutonium T6)

## What it does

Prevents your running animation from being interrupted when you take damage from zombies.

Normally, when a zombie hits you, the game applies a **pain shellshock** effect that causes your character to flinch, stumble, and stop sprinting. This mod disables that effect entirely, so your sprint and movement continue uninterrupted.

## How it works

The mod sets `self.shock_onpain = false` on player spawn. This is the same property the stock game checks before applying pain effects. When disabled, the game skips the flinch/shellshock code completely.

## Installation

1. Copy `zm_anti_stumble.gsc` to:
   ```
   %localappdata%\Plutonium\storage\t6\scripts\zm\zm_anti_stumble.gsc
   ```
2. Restart BO2 Zombies.
3. Spawn into a map. You should see **"Anti-Stumble Loaded"** on screen.

## File structure

```
zm_anti_stumble_mod/
  source/
    zm_anti_stumble.gsc   # Source 
  compiled/
    zm_anti_stumble.gsc   # Compiled 
  README.md               # ReadMe file
```

## Notes

- This mod does **not** change player health, movement speed, or sprint mechanics. It only blocks the pain shellshock that causes stumble.
- Does not affect damage taken — you still lose health normally.

## Compatibility

- Plutonium T6 (Black Ops 2 Zombies)
- Works on all Zombies maps
- Zombies only for what i know of might work on other Mobs in Zombies
- Might work on Server
