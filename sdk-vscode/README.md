# OpenAgentBuilder VS Code SDK

Transform your development workflow with OpenAgentBuilder agents directly in Visual Studio Code.

## Overview

The OpenAgentBuilder VS Code SDK bridges our comprehensive agent library with VS Code's native prompt and instruction system, enabling you to use specialized AI agents directly within your development environment.

## Quick Start

### 1. Enable Prompt Files in VS Code

Add to your VS Code settings:
```json
{
  "chat.promptFiles": true,
  "chat.promptFilesLocations": [
    "sdk-vscode/agents/core",
    "sdk-vscode/agents/development", 
    "sdk-vscode/agents/management"
  ]
}
```

### 2. Copy Prompt Files to Your Workspace

Copy the agent folders to your project's `.github/prompts/` directory:
```bash
mkdir -p .github/prompts
cp -r sdk-vscode/agents/* .github/prompts/
```

### 3. Use Agents in VS Code Chat

Type `/` followed by the agent name in VS Code Chat:
- `/prompt-engineer-v2` - Create and refactor AI agent prompts
- `/doc-writer` - Generate comprehensive technical documentation  
- `/orchestrator` - Coordinate multi-agent workflows
- `/master-software-engineer` - Technical leadership and architecture
- `/frontend-engineer` - Modern frontend development with testing
- `/backend-engineer` - Backend services and API development
- `/quality-assurance-engineer` - Comprehensive testing and quality assurance
- `/system-analyst` - Requirements analysis and system design
- `/product-owner` - Requirements gathering and stakeholder management
- `/project-manager` - Project coordination and delivery management
- `/scrum-master` - Agile facilitation and team coaching

## Available Agents

### Core Agents
- **Prompt Engineer V2** (`/prompt-engineer-v2`) - Agent creation and refactoring specialist
- **Doc Writer** (`/doc-writer`) - Technical documentation and content architecture
- **Orchestrator** (`/orchestrator`) - Multi-agent workflow coordination

### Development Team Agents
- **Master Software Engineer** (`/master-software-engineer`) - Technical leadership and code quality
- **Frontend Engineer** (`/frontend-engineer`) - UI/UX development with component testing
- **Backend Engineer** (`/backend-engineer`) - API development and system architecture
- **Quality Assurance Engineer** (`/quality-assurance-engineer`) - Comprehensive testing strategies
- **System Analyst** (`/system-analyst`) - Requirements analysis and system design

### Management Team Agents
- **Product Owner** (`/product-owner`) - Requirements gathering and stakeholder management
- **Project Manager** (`/project-manager`) - Project coordination and delivery management
- **Scrum Master** (`/scrum-master`) - Agile facilitation and team coaching

## Features

### 🔗 **Agent Cross-Referencing**
Each VS Code prompt references the original OpenAgentBuilder agent, ensuring consistency and enabling deep-dive access to full capabilities.

### 🛠️ **VS Code Integration**
- Native prompt files (.prompt.md) for seamless VS Code chat integration
- Instruction files (.instructions.md) for coding standards and practices
- Workspace variables (${workspaceFolder}, ${selection}, etc.)
- Tool integration (codebase, githubRepo, terminalLastCommand)

### 🔄 **Automatic Synchronization**
Keep your VS Code prompts in sync with the latest OpenAgentBuilder agent updates using our automation tools.

### 👥 **Team Collaboration**
Share OpenAgentBuilder prompts across your team through VS Code workspace settings and version control.

## Folder Structure

```
sdk-vscode/
├── README.md                          # This file
├── CONFIGURATION.md                   # Detailed setup guide
├── agents/                           # VS Code prompt files
│   ├── prompt-engineer-v2.prompt.md   # Ready-to-use prompts
│   ├── doc-writer.prompt.md
│   ├── orchestrator.prompt.md
│   └── [additional-agents].prompt.md
├── instructions/                     # Coding standards and practices
├── tools/                           # Automation and sync utilities
├── docs/                            # Documentation and guides
└── .vscode/                         # VS Code configuration templates
```

## Next Steps

1. **[Setup Guide](docs/setup-guide.md)** - Detailed configuration instructions
2. **[Usage Examples](docs/usage-examples.md)** - Real-world scenarios and workflows  
3. **[Configuration](CONFIGURATION.md)** - Advanced VS Code integration options
4. **[Troubleshooting](docs/troubleshooting.md)** - Common issues and solutions

## Automation Tools

### Sync Script
Keep your VS Code prompts synchronized with source agents:

```bash
# Run the synchronization script
./sdk-vscode/tools/sync-agents.sh
```

This script automatically:
- Converts all source agents to .prompt.md format
- Maintains cross-references to source files
- Updates version information and timestamps
- Provides synchronization summary

### Manual Updates
For custom modifications:

```bash
# Copy specific agents
cp agents/development/frontend-engineer.md sdk-vscode/agents/
# Convert manually or modify existing .prompt.md files
```

## Requirements

- **Visual Studio Code**: 1.85.0 or later
- **GitHub Copilot Extension**: Latest version
- **Settings Configuration**: `chat.promptFiles` enabled

## Integration Verification

Test your setup:

1. Open VS Code Chat (`Ctrl+Shift+I` or `Cmd+Shift+I`)
2. Type `/` to see available prompts
3. Verify all 11 OpenAgentBuilder agents appear:
   - 3 Core agents
   - 5 Development team agents  
   - 3 Management team agents
4. Test an agent: `/prompt-engineer-v2 help me create a new agent`

## Support and Contributing

- **Issues**: Report bugs or request features in the [OpenAgentBuilder repository](../../issues)
- **Documentation**: Full documentation available in the [docs folder](../../docs)  
- **Contributing**: See [CONTRIBUTING.md](../../docs/CONTRIBUTING.md) for contribution guidelines
- **Community**: Join discussions and share usage examples

---

**Part of the OpenAgentBuilder ecosystem** - Transform your development workflow with specialized AI agents designed for collaborative software development with TDD principles.

## Support

- **Issues**: Report problems in the main OpenAgentBuilder repository
- **Documentation**: Comprehensive guides available in the `docs/` folder
- **Community**: Join our discussions for tips and best practices

---

**Part of the OpenAgentBuilder Ecosystem** | [Main Repository](../README.md) | [Agent Library](../agents/) | [Documentation](../docs/)
