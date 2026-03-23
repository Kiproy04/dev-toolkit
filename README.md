# 🛠️ Dev Toolkit

![CI](https://github.com/YOUR_USERNAME/dev-toolkit/actions/workflows/ci.yml/badge.svg)

A collection of personal bash scripts to speed up everyday dev workflows — Git pushing, Python environment setup, and script management — all in one place.

---

## 📦 Scripts

| Script | What it does |
|--------|-------------|
| [`pushgit`](#-pushgit) | Stage, commit, and push Git changes in one command |
| [`venvstart`](#-venvstart) | Create and set up a Python virtual environment |
| [`myscripts`](#-myscripts) | Manage all your personal scripts from one tool |

---

## ⚡ Quick Install

```bash
git clone https://github.com/YOUR_USERNAME/dev-toolkit.git
cd dev-toolkit
chmod +x install.sh
./install.sh
source ~/.bashrc   # or source ~/.zshrc
```

That's it. All scripts are installed to `~/.my_scripts` and added to your `PATH`.

---

## 🚀 pushgit

Replaces the repetitive `git add → git commit → git push` loop with a single smart command.

### Usage

```bash
pushgit [flags]
```

### Flags

| Flag | Description |
|------|-------------|
| `-m "message"` | Commit message (default: `"update"`) |
| `-a` | Auto stage all changes |
| `-p` | Pull with rebase before pushing |
| `-b branch` | Target a specific branch |
| `-n` | Dry run — preview without executing |
| `-h` | Show help |

### Examples

```bash
# Stage everything and push
pushgit -a -m "add login page"

# Dry run first to preview
pushgit -a -m "refactor routes" -n

# Pull, then push to a specific branch
pushgit -a -p -m "hotfix" -b hotfix/auth-bug
```

### Output Preview

```
🌿 Branch: main
➕ Staging all changes...

📋 Staged changes:
 M  src/auth.py
 A  src/login.html

🚀 Commit with message "add login page" and push to 'main'? [Y/n]: y
✅ Pushed to 'main' successfully!
```

> 📄 See full demo → [`demos/pushgit-demo.md`](demos/pushgit-demo.md)

---

## 🐍 venvstart

Creates a Python virtual environment with safety checks and clear activation instructions.

### Usage

```bash
venvstart [env_name] [python_binary]
```

### Arguments

| Argument | Description | Default |
|----------|-------------|---------|
| `env_name` | Name of the virtual environment | `venv` |
| `python_binary` | Python version to use | `python3` |

### Examples

```bash
# Create default venv
venvstart

# Custom name
venvstart myproject

# Specific Python version
venvstart myenv python3.11
```

### Output Preview

```
🐍 Using Python 3.11.4
📦 Creating virtual environment: 'myenv'...
✅ Virtual environment created.

🎉 Ready! To activate your environment, run:
   source myenv/bin/activate

👉 To deactivate later, run: deactivate
```

> 📄 See full demo → [`demos/venvstart-demo.md`](demos/venvstart-demo.md)

---

## 🛠️ myscripts

A personal script manager — list, view, edit, create, and run your scripts without remembering paths.

### Usage

```bash
myscripts <command> [script_name]
```

### Commands

| Command | Description |
|---------|-------------|
| `list` | List all scripts with size and permissions |
| `show <n>` | Print a script's full contents |
| `edit <n>` | Open in `$EDITOR` (defaults to nano) |
| `new <n>` | Scaffold a new script from template and open it |
| `delete <n>` | Delete a script (with confirmation) |
| `run <n>` | Execute a script by name |

### Examples

```bash
myscripts list
myscripts new backupfiles
myscripts edit pushgit
myscripts delete oldscript
```

### Output Preview

```
📂 Scripts in /home/leroy/.my_scripts:

  ▸ myscripts  (2.1K)  -rwxr-xr-x
  ▸ pushgit    (1.8K)  -rwxr-xr-x
  ▸ venvstart  (1.2K)  -rwxr-xr-x

  Total: 3 script(s)
```

> 📄 See full demo → [`demos/myscripts-demo.md`](demos/myscripts-demo.md)

---

## 📁 Repo Structure

```
dev-toolkit/
├── install.sh              # One-command installer
├── README.md               # This file
├── scripts/
│   ├── pushgit             # Git push helper
│   ├── venvstart           # Python venv creator
│   └── myscripts           # Script manager
└── demos/
    ├── pushgit-demo.md     # pushgit walkthrough
    ├── venvstart-demo.md   # venvstart walkthrough
    └── myscripts-demo.md   # myscripts walkthrough
```

---

## 🔧 Manual Install

If you'd prefer to install manually:

```bash
# 1. Clone the repo
git clone https://github.com/YOUR_USERNAME/dev-toolkit.git

# 2. Copy scripts to your scripts folder
cp dev-toolkit/scripts/* ~/.my_scripts/
chmod +x ~/.my_scripts/*

# 3. Add to PATH (if not already)
echo 'export PATH="$HOME/.my_scripts:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

---

## 🤝 Contributing

Found a bug or have an idea for a new script? Open an issue or submit a PR — all contributions welcome.

---

## 📄 License

MIT — free to use, modify, and share.