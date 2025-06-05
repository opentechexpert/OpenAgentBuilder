#!/bin/bash

# OpenAgentBuilder VS Code SDK Validation Script
# Validates the SDK setup and provides a summary

set -e

# Configuration
SDK_DIR="sdk-vscode"
AGENTS_DIR="$SDK_DIR/agents"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$(dirname "$SCRIPT_DIR")")"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Helper functions
log_info() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

log_success() {
    echo -e "${GREEN}[✓]${NC} $1"
}

log_warning() {
    echo -e "${YELLOW}[!]${NC} $1"
}

log_error() {
    echo -e "${RED}[✗]${NC} $1"
}

log_header() {
    echo -e "\n${CYAN}=== $1 ===${NC}"
}

# Change to project root
cd "$PROJECT_ROOT"

log_header "OpenAgentBuilder VS Code SDK Validation"

# Check SDK structure
log_header "SDK Structure Validation"

required_files=(
    "$SDK_DIR/README.md"
    "$SDK_DIR/CONFIGURATION.md"
    "$SDK_DIR/docs/setup-guide.md"
    "$SDK_DIR/docs/usage-examples.md"
    "$SDK_DIR/docs/troubleshooting.md"
    "$SDK_DIR/tools/sync-agents.sh"
    "$SDK_DIR/.vscode/settings.json"
)

for file in "${required_files[@]}"; do
    if [[ -f "$file" ]]; then
        log_success "Found $file"
    else
        log_error "Missing $file"
    fi
done

# Check agent files
log_header "Agent Files Validation"

# Define agent categories and their expected agents
core_agents=(
    "prompt-engineer-v2"
    "doc-writer" 
    "orchestrator"
)

dev_agents=(
    "master-software-engineer"
    "frontend-engineer"
    "backend-engineer"
    "quality-assurance-engineer"
    "system-analyst"
)

mgmt_agents=(
    "product-owner"
    "project-manager"
    "scrum-master"
)

agents_found=0
total_expected=11

# Check core agents
for agent in "${core_agents[@]}"; do
    agent_file="$AGENTS_DIR/core/$agent.prompt.md"
    if [[ -f "$agent_file" ]]; then
        log_success "Agent: core/$agent"
        agents_found=$((agents_found + 1))
    else
        log_error "Missing: core/$agent ($agent_file)"
    fi
done

# Check development agents  
for agent in "${dev_agents[@]}"; do
    agent_file="$AGENTS_DIR/development/$agent.prompt.md"
    if [[ -f "$agent_file" ]]; then
        log_success "Agent: development/$agent"
        agents_found=$((agents_found + 1))
    else
        log_error "Missing: development/$agent ($agent_file)"
    fi
done

# Check management agents
for agent in "${mgmt_agents[@]}"; do
    agent_file="$AGENTS_DIR/management/$agent.prompt.md"
    if [[ -f "$agent_file" ]]; then
        log_success "Agent: management/$agent"
        agents_found=$((agents_found + 1))
    else
        log_error "Missing: management/$agent ($agent_file)"
    fi
done

# Summary
log_header "Summary"

log_info "Expected agents: $total_expected"
log_info "Found agents: $agents_found"

if [[ $agents_found -eq $total_expected ]]; then
    log_success "All agents successfully converted to VS Code format!"
else
    log_warning "Some agents are missing. Run sync-agents.sh to regenerate."
fi

# Agent categories breakdown
log_header "Agent Categories"

echo -e "${CYAN}Core Agents (3):${NC}"
for agent in "${core_agents[@]}"; do
    if [[ -f "$AGENTS_DIR/core/$agent.prompt.md" ]]; then
        echo "  ✓ core/$agent"
    else
        echo "  ✗ core/$agent"
    fi
done

echo -e "\n${CYAN}Development Team Agents (5):${NC}"
for agent in "${dev_agents[@]}"; do
    if [[ -f "$AGENTS_DIR/development/$agent.prompt.md" ]]; then
        echo "  ✓ development/$agent"
    else
        echo "  ✗ development/$agent"
    fi
done

echo -e "\n${CYAN}Management Team Agents (3):${NC}"
for agent in "${mgmt_agents[@]}"; do
    if [[ -f "$AGENTS_DIR/management/$agent.prompt.md" ]]; then
        echo "  ✓ management/$agent"
    else
        echo "  ✗ management/$agent"
    fi
done

# VS Code Integration Check
log_header "VS Code Integration"

log_info "To complete the integration:"
echo "1. Add to your VS Code settings:"
echo "   {"
echo "     \"chat.promptFiles\": true,"
echo "     \"chat.promptFilesLocations\": ["
echo "       \"sdk-vscode/agents/core\","
echo "       \"sdk-vscode/agents/development\","
echo "       \"sdk-vscode/agents/management\""
echo "     ]"
echo "   }"
echo ""
echo "2. Reload VS Code window"
echo "3. Open VS Code Chat (Ctrl+Shift+I)"
echo "4. Type '/' to see available agents"

# Usage examples
log_header "Quick Start Commands"

echo "Try these commands in VS Code Chat:"
echo "  /prompt-engineer-v2 help me create a new agent"
echo "  /frontend-engineer create a React component with tests"
echo "  /backend-engineer design an API for user management"
echo "  /product-owner help me write user stories for a feature"

# File sizes and validation
log_header "File Validation"

total_size=0
for category in core development management; do
    for prompt_file in "$AGENTS_DIR/$category"/*.prompt.md; do
        if [[ -f "$prompt_file" ]]; then
            size=$(wc -c < "$prompt_file")
            total_size=$((total_size + size))
            
            if [[ $size -gt 10240 ]]; then  # 10KB
                log_warning "Large file: $category/$(basename "$prompt_file") (${size} bytes)"
            fi
            
            # Check for required sections
            if grep -q "## Description" "$prompt_file" && \
               grep -q "## Instructions" "$prompt_file"; then
                log_success "Valid format: $category/$(basename "$prompt_file")"
            else
                log_warning "Missing sections: $category/$(basename "$prompt_file")"
            fi
        fi
    done
done

log_info "Total SDK size: $((total_size / 1024))KB"

# Next steps
log_header "Next Steps"

echo "✅ SDK Setup Complete!"
echo ""
echo "📖 Documentation:"
echo "   - Setup Guide: sdk-vscode/docs/setup-guide.md"
echo "   - Usage Examples: sdk-vscode/docs/usage-examples.md"
echo "   - Configuration: sdk-vscode/CONFIGURATION.md"
echo "   - Troubleshooting: sdk-vscode/docs/troubleshooting.md"
echo ""
echo "🔄 Synchronization:"
echo "   - Run: ./sdk-vscode/tools/sync-agents.sh"
echo "   - Keep agents in sync with source files"
echo ""
echo "🚀 Ready to use OpenAgentBuilder agents in VS Code!"

log_success "VS Code SDK validation completed successfully!"
