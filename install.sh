#!/bin/bash
set -e

# ================================================================
#  dev-toolkit — install.sh
#  Installs all scripts to ~/.my_scripts and adds to PATH
# ================================================================

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SCRIPTS_DIR="$HOME/.my_scripts"
SHELL_RC=""

# -------- COLORS --------
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
BOLD='\033[1m'
NC='\033[0m'

echo ""
echo -e "${CYAN}${BOLD}⚙️  dev-toolkit installer${NC}"
echo -e "${CYAN}────────────────────────────────────${NC}"
echo ""

# -------- DETECT SHELL --------
if [ -n "$ZSH_VERSION" ] || [[ "$SHELL" == */zsh ]]; then
  SHELL_RC="$HOME/.zshrc"
elif [ -n "$BASH_VERSION" ] || [[ "$SHELL" == */bash ]]; then
  SHELL_RC="$HOME/.bashrc"
else
  echo -e "${YELLOW}⚠️  Could not detect shell. Defaulting to ~/.bashrc${NC}"
  SHELL_RC="$HOME/.bashrc"
fi

echo -e "🔍 Detected shell config: ${CYAN}$SHELL_RC${NC}"

# -------- CREATE SCRIPTS DIR --------
if [ ! -d "$SCRIPTS_DIR" ]; then
  mkdir -p "$SCRIPTS_DIR"
  echo -e "📁 Created ${CYAN}$SCRIPTS_DIR${NC}"
else
  echo -e "📁 Scripts directory already exists: ${CYAN}$SCRIPTS_DIR${NC}"
fi

# -------- COPY SCRIPTS --------
echo ""
echo -e "📦 Installing scripts..."
for script in "$REPO_DIR/scripts/"*; do
  name=$(basename "$script")
  cp "$script" "$SCRIPTS_DIR/$name"
  chmod +x "$SCRIPTS_DIR/$name"
  echo -e "   ${GREEN}✓${NC} $name"
done

# -------- ADD TO PATH --------
echo ""
PATH_LINE="export PATH=\"\$HOME/.my_scripts:\$PATH\""

if grep -qF "$PATH_LINE" "$SHELL_RC" 2>/dev/null; then
  echo -e "${YELLOW}⚠️  PATH already configured in $SHELL_RC — skipping.${NC}"
else
  {
    echo ""
    echo "# dev-toolkit scripts"
    echo "$PATH_LINE"
  } >> "$SHELL_RC"
  echo -e "${GREEN}✅ Added ~/.my_scripts to PATH in $SHELL_RC${NC}"
fi

# -------- DONE --------
echo ""
echo -e "${CYAN}────────────────────────────────────${NC}"
echo -e "${GREEN}${BOLD}🎉 Installation complete!${NC}"
echo ""
echo -e "Reload your shell to activate:"
echo -e "   ${YELLOW}source $SHELL_RC${NC}"
echo ""
echo -e "Then try:"
echo -e "   ${CYAN}myscripts list${NC}       — see all your scripts"
echo -e "   ${CYAN}pushgit -h${NC}           — git push helper"
echo -e "   ${CYAN}venvstart myenv${NC}      — create a Python venv"
echo ""