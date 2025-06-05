# VS Code SDK Setup Guide

## Quick Start

Get up and running with OpenAgentBuilder agents in VS Code in under 5 minutes.

## Prerequisites

Before you begin, ensure you have:

- [ ] Visual Studio Code 1.85.0 or later
- [ ] GitHub Copilot extension installed and activated
- [ ] Access to the OpenAgentBuilder repository

## Step-by-Step Setup

### Step 1: Clone or Download OpenAgentBuilder

```bash
# Option A: Clone the repository
git clone https://github.com/your-org/OpenAgentBuilder.git
cd OpenAgentBuilder

# Option B: Download and extract the SDK only
# Download the sdk-vscode folder to your project
```

### Step 2: Configure VS Code Settings

Add to your VS Code settings (File → Preferences → Settings → Open Settings JSON):

```json
{
  "chat.promptFiles": true,
  "chat.promptFilesLocations": [
    "sdk-vscode/agents/core",
    "sdk-vscode/agents/development",
    "sdk-vscode/agents/management"
  ]
}
```

### Step 3: Reload VS Code

- Press `Ctrl+Shift+P` (Windows/Linux) or `Cmd+Shift+P` (Mac)
- Type "Developer: Reload Window"
- Press Enter

### Step 4: Test Your Setup

1. Open VS Code Chat: `Ctrl+Shift+I` (Windows/Linux) or `Cmd+Shift+I` (Mac)
2. Type `/` to see available prompts
3. Look for OpenAgentBuilder agents in the list
4. Try `/prompt-engineer-v2 help me create a new agent`

## Verification Checklist

- [ ] VS Code Chat shows OpenAgentBuilder agents when typing `/`
- [ ] Agent commands respond with specialized prompts
- [ ] All 11 agents are available (3 core + 5 development + 3 management)

## Project Integration Options

### Option 1: Full SDK Integration (Recommended)

Keep the entire `sdk-vscode` folder in your project:

```
your-project/
├── sdk-vscode/           # Full OpenAgentBuilder SDK
│   ├── agents/          # All .prompt.md files
│   ├── docs/           # Documentation
│   └── README.md       # SDK guide
├── .vscode/
│   └── settings.json   # VS Code configuration
└── [your project files]
```

**Benefits:**
- Complete documentation and configuration
- Easy updates and synchronization
- Full feature access

### Option 2: Agents Only

Copy just the agent files to your preferred location:

```bash
# Create prompts directory
mkdir -p .github/prompts

# Copy agent files
cp sdk-vscode/agents/*.prompt.md .github/prompts/

# Update VS Code settings
# "chat.promptFilesLocations": [".github/prompts"]
```

**Benefits:**
- Minimal footprint
- Standard GitHub prompts location
- Easy version control

### Option 3: Custom Selection

Choose specific agents for your project:

```bash
# Copy only the agents you need
cp sdk-vscode/agents/prompt-engineer-v2.prompt.md .github/prompts/
cp sdk-vscode/agents/frontend-engineer.prompt.md .github/prompts/
cp sdk-vscode/agents/backend-engineer.prompt.md .github/prompts/
```

## Team Collaboration Setup

### For Team Leads

1. **Add SDK to Repository**
   ```bash
   # Add the SDK to your project repository
   git add sdk-vscode/
   git commit -m "Add OpenAgentBuilder VS Code SDK"
   git push
   ```

2. **Create Team Settings**
   ```json
   // .vscode/settings.json
   {
     "chat.promptFiles": true,
     "chat.promptFilesLocations": ["sdk-vscode/agents"],
     "files.associations": {
       "*.prompt.md": "markdown"
     }
   }
   ```

3. **Document for Team**
   Add to your project README:
   ```markdown
   ## AI Development Agents
   
   This project uses OpenAgentBuilder agents for AI-assisted development.
   
   ### Setup
   1. Ensure GitHub Copilot is installed
   2. Reload VS Code window after cloning
   3. Use `/[agent-name]` in VS Code Chat
   
   ### Available Agents
   - `/prompt-engineer-v2` - Create and refactor AI prompts
   - `/frontend-engineer` - Frontend development with testing
   - `/backend-engineer` - Backend services and APIs
   - [... list other relevant agents]
   ```

### For Team Members

1. **Clone Project**
   ```bash
   git clone [your-project-repo]
   cd [your-project]
   ```

2. **Verify Setup**
   - Open VS Code in the project directory
   - Open VS Code Chat (`Ctrl+Shift+I`)
   - Type `/` to see available agents

3. **Start Using Agents**
   - Use `/prompt-engineer-v2` for AI prompt development
   - Use `/frontend-engineer` for frontend tasks
   - Use `/product-owner` for requirements and user stories

## Customization

### Custom Agent Creation

Create project-specific variants:

1. Copy an existing agent:
   ```bash
   cp sdk-vscode/agents/frontend-engineer.prompt.md custom-frontend.prompt.md
   ```

2. Modify for your tech stack:
   ```markdown
   # Custom Frontend Engineer Agent
   
   ## Description
   You are a Frontend Engineer specializing in Vue.js and our company's design system...
   
   ## Instructions
   Follow our specific guidelines:
   - Use Vue 3 Composition API
   - Follow our ESLint configuration
   - Use our custom component library "MyCompanyUI"
   
   [... rest of customization]
   
   ---
   **Source Agent**: `/agents/development/frontend-engineer.md`
   **Customized For**: Vue.js + MyCompanyUI
   ```

3. Add to prompt locations:
   ```json
   {
     "chat.promptFilesLocations": [
       "sdk-vscode/agents",
       "custom-prompts"
     ]
   }
   ```

## Next Steps

1. **Read the [Configuration Guide](../CONFIGURATION.md)** for advanced setup options
2. **Check out [Usage Examples](usage-examples.md)** for real-world scenarios
3. **Review [Troubleshooting](troubleshooting.md)** for common issues
4. **Explore the [full OpenAgentBuilder repository](../../README.md)** for the complete agent library

## Support

Need help? Check these resources:

- [Troubleshooting Guide](troubleshooting.md)
- [Configuration Guide](../CONFIGURATION.md)
- [OpenAgentBuilder Documentation](../../docs/)
- [VS Code Copilot Documentation](https://code.visualstudio.com/docs/copilot)

Create an issue in the OpenAgentBuilder repository for bugs or feature requests.
