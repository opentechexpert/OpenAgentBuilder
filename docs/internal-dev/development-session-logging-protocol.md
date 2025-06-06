# Development Session Logging Protocol

## Purpose
Establish a standardized approach for all OpenAgentBuilder agents to document development sessions, ensuring consistent institutional memory capture and collaborative development tracking.

## Standard Logging Location

### Centralized Development Sessions
**Location**: `/docs/internal-dev/knowledge-base/development-sessions/`
**Purpose**: All development session tracking and institutional memory
**Audience**: All agents, project managers, system architects, community

**Naming Convention**: `{AGENT-CODE}-{SESSION-TYPE}-{YYYY-MM-DD}-{HH}.md`

### Session Organization
All development sessions, regardless of scope or agent, are stored in the centralized knowledge base location. This ensures:
- Single source of truth for all development activity
- Improved discoverability and cross-referencing
- Better pattern recognition and analytics
- Simplified knowledge base integration

## Development Session File Structure

### Required Sections
```markdown
# Development Session: {Session-ID}

## Session Information
**Session ID**: `{AGENT-CODE}-{SESSION-TYPE}-{YYYY-MM-DD}-{HH}`
**Date**: {Date}
**Conducted by**: {Agent/Human}
**Session Type**: {Analysis|Creation|Refactor|Validation|Enhancement}
**Duration**: {Time estimate}
**Status**: {IN_PROGRESS|COMPLETED|BLOCKED|REVIEW_NEEDED}

## Session Context
### Agent Target / Project Target
### Methodology Applied
### User Request / Development Context

## Execution Summary
### Key phases and activities

## Key Findings
### Strengths and insights discovered

## Changes Made
### Specific modifications and implementations

## Recommendations
### Immediate, medium-term, and long-term suggestions

## Next Steps
### Action items and dependencies

## Cross-References
### Related sessions, files, and documentation

---
**Session Impact**: Brief summary of session outcomes and value
```

## Session ID Format
**Pattern**: `{AGENT-CODE}-{SESSION-TYPE}-{YYYY-MM-DD}-{HH}`

**Examples**:
- `PROMPT-ENG-VAL-2025-06-06-14` (Prompt Engineer Validation)
- `DOC-WRITER-CRE-2025-06-06-15` (Doc Writer Creation)
- `ORCHESTRATOR-REF-2025-06-06-16` (Orchestrator Refactor)

## Agent Code Mapping
- **PROMPT-ENG**: Prompt Engineer V2
- **DOC-WRITER**: Documentation Writer
- **ORCHESTRATOR**: Orchestrator Agent
- **VSCODE-SDK**: VS Code SDK Integration
- **BACKEND-ENG**: Backend Engineer
- **FRONTEND-ENG**: Frontend Engineer
- **QA-ENG**: Quality Assurance Engineer
- **MASTER-ENG**: Master Software Engineer
- **PROJ-MGR**: Project Manager
- **PROD-OWNER**: Product Owner
- **SCRUM-MASTER**: Scrum Master

## Session Types
- **CRE**: Creation (new agent/component)
- **VAL**: Validation (quality/standards check)
- **REF**: Refactor (structural improvements)
- **ENH**: Enhancement (feature additions)
- **ANA**: Analysis (investigation/research)
- **FIX**: Fix (bug resolution)
- **INT**: Integration (ecosystem work)

## Standardized Prompt for All Agents

When completing development work, all agents should use this prompt:

```
## 📋 Development Session Logging

Please document this development session following OpenAgentBuilder standards:

1. **Create Centralized Development Session Log**
   - Location: `/docs/internal-dev/knowledge-base/development-sessions/`
   - Session ID: {AGENT-CODE}-{SESSION-TYPE}-{YYYY-MM-DD}-{HH}
   - Include all required sections per logging protocol
   - All sessions stored centrally for project-wide visibility

2. **Extract Knowledge Patterns**
   - Location: `/docs/internal-dev/knowledge-base/development-patterns/`
   - Document any reusable patterns discovered
   - Update institutional memory

3. **Version Management**
   - Update agent version if significant changes
   - Document version rationale in development log
   - Ensure version consistency across references

4. **Quality Validation**
   - Apply relevant quality checklists
   - Document compliance status
   - Note any standards improvements needed
```

## Implementation for Each Agent

### Step 1: Add Development Logging Capability
Each agent should include this in their workflow modules:

**File**: `modules/workflow/workflow-document.md`
```markdown
## Development Session Logging
- **Session Documentation**: Create comprehensive session log using standardized format
- **Knowledge Extraction**: Identify and document reusable patterns
- **Cross-Agent Integration**: Update project-wide development tracking
- **Quality Validation**: Apply and document compliance with standards
- **Institutional Memory**: Contribute learnings to knowledge base
```

### Step 2: Add Logging Task
**File**: `tasks/log-development-session.md`

## Quality Standards Integration

### Required Quality Checks
- [ ] Session documented in standardized format
- [ ] All changes properly versioned and explained
- [ ] Cross-references validated and updated
- [ ] Knowledge patterns extracted and shared
- [ ] Integration impacts assessed and documented

### Success Criteria
- Development sessions are traceable and searchable
- Institutional memory is systematically captured
- Cross-agent learnings are accessible
- Quality improvements are measurable over time

## Automation Opportunities

### Future Enhancements
1. **Automated Session Creation**: Scripts to generate session templates
2. **Cross-Reference Validation**: Automated link checking in logs
3. **Pattern Recognition**: AI-assisted pattern extraction
4. **Metrics Collection**: Automated quality and productivity metrics
5. **Knowledge Base Integration**: Automatic pattern library updates

---

**Implementation Priority**: High
**Target Completion**: Within 1 week of agent development
**Maintenance**: Ongoing with each development session
**Review Cycle**: Monthly for process improvements
