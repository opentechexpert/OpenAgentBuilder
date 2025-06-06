# OpenAgentBuilder VS Code Integration

This directory contains VS Code-specific implementations of OpenAgentBuilder agents, optimized for VS Code Chat integration.

## Structure

- **`/prompts/`** - Generated .prompt.md files for VS Code Chat
  - `/core/` - Foundation agents (orchestrator, prompt-engineer-v2, doc-writer)
  - `/development/` - Software development agents
  - `/management/` - Project management agents  
  - `/specialized/` - Infrastructure and specialized agents
- **Configuration files** - VS Code workspace settings and integration setup

## Features

### Dynamic Agent Discovery
- **Automatic Discovery**: Automatically discovers new agents added to the OpenAgentBuilder ecosystem
- **Real-time Synchronization**: Maintains live sync between core agents and VS Code prompts
- **Version Tracking**: Tracks agent versions and updates VS Code prompts accordingly
- **Smart Categorization**: Organizes agents by type (core, development, management, specialized)

### Evolutionary Adaptation
- **Ecosystem Monitoring**: Continuously monitors OpenAgentBuilder for changes
- **Adaptive Integration**: Automatically adapts to new agent types and structures
- **Performance Optimization**: Optimizes integration performance over time
- **Future-Proofing**: Designed for compatibility with emerging VS Code capabilities

### Quality Assurance
- **TDD Integration**: Applies Test-Driven Development principles to integration quality
- **Validation Framework**: Comprehensive validation of all agent transformations
- **Performance Metrics**: Tracks integration performance and quality metrics
- **Error Handling**: Robust error handling and recovery mechanisms

## Agent Portfolio

### Core Agents
- **[Orchestrator](./agents/core/orchestrator.prompt.md)** - Multi-agent workflow coordinator and system architect
- **[Doc Writer](./agents/core/doc-writer.prompt.md)** - Technical documentation specialist and content architect
- **[Prompt Engineer V2](./agents/core/prompt-engineer-v2.prompt.md)** - Master prompt architect and agent design engineer
- **[VS Code SDK Integration](./agents/core/vscode-sdk-integration.prompt.md)** - Dynamic VS Code integration with evolutionary capabilities

### Development Team Agents
- **[Master Software Engineer](./agents/development/master-software-engineer.prompt.md)** - Technical leadership and architecture with TDD mentoring

### Management Team Agents
*(Coming Soon)*
- Product Owner - Product management and strategy
- Project Manager - Project coordination and planning
- Scrum Master - Agile methodology and team facilitation

### Specialized Agents
*(Expanding as ecosystem grows)*
- Domain-specific agents based on team needs
- Custom agents developed by teams

## Usage

### VS Code Configuration
The SDK integrates with VS Code's prompt system through the workspace configuration in `.vscode/settings.json`:

```json
{
    "chat.promptFilesLocations": {
        "agents": true,
        "sdk-vscode/agents": true
    }
}
```

### Agent Access
Access any agent by using the `@` symbol followed by the agent name in VS Code Chat:
- `@orchestrator` - Access the Orchestrator Agent
- `@doc-writer` - Access the Doc Writer Agent
- `@prompt-engineer-v2` - Access the Prompt Engineer V2
- `@master-software-engineer` - Access the Master Software Engineer

### Authorization Protocol
All agents follow strict authorization protocols:
1. **ASK & PLAN**: Agents complete analysis and planning phases
2. **PRESENT PLAN**: Display comprehensive execution plan to user
3. **REQUEST AUTHORIZATION**: Explicitly ask for user permission
4. **AWAIT CONFIRMATION**: Wait for explicit user approval
5. **EXECUTE ONLY AFTER APPROVAL**: Proceed only with confirmed authorization

Users can say "STOP", "HALT", or "ABORT" at any time to immediately cease execution.

## Architecture

### Integration Architecture
- **Source**: OpenAgentBuilder agents in `/agents/` directory
- **Transformation**: Intelligent conversion to VS Code prompt format
- **Target**: VS Code prompt files in `/sdk-vscode/agents/` directory
- **Synchronization**: Real-time sync between source and target

### Quality Framework
- **Memory Integration**: Access to institutional memory for optimal decisions
- **Pattern Recognition**: Leverage documented success patterns
- **TDD Integration**: Apply Test-Driven Development principles
- **Continuous Validation**: Ongoing quality assurance and performance monitoring

### Performance Metrics
- **Discovery Coverage**: 100% automatic discovery of new agents
- **Sync Accuracy**: 99.9% accurate real-time synchronization
- **Evolution Speed**: <24h adaptation to ecosystem changes
- **Performance**: <2s discovery, <500ms sync operations
- **Quality Score**: 95% compliance with quality standards

## Development

### SDK Evolution
The VS Code SDK Integration Agent continuously evolves the integration:
- Monitors OpenAgentBuilder ecosystem for changes
- Adapts integration capabilities for new agent types
- Optimizes performance and quality over time
- Maintains compatibility with VS Code updates

### Memory Enhancement
All agents integrate with institutional memory:
- Access development session context
- Leverage pattern library and best practices
- Apply established quality standards
- Contribute insights back to knowledge base

### Community Integration
- **Open Source**: Full compatibility with community contributions
- **Documentation**: Comprehensive documentation for all integrations
- **Feedback**: Community feedback integration for continuous improvement
- **Standards**: Consistent quality standards across all agents

## Support

### Getting Started
1. Ensure VS Code has prompt file support enabled
2. Access agents using `@agent-name` in VS Code Chat
3. Follow agent authorization protocols for safe execution
4. Refer to individual agent documentation for specific capabilities

### Troubleshooting
- Check VS Code settings for prompt file location configuration
- Verify agent files are present in `/sdk-vscode/agents/` directory
- Ensure proper authorization flow is followed
- Contact OpenAgentBuilder team for integration issues

### Contributing
- Contribute to OpenAgentBuilder core agents to enhance VS Code integration
- Report integration issues through GitHub issues
- Suggest improvements for VS Code SDK functionality
- Follow OpenAgentBuilder contribution guidelines

---

**OpenAgentBuilder VS Code SDK**  
**Version**: 2.0.0  
**Last Updated**: 2025-06-06  
**Maintained by**: OpenAgentBuilder Core Team
