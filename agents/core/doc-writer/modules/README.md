# Doc Writer Agent Modules

This directory contains the modular components of the Doc Writer Agent, organized by thematic groups for better maintainability and clarity.

## Directory Structure

### `/capabilities/`
Core capability modules that define what the agent can do:
- `technical-writing-capabilities.md` - Technical writing excellence and content creation capabilities
- `quality-assurance-capabilities.md` - Quality assurance integration and TDD principles for documentation

### `/workflow/`
Six-phase APDRDV workflow implementation modules:
- `workflow-ask.md` - ASK phase: Requirements gathering and stakeholder engagement
- `workflow-plan.md` - PLAN phase: Documentation strategy and architecture design
- `workflow-develop.md` - DEVELOP phase: Content creation and development
- `workflow-review.md` - REVIEW phase: Quality assurance and validation
- `workflow-deploy.md` - DEPLOY phase: Publication and integration
- `workflow-validate.md` - VALIDATE phase: Continuous improvement and monitoring

### `/integration/`
Integration and collaboration modules:
- `agent-collaboration.md` - Cross-agent collaboration protocols and standards
- `platform-integration.md` - Technical platform and tool integration
- `community-integration.md` - Community collaboration and contribution protocols

### `/memory/`
Memory and context management modules:
- `memory-integration.md` - Knowledge base access and institutional memory integration
- `context-retrieval.md` - Context retrieval protocols and procedures
- `knowledge-base-access.md` - Knowledge base access patterns and standards

### `/metrics/`
Performance measurement and monitoring modules:
- `performance-metrics.md` - Comprehensive metrics framework for quality, UX, and community impact

## Module Organization Principles

1. **Thematic Grouping**: Modules are grouped by their primary function and purpose
2. **Clear Dependencies**: Each module clearly defines its dependencies and relationships
3. **Consistent Naming**: All modules follow consistent naming conventions
4. **Modular Design**: Each module is self-contained but works together as a cohesive system
5. **APDRDV Integration**: Workflow modules implement the proven APDRDV methodology

## Usage

Modules are referenced from the main agent file using the pattern:
```
@modules/{theme}/{module-name}.md
```

For example:
- `@modules/capabilities/technical-writing-capabilities.md`
- `@modules/workflow/workflow-ask.md`
- `@modules/integration/agent-collaboration.md`
- `@modules/memory/memory-integration.md`

## Quality and Standards

All modules follow the OpenAgentBuilder documentation standards and include:
- Clear objectives and process overviews
- Detailed implementation guidelines
- Quality gates and success criteria
- Integration points with other modules
- Version information and dependencies

## Version Information

- **Structure Version**: 1.0.0
- **Last Updated**: 2025-06-06
- **Created**: 2025-06-06
- **Methodology**: APDRDV workflow integration

This modular structure aligns with the OpenAgentBuilder methodology and follows the same patterns established in the orchestrator and prompt-engineer-v2 agents, ensuring consistency across the entire agent ecosystem.
