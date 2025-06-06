# OpenAgentBuilder Integrations

This directory contains platform-specific implementations of OpenAgentBuilder agents. All integration versions are generated from the master agent definitions in `/agents/`.

## Available Integrations

### VS Code Integration (`/vscode/`)
- **Purpose**: Native VS Code Chat integration via .prompt.md files
- **Content**: Generated prompt files for all OpenAgentBuilder agents
- **Usage**: Add to VS Code workspace for direct agent access via `/agent-name`
- **Sync**: Automatically synced from master agents in `/agents/`

### Planned Integrations
- **GitHub Copilot** (`/copilot/`) - Copilot Chat integration
- **Cursor IDE** (`/cursor/`) - Cursor Composer integration  
- **REST API** (`/api/`) - HTTP API for agent interactions

## Integration Guidelines

1. **Single Source of Truth**: Master agents live in `/agents/`
2. **Generated Content**: Integration files are generated, not manually edited
3. **Platform Optimization**: Each integration optimized for its platform's capabilities
4. **Automated Sync**: Tools maintain consistency across all integrations

## Development

To add a new integration platform:

1. Create directory structure under `/integrations/[platform]/`
2. Develop conversion tools in `/tools/converters/`
3. Add sync automation to maintain consistency
4. Update this README with integration details

---
**Source**: OpenAgentBuilder Core Team  
**Last Updated**: June 6, 2025
