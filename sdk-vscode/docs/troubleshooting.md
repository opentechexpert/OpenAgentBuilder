# Troubleshooting Guide

Common issues and solutions for the OpenAgentBuilder VS Code SDK.

## Installation Issues

### Prompt Files Not Appearing in VS Code Chat

**Problem**: When typing `/` in VS Code Chat, OpenAgentBuilder agents don't appear.

**Solutions**:

1. **Verify Settings Configuration**
   ```json
   {
     "chat.promptFiles": true,
     "chat.promptFilesLocations": ["sdk-vscode/agents"]
   }
   ```

2. **Check File Paths**
   - Ensure the path in `chat.promptFilesLocations` is correct relative to your workspace root
   - Verify `.prompt.md` files exist in the specified directory
   - Use forward slashes `/` in paths (works on all platforms)

3. **Reload VS Code Window**
   - Press `Ctrl+Shift+P` (Windows/Linux) or `Cmd+Shift+P` (Mac)
   - Type "Developer: Reload Window"
   - Press Enter

4. **Check File Extensions**
   - Verify files have the `.prompt.md` extension (not `.md`)
   - Ensure there are no hidden characters or extra spaces

### GitHub Copilot Extension Issues

**Problem**: VS Code Chat not available or Copilot not responding.

**Solutions**:

1. **Verify Copilot Installation**
   - Go to Extensions view (`Ctrl+Shift+X`)
   - Search for "GitHub Copilot"
   - Ensure it's installed and enabled

2. **Check Copilot Authentication**
   - Press `Ctrl+Shift+P` and run "GitHub Copilot: Sign In"
   - Verify your GitHub account has Copilot access

3. **Update Extensions**
   - Update GitHub Copilot to the latest version
   - Restart VS Code after updating

### File Permission Issues

**Problem**: VS Code can't read prompt files.

**Solutions**:

1. **Check File Permissions**
   ```bash
   # Linux/Mac: Ensure files are readable
   chmod +r sdk-vscode/agents/*.prompt.md
   
   # Windows: Check file properties for read access
   ```

2. **Verify Directory Structure**
   ```
   workspace-root/
   ├── sdk-vscode/
   │   └── agents/
   │       ├── prompt-engineer-v2.prompt.md
   │       └── [other agents].prompt.md
   └── .vscode/
       └── settings.json
   ```

## Configuration Issues

### Multiple Prompt Locations Not Working

**Problem**: Agents from some directories appear, but not others.

**Solutions**:

1. **Verify All Paths**
   ```json
   {
     "chat.promptFilesLocations": [
       "sdk-vscode/agents",      // Verify this path exists
       ".github/prompts",        // Verify this path exists
       "custom-prompts"          // Verify this path exists
     ]
   }
   ```

2. **Use Absolute Workspace Paths**
   All paths should be relative to the workspace root, not the current file.

3. **Check Path Separators**
   Use forward slashes `/` on all platforms.

### Settings Not Taking Effect

**Problem**: Changes to VS Code settings don't seem to work.

**Solutions**:

1. **Check Settings Scope**
   - User settings: `~/.vscode/settings.json` (global)
   - Workspace settings: `.vscode/settings.json` (project-specific)
   - Choose the appropriate scope for your needs

2. **Validate JSON Syntax**
   - Ensure your settings.json is valid JSON
   - Use VS Code's built-in JSON validation
   - Check for trailing commas or syntax errors

3. **Settings Precedence**
   - Workspace settings override user settings
   - Check if conflicting settings exist in different scopes

## Agent Response Issues

### Agents Not Responding with Expected Behavior

**Problem**: Agents respond but don't follow their specialized prompts.

**Solutions**:

1. **Verify Prompt File Content**
   - Open the `.prompt.md` file and check the content
   - Ensure the agent instructions are clear and complete

2. **Check Agent Name Matching**
   - Agent command: `/prompt-engineer-v2`
   - File name: `prompt-engineer-v2.prompt.md`
   - Names must match exactly (excluding extension)

3. **Reload Prompt Files**
   - Make changes to prompt files
   - Reload VS Code window to refresh prompts
   - Try the agent command again

### Generic Responses Instead of Specialized Behavior

**Problem**: Agents respond like general ChatGPT instead of specialized agents.

**Solutions**:

1. **Check Prompt File Format**
   Ensure your prompt files follow this structure:
   ```markdown
   # Agent Name
   
   ## Description
   [Agent description]
   
   ## Instructions
   [Detailed instructions for the agent]
   
   ## Workflow
   [Agent workflow steps]
   ```

2. **Verify Content Completeness**
   - Include detailed instructions and capabilities
   - Add specific examples and constraints
   - Reference the source agent properly

3. **Test with Simple Commands**
   Start with basic commands like:
   ```
   /prompt-engineer-v2 help me understand your capabilities
   ```

## Performance Issues

### Slow Prompt Loading

**Problem**: Long delay when typing `/` in VS Code Chat.

**Solutions**:

1. **Reduce Prompt Locations**
   - Limit `chat.promptFilesLocations` to essential directories
   - Remove unused or empty directories

2. **Optimize Prompt Files**
   - Keep prompt files under 10KB for best performance
   - Remove unnecessary content or verbose examples

3. **Check System Resources**
   - Ensure adequate RAM and CPU for VS Code
   - Close unnecessary extensions or applications

### VS Code Becoming Unresponsive

**Problem**: VS Code freezes when using prompt files.

**Solutions**:

1. **Check File Sizes**
   ```bash
   # Find large prompt files
   find sdk-vscode/agents -name "*.prompt.md" -size +10k
   ```

2. **Reduce Concurrent Operations**
   - Don't edit prompt files while using them
   - Close other resource-intensive VS Code features

3. **Update VS Code**
   - Ensure you're using VS Code 1.85.0 or later
   - Update to the latest stable version

## Synchronization Issues

### Prompt Files Out of Sync with Source Agents

**Problem**: SDK agents don't reflect changes in source agent files.

**Solutions**:

1. **Manual Update Process**
   ```bash
   # Check for changes in source agents
   git diff agents/
   
   # Update corresponding SDK prompt files manually
   # or use automation scripts when available
   ```

2. **Implement Update Workflow**
   - Create a process to regularly sync SDK with source agents
   - Use version numbers to track synchronization
   - Document changes in both locations

3. **Use Source References**
   Always include source agent references in SDK prompt files:
   ```markdown
   ---
   **Source Agent**: `/agents/development/frontend-engineer.md`
   **Version**: 1.0
   **Last Updated**: {{ current_date }}
   ```

## Team Collaboration Issues

### Inconsistent Agent Behavior Across Team

**Problem**: Same agent behaves differently for different team members.

**Solutions**:

1. **Standardize VS Code Settings**
   - Use workspace settings (`.vscode/settings.json`)
   - Commit settings to version control
   - Document setup process for team

2. **Version Control Prompt Files**
   - Keep prompt files in version control
   - Use same OpenAgentBuilder SDK version across team
   - Document any custom modifications

3. **Regular Sync Process**
   - Establish process for updating prompt files
   - Communicate changes to team
   - Use semantic versioning for custom modifications

### Permission Issues in Shared Repositories

**Problem**: Team members can't access or modify prompt files.

**Solutions**:

1. **Check Repository Permissions**
   - Ensure all team members have repository access
   - Verify file permissions in the repository

2. **Use Standard Locations**
   - Place prompt files in `.github/prompts/` for standard GitHub integration
   - Use consistent folder structure across projects

## Error Messages

### "No prompt files found"

**Solutions**:
1. Check `chat.promptFilesLocations` paths
2. Verify `.prompt.md` files exist in specified directories
3. Reload VS Code window

### "Invalid prompt file format"

**Solutions**:
1. Verify markdown syntax in prompt files
2. Check for required headers and structure
3. Remove any invalid characters or formatting

### "Copilot not available"

**Solutions**:
1. Verify GitHub Copilot subscription
2. Check Copilot extension installation and activation
3. Sign in to GitHub Copilot

## Getting Help

### Self-Diagnosis Steps

1. **Check Basic Requirements**
   - [ ] VS Code 1.85.0+
   - [ ] GitHub Copilot extension installed
   - [ ] `chat.promptFiles` enabled
   - [ ] Prompt files in correct locations

2. **Test with Minimal Setup**
   - Create a simple test prompt file
   - Use basic VS Code settings
   - Test with a single agent

3. **Review Logs**
   - Open VS Code Developer Console (Help → Toggle Developer Tools)
   - Look for errors related to prompt files or Copilot

### Reporting Issues

When creating an issue, include:

1. **Environment Information**
   - VS Code version
   - GitHub Copilot extension version
   - Operating system
   - OpenAgentBuilder SDK version

2. **Configuration Details**
   - VS Code settings (sanitized)
   - Directory structure
   - Prompt file content (if relevant)

3. **Reproduction Steps**
   - Exact steps to reproduce the issue
   - Expected vs. actual behavior
   - Error messages or screenshots

### Additional Resources

- [VS Code Copilot Documentation](https://code.visualstudio.com/docs/copilot)
- [OpenAgentBuilder Configuration Guide](../CONFIGURATION.md)
- [OpenAgentBuilder Setup Guide](setup-guide.md)
- [GitHub Issues](https://github.com/your-org/OpenAgentBuilder/issues)
