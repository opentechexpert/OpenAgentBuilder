# VS Code Platform Integration

## Overview
Defines the technical integration points and requirements for seamlessly integrating OpenAgentBuilder agents with the Visual Studio Code platform and ecosystem.

## VS Code Integration Architecture

### Prompt File Integration
- **Format Compliance**: Ensure all prompt files follow VS Code .prompt.md specifications
- **Tool Configuration**: Configure available tools for each agent type (codebase, githubRepo, etc.)
- **Mode Configuration**: Set appropriate chat modes (agent, edit, ask) for different use cases
- **Variable Support**: Utilize VS Code variables (${workspaceFolder}, ${selection}, etc.)

### Workspace Configuration
- **Folder Structure**: Organize prompt files for optimal VS Code discovery
- **Settings Integration**: Configure VS Code settings for different agent scenarios
- **Extension Compatibility**: Ensure compatibility with VS Code extensions
- **Team Sharing**: Enable team-wide sharing of OpenAgentBuilder prompts

## Technical Specifications

### File Structure Requirements
```
/integrations/vscode/
├── agents/                            # Converted prompt files
│   ├── core/                         # Core OpenAgentBuilder agents
│   ├── development/                  # Development-focused agents
│   └── management/                   # Management-focused agents
├── instructions/                      # VS Code instruction files
├── tools/                            # Automation and utilities
└── .vscode/                          # VS Code configuration
```

### Prompt File Template
```markdown
---
mode: 'agent'
tools: ['codebase', 'githubRepo', 'terminalLastCommand']
description: 'OpenAgentBuilder Agent: [Agent Name]'
---

# [Agent Name] - OpenAgentBuilder Integration

Reference: [Source Agent] `../../agents/[category]/[agent-name].md`

[Agent prompt content adapted for VS Code workflow]

## Variables Available
- ${workspaceFolder} - Current workspace root
- ${selection} - Current editor selection
- ${file} - Current file path
- ${input:agentTask} - Custom input for agent task
```

## Platform Capabilities

### VS Code Variables Integration
- **Workspace Context**: Leverage ${workspaceFolder} for project-aware agents
- **Editor Integration**: Use ${selection} and ${file} for code-focused agents
- **Custom Inputs**: Implement ${input:} variables for dynamic agent behavior

### Tool Integration
- **Codebase Tool**: Full repository analysis and code understanding
- **GitHub Repository Tool**: External repository integration
- **Terminal Command Tool**: Integration with terminal history
- **File System Tool**: Direct file manipulation capabilities

### Performance Optimization
- **Lazy Loading**: Load prompt files only when needed
- **Caching Strategy**: Cache frequently used agent configurations
- **Resource Management**: Optimize memory usage for large workspaces
- **Response Streaming**: Enable streaming responses for better UX

## Quality Standards

### Integration Testing
- Validate prompt file functionality in VS Code
- Test cross-references to original agents
- Verify VS Code variable substitution
- Validate tool integration points

### Performance Requirements
- Prompt loading time < 2 seconds
- Agent response initiation < 1 second
- Memory usage within VS Code limits
- Minimal impact on VS Code startup time

### Compatibility Requirements
- Support VS Code version 1.80+
- Compatible with GitHub Copilot
- Works with common VS Code extensions
- Cross-platform functionality (Windows, macOS, Linux)
