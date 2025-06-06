# OpenAgentBuilder Path Reference

## CRITICAL: Correct File Paths

### Development Session Logs
❌ **WRONG**: `/docs/internal/development-sessions/`  
✅ **CORRECT**: `/docs/internal/knowledge-base/development-sessions/`

### Knowledge Base Locations
- **Development Sessions**: `/docs/internal/knowledge-base/development-sessions/`
- **Development Patterns**: `/docs/internal/knowledge-base/development-patterns/`
- **Pattern Library**: `/docs/internal/knowledge-base/pattern-library/`
- **Decision Log**: `/docs/internal/knowledge-base/decision-log/`
- **Standards**: `/docs/internal/knowledge-base/standards/`

## For AI Agents: Path Validation

Before creating any files in development-sessions, ALWAYS use:
`/docs/internal/knowledge-base/development-sessions/`

Never use:
- `/docs/internal/development-sessions/`
- `/docs/development-sessions/`
- Any path without `/knowledge-base/`

## Reference Documents
- [Development Session Logging Protocol](development-session-logging-protocol.md)
- [Knowledge Base Integration Plan](knowledge-base-integration-plan.md)

---
**Created**: June 6, 2025  
**Purpose**: Prevent path errors in file creation  
**Status**: Reference Document
