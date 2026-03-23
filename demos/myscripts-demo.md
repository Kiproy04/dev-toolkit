# 🛠️ myscripts — Demo Walkthrough

`myscripts` is your personal script manager — list, view, edit, create, and run scripts without remembering paths.

---

## List All Scripts

```bash
myscripts list

# Output:
# 📂 Scripts in /home/leroy/.my_scripts:
#
#   ▸ myscripts  (2.1K)  -rwxr-xr-x
#   ▸ pushgit    (1.8K)  -rwxr-xr-x
#   ▸ venvstart  (1.2K)  -rwxr-xr-x
#
#   Total: 3 script(s)
```

---

## View a Script

```bash
myscripts show pushgit

# Prints the full contents of pushgit with a header/footer border
```

---

## Edit a Script

```bash
myscripts edit venvstart

# Opens venvstart in your $EDITOR (defaults to nano)
```

---

## Create a New Script

```bash
myscripts new backupfiles

# Output:
# ✅ Created 'backupfiles'. Opening in editor...
#
# (opens editor with a pre-filled bash template)
```

The template looks like:
```bash
#!/bin/bash
set -e

# -------- backupfiles --------
# Description:
# Usage: backupfiles

echo "Hello from backupfiles!"
```

---

## Delete a Script

```bash
myscripts delete oldscript

# Output:
# ⚠️  Delete 'oldscript'? This cannot be undone. [y/N]: y
# 🗑️  'oldscript' deleted.
```

---

## Run a Script

```bash
myscripts run backupfiles

# Output:
# ▶ Running 'backupfiles'...
# Hello from backupfiles!
```

---

## All Commands

| Command | Description |
|---------|-------------|
| `list` | List all scripts with size and permissions |
| `show <name>` | Print a script's contents |
| `edit <name>` | Open in `$EDITOR` |
| `new <name>` | Scaffold and open a new script |
| `delete <name>` | Delete with confirmation |
| `run <name>` | Execute a script by name |