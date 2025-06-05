# Prompt Engineer V2 Modules

This directory contains the modular components of the Prompt Engineer V2 agent, organized by thematic groups for better maintainability and clarity.

## Directory Structure

### `/capabilities/`
Core capability modules that define what the agent can do:
- `analysis-capabilities.md` - Analysis and deconstruction capabilities
- `design-capabilities.md` - Agent design architecture capabilities  
- `quality-capabilities.md` - Quality assurance capabilities
- `standardization-capabilities.md` - Standardization and reconstruction capabilities

### `/workflow/`
Six-phase workflow implementation modules:
- `workflow-ask.md` - ASK phase implementation
- `workflow-plan.md` - PLAN phase implementation
- `workflow-execute.md` - EXECUTE phase implementation
- `workflow-debug.md` - DEBUG phase implementation
- `workflow-review.md` - REVIEW phase implementation
- `workflow-document.md` - DOCUMENT phase implementation

### `/communication/`
Communication and coordination modules:
- `communication-protocols.md` - Cross-agent communication protocols

### `/metrics/`
Performance measurement and monitoring modules:
- `performance-metrics.md` - Quality, efficiency, and integration metrics

## Module Organization Principles

1. **Thematic Grouping**: Modules are grouped by their primary function and purpose
2. **Clear Dependencies**: Each module clearly defines its dependencies and relationships
3. **Consistent Naming**: All modules follow consistent naming conventions
4. **Modular Design**: Each module is self-contained but works together as a cohesive system

## Usage

Modules are referenced from the main agent file using the pattern:
```
@modules/{theme}/{module-name}.md
```

For example:
- `@modules/capabilities/analysis-capabilities.md`
- `@modules/workflow/workflow-ask.md`
- `@modules/communication/communication-protocols.md`

## Version Information

- **Structure Version**: 1.0.0
- **Last Updated**: 2025-06-05
- **Created**: 2025-06-05

This modular structure aligns with the OpenAgentBuilder methodology and follows the same patterns established in the orchestrator agent.
