# Git Configuration for Dev Containers

Configure Git in dev containers with your GitHub user information.

## 🚀 Quick Start

The dev container is already configured to automatically set up Git when created.
Change your Git user name, email, and login by modifying the `devcontainer.json` file or using environment variables.
Simply rebuild your container:

```bash
# In VS Code Command Palette (Ctrl/Cmd + Shift + P)
> Dev Containers: Rebuild Container
```

## 📋 Approach

## 🎯 DevContainer.json Configuration

### With Environment Variables
```jsonc
{
  "name": "Dev Container with Git Env",
  "image": "mcr.microsoft.com/devcontainers/universal:2-linux",
  "containerEnv": {
    "GIT_USER_NAME": "John Doe",
    "GIT_USER_EMAIL": "john.doe@example.com",
    "GIT_USER_LOGIN": "johndoe"
  },
  "postCreateCommand": ".devcontainer/setup-git-env.sh"
}
```

## 📁 File Structure

```
.devcontainer/
├── devcontainer.json           # Main dev container configuration
├── setup-git-env.sh          # Environment variable-based setup  
└── README.md                  # This documentation
```

## 🌟 Benefits

- **Automatic Setup**: No manual configuration needed
- **GitHub Integration**: Uses real GitHub account information
- **Consistent Environment**: Same Git setup across all containers
- **VS Code Integration**: Configured to work seamlessly with VS Code
- **Security**: Uses GitHub CLI authentication (more secure than tokens)
- **Flexibility**: Multiple approaches for different use cases

## 🔗 References

- [Dev Containers Specification](https://containers.dev/)
- [GitHub CLI Documentation](https://cli.github.com/)
- [Git Configuration Documentation](https://git-scm.com/docs/git-config)
- [VS Code Dev Containers](https://code.visualstudio.com/docs/devcontainers/containers)
