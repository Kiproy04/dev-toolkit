# 🐍 venvstart — Demo Walkthrough

`venvstart` sets up a Python virtual environment in one command, with safety checks and clear guidance.

---

## Basic Usage

```bash
# Create a venv named 'venv' (default)
venvstart

# Output:
# 🐍 Using Python 3.11.4
# 📦 Creating virtual environment: 'venv'...
# ✅ Virtual environment created.
#
# 🎉 Ready! To activate your environment, run:
#    source venv/bin/activate
#
# 👉 To deactivate later, run: deactivate
```

---

## Custom Name

```bash
venvstart myproject

# Creates a venv named 'myproject'
```

---

## Specific Python Version

```bash
venvstart myenv python3.11

# Output:
# 🐍 Using Python 3.11.4
# 📦 Creating virtual environment: 'myenv'...
# ✅ Virtual environment created.
```

---

## Existing Environment Protection

```bash
venvstart venv   # when 'venv' folder already exists

# Output:
# ⚠️  Environment 'venv' already exists.
#    Recreate it? This will delete the existing one. [y/N]: n
# 👍 Keeping existing environment.
```

---

## Full Workflow

```bash
# 1. Create the env
venvstart myproject

# 2. Activate it (copy the printed command)
source myproject/bin/activate

# 3. Install dependencies
pip install -r requirements.txt

# 4. When done
deactivate
```

---

## Arguments

| Argument | Description | Default |
|----------|-------------|---------|
| `$1` | Environment name | `venv` |
| `$2` | Python binary to use | `python3` |