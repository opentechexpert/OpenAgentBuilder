#!/bin/bash

# Git Configuration Script for Dev Containers
# Automatically configures Git with GitHub user information
# Created: June 4, 2025

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${BLUE}🔧 $1${NC}"
}

print_success() {
    echo -e "${GREEN}✅ $1${NC}"
}

print_warning() {
    echo -e "${YELLOW}⚠️  $1${NC}"
}

print_error() {
    echo -e "${RED}❌ $1${NC}"
}

print_info() {
    echo -e "${BLUE}ℹ️  $1${NC}"
}

echo ""
print_status "Starting Git configuration for dev container..."
echo ""

# Check if Git is available
if ! command -v git &> /dev/null; then
    print_error "Git is not installed in this container"
    exit 1
fi

# Function to configure Git with provided credentials
configure_git_user() {
    local name="$1"
    local email="$2"
    local login="$3"
    
    if [[ -n "$name" && -n "$email" ]]; then
        git config --global user.name "$name"
        git config --global user.email "$email"
        
        if [[ -n "$login" ]]; then
            git config --global user.login "$login"
        fi
        
        print_success "Git user configured:"
        echo "   👤 Name: $name"
        echo "   📧 Email: $email"
        if [[ -n "$login" ]]; then
            echo "   🔗 Login: $login"
        fi
        return 0
    fi
    return 1
}

# Try to get user info from GitHub CLI
get_github_user_info() {
    if command -v gh &> /dev/null; then
        if gh auth status &> /dev/null; then
            print_success "GitHub CLI is authenticated, fetching user info..."
            
            local github_user=$(gh api user --jq '.login' 2>/dev/null || echo "")
            local github_email=$(gh api user/emails --jq '.[] | select(.primary==true) | .email' 2>/dev/null || echo "")
            local github_name=$(gh api user --jq '.name // .login' 2>/dev/null || echo "")
            
            if configure_git_user "$github_name" "$github_email" "$github_user"; then
                return 0
            else
                print_warning "Failed to retrieve complete GitHub user information"
            fi
        else
            print_warning "GitHub CLI is available but not authenticated"
            print_info "Run 'gh auth login' to authenticate"
        fi
    else
        print_warning "GitHub CLI not available in this container"
    fi
    return 1
}

# Try to get user info from environment variables
get_env_user_info() {
    if [[ -n "$GIT_USER_NAME" && -n "$GIT_USER_EMAIL" ]]; then
        print_success "Using environment variables for Git configuration"
        configure_git_user "$GIT_USER_NAME" "$GIT_USER_EMAIL" "$GIT_USER_LOGIN"
        return 0
    fi
    return 1
}

# Try to use existing Git configuration
check_existing_config() {
    local existing_name=$(git config --global user.name 2>/dev/null || echo "")
    local existing_email=$(git config --global user.email 2>/dev/null || echo "")
    
    if [[ -n "$existing_name" && -n "$existing_email" ]]; then
        print_success "Git is already configured:"
        echo "   👤 Name: $existing_name"
        echo "   📧 Email: $existing_email"
        return 0
    fi
    return 1
}

# Main configuration logic
configure_git_user_info() {
    # Check if Git is already configured
    if check_existing_config; then
        return 0
    fi
    
    # Try GitHub CLI first
    if get_github_user_info; then
        return 0
    fi
    
    # Try environment variables
    if get_env_user_info; then
        return 0
    fi
    
    # If all methods fail, provide instructions
    print_warning "Could not automatically configure Git user information"
    echo ""
    print_info "Please configure Git manually using one of these methods:"
    echo ""
    echo "   1. Authenticate with GitHub CLI:"
    echo "      gh auth login"
    echo "      then re-run this script"
    echo ""
    echo "   2. Set environment variables in devcontainer.json:"
    echo '      "containerEnv": {'
    echo '        "GIT_USER_NAME": "Your Name",'
    echo '        "GIT_USER_EMAIL": "your.email@example.com",'
    echo '        "GIT_USER_LOGIN": "your-github-username"'
    echo '      }'
    echo ""
    echo "   3. Configure manually:"
    echo '      git config --global user.name "Your Name"'
    echo '      git config --global user.email "your.email@example.com"'
    echo ""
    return 1
}

# Configure Git user information
configure_git_user_info

# Configure Git editor
configure_git_editor() {
    print_status "Configuring Git editor..."
    
    if command -v code &> /dev/null; then
        git config --global core.editor "code --wait"
        print_success "Set VS Code as Git editor"
    elif command -v code-insiders &> /dev/null; then
        git config --global core.editor "code-insiders --wait"
        print_success "Set VS Code Insiders as Git editor"
    elif command -v nano &> /dev/null; then
        git config --global core.editor "nano"
        print_success "Set nano as Git editor"
    else
        print_warning "No suitable editor found, using system default"
    fi
}

# Configure Git defaults
configure_git_defaults() {
    print_status "Configuring Git defaults..."
    
    # Set default branch name
    git config --global init.defaultBranch main
    
    # Configure pull behavior
    git config --global pull.rebase true
    
    # Configure push behavior
    git config --global push.default simple
    git config --global push.autoSetupRemote true
    
    # Enable colored output
    git config --global color.ui auto
    
    # Configure credential helper
    git config --global credential.helper store
    
    # Set up useful aliases
    git config --global alias.st status
    git config --global alias.co checkout
    git config --global alias.br branch
    git config --global alias.ci commit
    git config --global alias.lg "log --oneline --graph --decorate --all"
    git config --global alias.unstage "reset HEAD --"
    git config --global alias.last "log -1 HEAD"
    git config --global alias.visual "!gitk"
    
    # Configure line ending handling
    git config --global core.autocrlf input
    
    # Configure whitespace handling
    git config --global core.whitespace trailing-space,space-before-tab
    
    print_success "Git defaults configured"
}

# Configure diff and merge tools
configure_git_tools() {
    print_status "Configuring Git diff and merge tools..."
    
    if command -v code &> /dev/null; then
        git config --global diff.tool vscode
        git config --global difftool.vscode.cmd 'code --wait --diff $LOCAL $REMOTE'
        git config --global merge.tool vscode
        git config --global mergetool.vscode.cmd 'code --wait $MERGED'
        print_success "Configured VS Code as diff/merge tool"
    else
        print_info "VS Code not available, skipping diff/merge tool configuration"
    fi
}

# Display final configuration
show_git_config() {
    echo ""
    print_status "Final Git configuration:"
    echo ""
    
    # User configuration
    local name=$(git config --global user.name 2>/dev/null || echo "Not set")
    local email=$(git config --global user.email 2>/dev/null || echo "Not set")
    local login=$(git config --global user.login 2>/dev/null || echo "Not set")
    local editor=$(git config --global core.editor 2>/dev/null || echo "System default")
    
    echo "   👤 User Name: $name"
    echo "   📧 User Email: $email"
    echo "   🔗 User Login: $login"
    echo "   ✏️  Editor: $editor"
    echo "   🌿 Default Branch: $(git config --global init.defaultBranch)"
    echo "   🔄 Pull Strategy: $(git config --global pull.rebase)"
    echo "   ⬆️  Push Strategy: $(git config --global push.default)"
    echo "   🎨 Color Output: $(git config --global color.ui)"
    echo ""
    
    if [[ "$name" != "Not set" && "$email" != "Not set" ]]; then
        print_success "Git configuration completed successfully!"
    else
        print_warning "Git configuration incomplete - user information missing"
    fi
}

# Run all configuration steps
configure_git_editor
configure_git_defaults
configure_git_tools
show_git_config

echo ""
print_info "You can verify your configuration anytime with:"
echo "   git config --global --list"
echo ""
print_info "For more information, see: .devcontainer/README.md"
echo ""

# Test Git configuration
if git config --global user.name &> /dev/null && git config --global user.email &> /dev/null; then
    print_success "🎉 Git is ready for development!"
    exit 0
else
    print_warning "⚠️  Git configuration needs attention"
    exit 1
fi
