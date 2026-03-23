# 🚀 pushgit — Demo Walkthrough

`pushgit` replaces the repetitive `git add → git commit → git push` cycle with a single smart command.

---

## Basic Usage

```bash
# Stage all changes and push with a custom message
pushgit -a -m "add login feature"

# Output:
# 🌿 Branch: main
# ➕ Staging all changes...
#
# 📋 Staged changes:
#  M  src/auth.py
#  A  src/login.html
#
# 🚀 Commit with message "add login feature" and push to 'main'? [Y/n]: y
# ✅ Pushed to 'main' successfully!
```

---

## Dry Run First (Recommended)

Always preview before you push:

```bash
pushgit -a -m "refactor routes" -n

# Output:
# 🌿 Branch: main
# 🔍 Dry run mode — no changes will be made.
# ➕ Staging all changes...
#
# 📋 Staged changes:
#  M  src/routes.py
#
# [dry-run] git commit -m "refactor routes"
# [dry-run] git push origin main
```

---

## Pull Before Push (Avoid Conflicts)

```bash
pushgit -a -p -m "sync and push"

# Pulls with rebase first, then commits and pushes
```

---

## Push to a Different Branch

```bash
pushgit -a -m "hotfix" -b hotfix/auth-bug
# 🌿 Branch: hotfix/auth-bug
```

---

## All Flags

| Flag | Description |
|------|-------------|
| `-m "message"` | Commit message |
| `-a` | Auto stage all changes |
| `-p` | Pull (rebase) before push |
| `-b branch` | Target a specific branch |
| `-n` | Dry run — no changes made |
| `-h` | Help |