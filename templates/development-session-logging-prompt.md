# Standard Development Session Logging Prompt

## Copy-Paste Template for All Agents

When any agent completes development work, use this standardized prompt:

```
## 📋 Development Session Logging Request

Following OpenAgentBuilder development session logging protocol, please:

### 1. Create Session Documentation
**Session ID**: {AGENT-CODE}-{SESSION-TYPE}-{YYYY-MM-DD}-{HH}
**Location**: `/docs/internal/knowledge-base/development-sessions/`

**Required Sections**:
- Session metadata (conductor, type, duration, status)
- Methodology applied (workflow phases, standards used)
- Changes made (files, versions, configurations)
- Key findings (discoveries, assessments, validations)
- Recommendations (immediate, short-term, long-term)
- Next steps (action items, dependencies, timeline)

### 2. Extract Knowledge Patterns
**Location**: `/docs/internal/knowledge-base/development-patterns/`
- Document any reusable patterns discovered
- Update existing pattern libraries
- Create new pattern files if significant methodologies emerged

### 3. Version Management
- Update agent version if significant changes occurred
- Document version increment rationale
- Ensure consistency across all references

### 4. Quality Validation
- Apply relevant OpenAgentBuilder quality checklists
- Document compliance status and scores
- Note any standards improvements identified

**Reference**: [Development Session Logging Protocol](../docs/internal/development-session-logging-protocol.md)
```

## Agent Code Quick Reference

| Agent | Code | Example Session ID |
|-------|------|-------------------|
| Prompt Engineer V2 | PROMPT-ENG | PROMPT-ENG-VAL-2025-06-06-14 |
| Doc Writer | DOC-WRITER | DOC-WRITER-CRE-2025-06-06-15 |
| Orchestrator | ORCHESTRATOR | ORCHESTRATOR-REF-2025-06-06-16 |
| VS Code SDK Integration | VSCODE-SDK | VSCODE-SDK-VAL-2025-06-06-14 |
| Backend Engineer | BACKEND-ENG | BACKEND-ENG-ENH-2025-06-06-17 |
| Frontend Engineer | FRONTEND-ENG | FRONTEND-ENG-FIX-2025-06-06-18 |
| QA Engineer | QA-ENG | QA-ENG-ANA-2025-06-06-19 |
| Master Software Engineer | MASTER-ENG | MASTER-ENG-INT-2025-06-06-20 |
| Project Manager | PROJ-MGR | PROJ-MGR-CRE-2025-06-06-21 |
| Product Owner | PROD-OWNER | PROD-OWNER-REF-2025-06-06-22 |
| Scrum Master | SCRUM-MASTER | SCRUM-MASTER-ENH-2025-06-06-23 |

## Session Type Quick Reference

| Type | Code | Description | When to Use |
|------|------|-------------|-------------|
| Creation | CRE | New agent/component development | Building new agents, modules, or features |
| Validation | VAL | Quality/standards assessment | Reviewing existing work for compliance |
| Refactor | REF | Structural improvements | Reorganizing, modernizing, or optimizing |
| Enhancement | ENH | Feature additions | Adding new capabilities or improvements |
| Analysis | ANA | Investigation/research | Deep-dive analysis or problem investigation |
| Fix | FIX | Bug resolution | Correcting issues or defects |
| Integration | INT | Ecosystem coordination | Cross-agent work or system integration |

## Sample Filled-Out Prompts

### For a Validation Session
```
## 📋 Development Session Logging Request

Following OpenAgentBuilder development session logging protocol, please:

### 1. Create Session Documentation
**Session ID**: VSCODE-SDK-VAL-2025-06-06-14
**Location**: `/docs/internal/knowledge-base/development-sessions/`

Document comprehensive validation of VS Code SDK Integration Agent including:
- Systematic quality assessment using OpenAgentBuilder standards
- Technical validation of modular architecture implementation
- Compliance verification and scoring results
- Enhancement recommendations with priority levels

### 2. Update Project Tracking
Add validation session summary to June 2025 development sessions index

### 3. Extract Knowledge Patterns
Document agent validation methodology as reusable pattern for future assessments

### 4. Version Management
Consider version increment to reflect quality validation completion

### 5. Quality Validation
Applied OpenAgentBuilder quality framework - document results and compliance status
```

### For a Creation Session
```
## 📋 Development Session Logging Request

Following OpenAgentBuilder development session logging protocol, please:

### 1. Create Session Documentation
**Session ID**: BACKEND-ENG-CRE-2025-06-06-15
**Location**: `/docs/internal/knowledge-base/development-sessions/`

Document new Backend Engineer agent creation including:
- Requirements gathering and stakeholder input
- Architecture design and template selection
- Implementation of modular structure and workflows
- Quality assurance and standards compliance validation

### 2. Update Project Tracking
Add creation session summary highlighting new agent capabilities and integration points

### 3. Extract Knowledge Patterns
Document agent creation methodology refinements and template improvements

### 4. Version Management
Set initial version 1.0.0 and establish version control procedures

### 5. Quality Validation
Apply agent creation checklist and document initial quality baseline
```

## Implementation Guidance

### For Agent Developers
1. **Copy the template** appropriate for your session type
2. **Fill in the specifics** (agent code, session type, date/time)
3. **Customize the requirements** based on what actually happened
4. **Submit the prompt** to trigger proper documentation

### For Quality Assurance
- Verify all agents are using standardized logging
- Review development logs for completeness
- Monitor compliance with documentation standards
- Identify process improvement opportunities

### For Project Management
- Use development session logs for progress tracking
- Monitor cross-agent collaboration patterns
- Identify resource allocation needs
- Track quality trends across the ecosystem

---

**Usage**: Required after every significant development session  
**Maintenance**: Template updated as process evolves  
**Support**: Reference development session logging protocol for details
