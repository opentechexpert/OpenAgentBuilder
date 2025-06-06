# 🔔 URGENT: Directory Structure Changes - All Agents Notice

## 📅 **Effective Date**: June 6, 2025, 15:00 UTC
## 🎯 **Priority**: CRITICAL - Workflow Impact
## 📋 **Issued by**: Orchestrator Agent

---

## 🚨 **CRITICAL DIRECTORY STRUCTURE CHANGES**

**All OpenAgentBuilder agents must update their workflow references immediately to prevent broken processes.**

### **🔄 Key Changes Made**

| **OLD PATH** | **NEW PATH** | **PURPOSE** |
|--------------|--------------|-------------|
| `/sdk-vscode/` | `/integrations/vscode/` | Platform-specific integrations |
| `/documentation/` | `/docs/` | Simplified documentation path |
| `/sdk-vscode/agents/` | `/integrations/vscode/prompts/` | Better organization |
| `/docs/internal/` | `/docs/internal-dev/` | Development documentation |
| `/_bmad-method/` | `/archive/bmad-method/` | Organized legacy content |

### **📁 New Structure Overview**

```
OpenAgentBuilder/
├── agents/                 # 🎯 MASTER AGENTS (Single source of truth)
├── integrations/           # 🔌 Platform integrations (VS Code, etc.)
├── docs/                   # 📚 Unified documentation 
├── archive/                # 📦 Legacy components
├── templates/              # 📋 Reusable templates
├── tools/                  # 🛠️ Development tools
└── scripts/               # ⚙️ Automation scripts
```

---

## 🤖 **AGENT-SPECIFIC ACTION REQUIRED**

### **All Development Agents** (`/agents/development/`)
- **Update References**: Change any `/documentation/` references to `/docs/`
- **Integration Awareness**: VS Code prompts now in `/integrations/vscode/prompts/`
- **Legacy References**: bmad-method content now in `/archive/bmad-method/`

### **All Management Agents** (`/agents/management/`)
- **Project Documentation**: Update paths to `/docs/` in all workflows
- **Team Communication**: Inform teams of structure changes
- **Process Updates**: Update any documentation workflows

### **Core Agents** (`/agents/core/`)
- **Orchestrator**: ✅ Already updated (led this migration)
- **Doc Writer**: Update documentation references to `/docs/`
- **Prompt Engineer V2**: Update agent creation workflows for new structure

---

## 📋 **IMMEDIATE WORKFLOW UPDATES REQUIRED**

### **1. Documentation References**
**BEFORE**: `/documentation/guides/`, `/documentation/api/`
**AFTER**: `/docs/guides/`, `/docs/api/`

### **2. Development Session Logging**
**BEFORE**: `/docs/internal/knowledge-base/`
**AFTER**: `/docs/internal-dev/knowledge-base/`

### **3. Integration References**
**BEFORE**: `/sdk-vscode/agents/core/`
**AFTER**: `/integrations/vscode/prompts/core/`

### **4. Legacy Component Access**
**BEFORE**: `/_bmad-method/`, `/_Creating a Prompt Engineer.../`
**AFTER**: `/archive/bmad-method/`, `/archive/research/`

---

## 🔍 **VALIDATION CHECKLIST**

All agents must verify:
- [ ] **Documentation paths updated** to `/docs/`
- [ ] **No broken references** to old directory structure
- [ ] **Workflow continuity** maintained with new paths
- [ ] **Integration awareness** of new VS Code structure
- [ ] **Legacy access** updated to `/archive/` locations

---

## 🆘 **SUPPORT & ESCALATION**

### **For Technical Issues**
- **Contact**: Master Software Engineer Agent
- **Scope**: Directory structure, path resolution, technical problems

### **For Documentation Issues**
- **Contact**: Doc Writer Agent  
- **Scope**: Documentation references, content organization

### **For Workflow Coordination**
- **Contact**: Orchestrator Agent
- **Scope**: Multi-agent coordination, process conflicts

### **Emergency Protocol**
- **If workflows break**: STOP and contact Orchestrator immediately
- **If references fail**: Use new path structure immediately
- **If uncertainty exists**: Reference this notice or contact support

---

## 📈 **BENEFITS OF NEW STRUCTURE**

### **For All Agents**
- **Single Source of Truth**: `/agents/` is definitive location
- **Clear Separation**: Platform integrations separate from source
- **Better Organization**: Logical hierarchy and navigation
- **Reduced Confusion**: No more duplication between directories

### **For Development Workflows**
- **Scalable Architecture**: Ready for multi-platform integrations
- **Automated Sync Ready**: Structure supports build automation
- **Community Friendly**: Optimized for open-source collaboration
- **Future-Proof**: Designed for ecosystem growth

---

## 🎯 **SUCCESS METRICS**

We will track:
- **Zero Broken Workflows**: All agent processes continue smoothly
- **Reference Accuracy**: All documentation links work correctly  
- **Adoption Speed**: All agents update within 24 hours
- **Quality Maintenance**: No degradation in agent performance

---

**⚡ ACTION REQUIRED: Update your workflows immediately**
**📞 Questions: Contact Orchestrator Agent**
**📅 Deadline: All updates complete by June 7, 2025**

---
**Notification Issued**: June 6, 2025, 15:30 UTC  
**Authority**: Orchestrator Agent  
**Distribution**: All OpenAgentBuilder Agents  
**Status**: ACTIVE - Compliance Required
