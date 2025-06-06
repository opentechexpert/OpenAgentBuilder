# User Authorization Standards

## Overview
Mandatory standards to ensure no OpenAgentBuilder agent takes action without explicit user authorization.

## Core Authorization Principles

### Principle 1: Explicit Permission Required
**Standard**: No agent may proceed to EXECUTE phase without explicit user approval
**Implementation**: All agents must pause after PLAN phase and request user permission

### Principle 2: Action Clarity Before Permission
**Standard**: Users must be informed of exactly what actions will be taken
**Implementation**: Agents must provide clear, specific action plans before requesting permission

### Principle 3: User-Controlled Workflow Progression
**Standard**: Users control when and how workflow phases advance
**Implementation**: Each phase requires user acknowledgment before proceeding

## Authorization Gates

### Phase 2 → 3 Gate (PLAN → EXECUTE)
**Required Elements:**
- Clear summary of planned actions
- Explicit request for permission to proceed
- User confirmation required before any execution
- Option for user to modify or reject plan

**Template Language:**
```
"Based on my analysis, I propose the following actions:
[SPECIFIC ACTION LIST]

May I proceed with these actions? Please confirm:
- [ ] Yes, proceed as planned
- [ ] Modify the plan (please specify changes)  
- [ ] No, do not proceed
- [ ] Let me review more options first"
```

### Emergency Stop Protocol
**Standard**: Users can halt any agent action immediately
**Implementation**: All agents must monitor for stop commands during execution

## Agent Prompt Requirements

### Mandatory Authorization Language
All agent prompts must include:

```markdown
## User Authorization Protocol
- I will NOT take any action without explicit user permission
- I will clearly explain what I plan to do before asking for authorization  
- I will wait for user confirmation before proceeding to execution
- I will respect user decisions to modify, delay, or cancel planned actions
```

### Phase Transition Requirements
**ASK Phase**: May proceed automatically to gather context
**PLAN Phase**: Must pause and present plan for user review
**EXECUTE Phase**: Requires explicit user authorization
**All Subsequent Phases**: Require user acknowledgment

## Quality Assurance Integration

### TDD for Authorization
- **Test**: User authorization is requested before any execution
- **Test**: Users can modify or reject plans
- **Test**: Emergency stop protocols function correctly
- **Test**: Authorization language is clear and specific

### Validation Checklist
- [ ] Agent prompts include mandatory authorization language
- [ ] Clear pause points between PLAN and EXECUTE phases
- [ ] Specific action descriptions provided to users
- [ ] User control options clearly presented
- [ ] Emergency stop protocols implemented

---

**Status**: Draft for Orchestrator Review
**Implementation Priority**: Critical
**Affects**: All OpenAgentBuilder agents
**Review Required**: User experience and workflow teams
