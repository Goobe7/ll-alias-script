#!/bin/sh

# Global ll alias configuration script
# For Alpine Linux and standard Linux systems

# Check if running as root
if [ "$(id -u)" -ne 0 ]; then
    echo "Please run this script with root privileges" >&2
    exit 1
fi

# Configure global bash alias
echo "Configuring global bash alias..."
cat <<EOF > /etc/profile.d/ll-alias.sh
# Define ll alias
alias ll='ls -l --color=auto'
EOF

# Ensure bash config loads this file
if ! grep -q '/etc/profile.d/ll-alias.sh' /etc/bash.bashrc; then
    echo ". /etc/profile.d/ll-alias.sh" >> /etc/bash.bashrc
fi

# Configure ash shell (Alpine's default shell)
echo "Configuring ash shell alias..."
if ! grep -q 'alias ll=' /etc/profile; then
    echo "alias ll='ls -l --color=auto'" >> /etc/profile
fi

# Verify configuration
echo "Verifying configuration..."
if [ -n "$BASH" ]; then
    # Test bash
    source /etc/bash.bashrc
    if alias ll >/dev/null 2>&1; then
        echo "Bash configuration successful: $(alias ll)"
    else
        echo "Bash configuration failed" >&2
    fi
fi

# Test ash
if [ -n "$ASH" ]; then
    . /etc/profile
    if alias ll >/dev/null 2>&1; then
        echo "Ash configuration successful: $(alias ll)"
    else
        echo "Ash configuration failed" >&2
    fi
fi

echo "Configuration completed! The alias will take effect for new sessions."
echo "To apply immediately, run: source /etc/profile"
