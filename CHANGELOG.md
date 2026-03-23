# Changelog

All notable changes to **dev-toolkit** will be documented here.

Format follows [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).
Versioning follows [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [Unreleased]

> Changes staged for the next release go here.

---

## [v0.1.0] — 2026-03-23

### Added
- `pushgit` — Git stage/commit/push helper with flags (`-m`, `-a`, `-p`, `-b`, `-n`, `-h`)
- `venvstart` — Python virtual environment creator with safety checks and version selection
- `myscripts` — Personal script manager (`list`, `show`, `edit`, `new`, `delete`, `run`)
- `install.sh` — One-command installer with shell auto-detection (bash/zsh) and PATH setup
- `demos/pushgit-demo.md` — Full walkthrough and usage examples for `pushgit`
- `demos/venvstart-demo.md` — Full walkthrough and usage examples for `venvstart`
- `demos/myscripts-demo.md` — Full walkthrough and usage examples for `myscripts`
- GitHub Actions CI workflow — ShellCheck linting on all scripts for every push and PR

### Security
- `pushgit` uses `git rev-parse` instead of `.git/` directory check — works safely in subdirectories
- All scripts use `set -e` — halt immediately on any error

---

## How to update this file

When making changes, add an entry under `[Unreleased]` like so:

```markdown
## [Unreleased]

### Added
- New `backupfiles` script for automated backups

### Fixed
- `pushgit` now handles empty commit messages gracefully

### Changed
- `venvstart` defaults to `python3.11` instead of `python3`

### Removed
- Deprecated `-x` flag from `myscripts`
```

Then when releasing, rename `[Unreleased]` to the new version + date:

```markdown
## [v0.2.0] — 2026-04-01
```

---

### Change types

| Type | Description |
|------|-------------|
| `Added` | New features or scripts |
| `Changed` | Changes to existing behaviour |
| `Fixed` | Bug fixes |
| `Removed` | Removed features |
| `Security` | Security-related fixes or improvements |
| `Deprecated` | Features that will be removed in future versions |