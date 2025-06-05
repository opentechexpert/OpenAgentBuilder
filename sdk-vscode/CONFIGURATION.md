# VS Code Configuration Guide

## Overview

This guide provides detailed configuration instructions for integrating OpenAgentBuilder agents with Visual Studio Code using the VS Code SDK.

## Prerequisites

- Visual Studio Code 1.85.0 or later
- GitHub Copilot extension installed and activated
- OpenAgentBuilder VS Code SDK files

## Configuration Steps

### 1. Enable Prompt Files in VS Code

Add the following settings to your VS Code configuration:

#### User Settings (Recommended)
```json
{
  "chat.promptFiles": true,
  "chat.promptFilesLocations": [
    "sdk-vscode/agents/core",
    "sdk-vscode/agents/development",
    "sdk-vscode/agents/management",
    ".github/prompts"
  ]
}
```

#### Workspace Settings (Team Sharing)
```json
{
  "chat.promptFiles": true,
  "chat.promptFilesLocations": [
    "sdk-vscode/agents/core",
    "sdk-vscode/agents/development", 
    "sdk-vscode/agents/management"
  ],
  "files.associations": {
    "*.prompt.md": "markdown"
  }
}
```

### 2. Folder Structure Setup

Choose one of these deployment options:

#### Option A: Direct Integration (Recommended for Development)
Keep the SDK in your project structure:
```
your-project/
├── sdk-vscode/
│   ├── agents/
│   │   ├── core/
│   │   │   ├── prompt-engineer-v2.prompt.md
│   │   │   ├── doc-writer.prompt.md
│   │   │   └── orchestrator.prompt.md
│   │   ├── development/
│   │   │   ├── master-software-engineer.prompt.md
│   │   │   ├── frontend-engineer.prompt.md
│   │   │   ├── backend-engineer.prompt.md
│   │   │   ├── quality-assurance-engineer.prompt.md
│   │   │   └── system-analyst.prompt.md
│   │   └── management/
│   │       ├── product-owner.prompt.md
│   │       ├── project-manager.prompt.md
│   │       └── scrum-master.prompt.md
│   └── README.md
├── .vscode/
│   └── settings.json
└── your-project-files/
```

#### Option B: GitHub Integration (Recommended for Teams)
Copy prompt files to the standard GitHub location:
```bash
# Create the .github/prompts directory
mkdir -p .github/prompts

# Copy all agent prompts
cp sdk-vscode/agents/*.prompt.md .github/prompts/

# Update VS Code settings to use .github/prompts
```

### 3. Workspace Variables Configuration

OpenAgentBuilder agents support VS Code workspace variables:

```json
{
  "chat.promptFiles": true,
  "chat.promptFilesLocations": ["sdk-vscode/agents"],
  "openagentbuilder.workspace": {
    "projectType": "typescript",
    "testingFramework": "jest",
    "architectureStyle": "microservices"
  }
}
```

### 4. Team Collaboration Setup

#### Version Control Configuration
Add to your `.gitignore` if needed:
```gitignore
# Keep OpenAgentBuilder SDK tracked
# sdk-vscode/

# Optional: Ignore VS Code workspace settings if using user settings
# .vscode/settings.json
```

#### Team Settings Template
Create `.vscode/settings.json` for team sharing:
```json
{
  "chat.promptFiles": true,
  "chat.promptFilesLocations": [
    "sdk-vscode/agents"
  ],
  "files.associations": {
    "*.prompt.md": "markdown"
  },
  "markdown.validate.enabled": true,
  "markdown.preview.fontSize": 14
}
```

## Advanced Configuration

### Custom Prompt Locations

Configure multiple prompt locations for different agent categories:

```json
{
  "chat.promptFiles": true,
  "chat.promptFilesLocations": [
    "sdk-vscode/agents",
    "custom-prompts/development",
    "custom-prompts/management",
    ".github/prompts"
  ]
}
```

### Agent Customization

Create custom variants of OpenAgentBuilder agents:

1. Copy an existing agent prompt to a new file
2. Modify the content while maintaining the structure
3. Update the agent name and description
4. Reference the original source agent

Example custom agent:
```markdown
# Custom Frontend Engineer Agent

## Description
You are a Frontend Engineer specializing in React and TypeScript...

## Instructions
Based on the OpenAgentBuilder Frontend Engineer but customized for our tech stack:
- Use React 18+ with TypeScript
- Follow our specific ESLint configuration
- Use our custom component library

[...rest of customization...]

---
**Source Agent**: `/agents/development/frontend-engineer.md`
**Customized For**: Our React TypeScript Stack
**Version**: 1.0-custom
**Last Updated**: {{ current_date }}
```

## Troubleshooting

### Prompt Files Not Appearing
1. Verify `chat.promptFiles` is set to `true`
2. Check that the paths in `chat.promptFilesLocations` are correct
3. Reload VS Code window (Ctrl+Shift+P → "Developer: Reload Window")
4. Verify the .prompt.md files are in the specified directories

### Agent Commands Not Working
1. Ensure GitHub Copilot extension is active
2. Check that the prompt files have the correct `.prompt.md` extension
3. Verify the agent names match the file names (without extension)
4. Try typing `/` in VS Code Chat to see available prompts

### Performance Issues
1. Limit the number of prompt locations
2. Keep prompt files under 10KB for optimal performance
3. Use specific prompt locations rather than broad directory patterns

## Validation

Test your configuration:

1. Open VS Code Chat (Ctrl+Shift+I or Cmd+Shift+I)
2. Type `/` to see available prompts
3. Verify OpenAgentBuilder agents appear in the list
4. Test an agent command like `/prompt-engineer-v2`
5. Confirm the agent responds with its specialized prompt

## Support

For configuration issues:
- Check the [Troubleshooting Guide](docs/troubleshooting.md)
- Review VS Code Copilot documentation
- Create an issue in the OpenAgentBuilder repository
