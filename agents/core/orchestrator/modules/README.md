# Orchestrator Agent Modules

This directory contains the modular components of the Orchestrator Agent, organized by thematic groups for better maintainability and logical structure.

## Directory Structure

### `/capabilities/`
Core functional capabilities of the orchestrator agent:
- **agent-coordination-capabilities.md** - Multi-agent coordination and management
- **communication-capabilities.md** - Inter-agent and stakeholder communication
- **decision-making-capabilities.md** - Strategic and operational decision frameworks
- **quality-assurance-capabilities.md** - TDD integration and quality management
- **workflow-management-capabilities.md** - Workflow design and execution management

### `/workflow/`
OPMERI methodology implementation phases:
- **workflow-observe.md** - Observation and situation analysis phase
- **workflow-plan.md** - Strategic planning and design phase
- **workflow-mobilize.md** - Resource mobilization and preparation phase
- **workflow-execute.md** - Implementation and execution phase
- **workflow-review.md** - Evaluation and assessment phase
- **workflow-integrate.md** - Integration and knowledge capture phase

### `/coordination/`
Agent team coordination strategies:
- **core-team-coordination.md** - Coordination with core agents (Doc Writer, Prompt Engineer V2)
- **development-team-coordination.md** - Coordination with development agents (Backend, Frontend, QA, System Analyst)
- **management-team-coordination.md** - Coordination with management agents (PM, PO, Scrum Master)
- **specialized-agent-coordination.md** - Coordination with domain-specific and specialized agents

### `/memory/`
Knowledge management and context systems:
- **memory-integration.md** - Institutional memory and knowledge base integration
- **context-retrieval.md** - Context query and retrieval protocols
- **development-session-context.md** - Development session context management
- **chat-history-management.md** - Chat session storage and organization

### `/metrics/`
Performance measurement and monitoring:
- **performance-metrics.md** - Comprehensive performance measurement framework

## Usage Guidelines

### Module References
When referencing modules from the main orchestrator file or other modules, use the relative path format:
```markdown
@modules/[theme]/[module-name].md
```

Examples:
- `@modules/capabilities/decision-making-capabilities.md`
- `@modules/workflow/workflow-execute.md`
- `@modules/memory/chat-history-management.md`

### Inter-Module Dependencies
Some modules may reference others. When creating cross-references:
- Use relative paths from the modules root: `@modules/[theme]/[module].md`
- Document dependencies clearly in module headers
- Avoid circular dependencies between modules

### Adding New Modules
When adding new modules:
1. Determine the appropriate thematic category
2. If no existing category fits, consider creating a new theme directory
3. Update this README to document the new module
4. Update the main orchestrator file references
5. Follow the established naming convention: `[functionality]-[type].md`

## Module Standards

### File Naming
- Use kebab-case for file names
- Include the module type as suffix (e.g., `-capabilities.md`, `-coordination.md`)
- Keep names descriptive but concise

### Content Structure
Each module should include:
- Purpose statement
- Core functionality description
- Integration points with other modules
- Usage examples or patterns
- Related module references

### Documentation Quality
- Follow OpenAgentBuilder documentation standards
- Include comprehensive examples and use cases
- Maintain consistency with OPMERI methodology
- Reference institutional memory and knowledge base appropriately

---
**Last Updated**: 2025-06-05  
**Maintained By**: Orchestrator Agent Development Team  
**Review Cycle**: With each module addition or major update
