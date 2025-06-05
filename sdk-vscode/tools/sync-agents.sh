#!/bin/bash

# OpenAgentBuilder SDK Synchronization Script
# Converts OpenAgentBuilder agents to VS Code .prompt.md files

set -e

# Configuration
SOURCE_DIR="agents"
SDK_DIR="sdk-vscode/agents"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$(dirname "$SCRIPT_DIR")")"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Helper functions
log_info() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

log_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

log_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

log_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Change to project root
cd "$PROJECT_ROOT"

# Verify directories exist
if [[ ! -d "$SOURCE_DIR" ]]; then
    log_error "Source directory '$SOURCE_DIR' not found!"
    exit 1
fi

if [[ ! -d "$SDK_DIR" ]]; then
    log_info "Creating SDK directory '$SDK_DIR'"
    mkdir -p "$SDK_DIR"
fi

# Function to convert agent file to prompt file
convert_agent_to_prompt() {
    local source_file="$1"
    local agent_category="$2"
    local agent_name="$3"
    
    # Remove .md extension and add .prompt.md
    local prompt_name="${agent_name%.md}.prompt.md"
    local prompt_file="$SDK_DIR/$agent_category/$prompt_name"
    
    # Ensure the category directory exists
    mkdir -p "$SDK_DIR/$agent_category"
    
    log_info "Converting $source_file to $prompt_file"
    
    # Read the source file and extract key information
    if [[ ! -f "$source_file" ]]; then
        log_error "Source file '$source_file' not found!"
        return 1
    fi
    
    # Extract agent name (first # heading)
    local title=$(grep -m 1 "^# " "$source_file" | sed 's/^# //')
    if [[ -z "$title" ]]; then
        title="$agent_name Agent"
    fi
    
    # Extract purpose statement
    local purpose=$(grep -A 10 "Purpose Statement" "$source_file" | tail -n +2 | head -n 1)
    if [[ -z "$purpose" ]]; then
        purpose="AI agent for $agent_category tasks with TDD and quality focus."
    fi
    
    # Extract core capabilities
    local capabilities=$(sed -n '/## Core Capabilities/,/## /p' "$source_file" | grep "^- " | head -5)
    
    # Extract workflow
    local workflow=$(sed -n '/## Workflow/,/## /p' "$source_file" | grep -E "^[0-9]\.|ASK|PLAN|EXECUTE|DEBUG|REVIEW|DOCUMENT")
    
    # Generate current date
    local current_date=$(date "+%Y-%m-%d")
    
    # Create the prompt file
    cat > "$prompt_file" << EOF
# $title

## Description
You are ${title%% Agent} specializing in $agent_category tasks. $purpose

## Instructions
Follow these core principles:
$(echo "$capabilities" | sed 's/^- /- /' | head -6)

## Workflow
Execute tasks using this six-phase approach:

1. **ASK** - Gather requirements and understand the context
2. **PLAN** - Design approach and strategy
3. **EXECUTE** - Implement the solution with quality focus
4. **DEBUG** - Test, validate, and optimize
5. **REVIEW** - Evaluate quality and effectiveness
6. **DOCUMENT** - Create comprehensive documentation

## Collaboration
- Work effectively with cross-functional teams
- Follow established communication protocols
- Integrate with other OpenAgentBuilder agents as needed

## Performance Metrics
- Quality metrics and deliverable assessment
- Process effectiveness and improvement tracking
- Team collaboration and communication success

---
**Source Agent**: \`/$source_file\`  
**Version**: 1.0  
**Last Updated**: $current_date
EOF

    log_success "Created $prompt_file"
}

# Function to process all agents in a directory
process_agent_directory() {
    local dir="$1"
    local category="$2"
    
    log_info "Processing $category agents from $dir"
    
    for agent_file in "$dir"/*.md; do
        if [[ -f "$agent_file" && ! "$agent_file" == *.prompt.md ]]; then
            local agent_name=$(basename "$agent_file")
            convert_agent_to_prompt "$agent_file" "$category" "$agent_name"
        fi
    done
}

# Main execution
log_info "Starting OpenAgentBuilder SDK synchronization"
log_info "Source: $SOURCE_DIR"
log_info "Target: $SDK_DIR"

# Process core agents
if [[ -d "$SOURCE_DIR/core" ]]; then
    process_agent_directory "$SOURCE_DIR/core" "core development"
fi

# Process development agents
if [[ -d "$SOURCE_DIR/development" ]]; then
    process_agent_directory "$SOURCE_DIR/development" "software development"
fi

# Process management agents
if [[ -d "$SOURCE_DIR/management" ]]; then
    process_agent_directory "$SOURCE_DIR/management" "project management"
fi

# Process specialized agents
if [[ -d "$SOURCE_DIR/specialized" ]]; then
    process_agent_directory "$SOURCE_DIR/specialized" "specialized technical"
fi

# Generate summary
log_info "Synchronization complete!"
log_info "Summary:"

total_prompts=$(find "$SDK_DIR" -name "*.prompt.md" | wc -l)
log_success "$total_prompts prompt files available in $SDK_DIR"

# List all available agents
log_info "Available agents:"
for prompt_file in "$SDK_DIR"/*.prompt.md; do
    if [[ -f "$prompt_file" ]]; then
        agent_cmd="/$(basename "$prompt_file" .prompt.md)"
        echo "  $agent_cmd"
    fi
done

log_success "VS Code SDK synchronization completed successfully!"
log_info "Reload VS Code window to refresh prompt files."
