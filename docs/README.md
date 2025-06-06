# OpenAgentBuilder Documentation

Welcome to the unified documentation directory for OpenAgentBuilder. This directory consolidates all documentation, guides, examples, and the website source into a single, organized location.

## Structure

### `/website/` - Documentation Website
- **Astro Starlight** source for the main documentation website
- **Deployment**: Automated deployment to production
- **Content**: Generated from repository content and manual curation

### `/guides/` - User Guides and Tutorials  
- **Getting Started**: Quick start guides for new users
- **Development**: Agent development and customization guides
- **Integration**: Platform integration and deployment guides
- **Best Practices**: Proven patterns and methodologies

### `/examples/` - Usage Examples and Showcases
- **Real-world Examples**: Production use cases and implementations
- **Template Gallery**: Reusable templates and patterns
- **Interactive Demos**: Hands-on examples and tutorials
- **Video Content**: Video tutorials and walkthroughs

### `/api/` - API Reference Documentation
- **Agent Specifications**: Formal agent interface documentation
- **Integration APIs**: Platform-specific integration references  
- **Tool Documentation**: Development tool and utility references
- **Schema Definitions**: Data models and validation schemas

### `/internal-dev/` - Development Documentation
- **Architecture**: System architecture and design decisions
- **Contributing**: Development guidelines and processes
- **Release Notes**: Version history and change documentation
- **Research**: Research findings and development insights

## Documentation Website

The documentation website is built with **Astro Starlight** and automatically deployed from this directory. Key features:

- **Fast Performance**: Sub-2 second load times
- **Interactive Examples**: Live code samples and demonstrations
- **Advanced Search**: Comprehensive search with filtering
- **Mobile Optimized**: Responsive design for all devices
- **Community Features**: Integrated discussion and contribution workflows

## Contributing to Documentation

1. **Content Updates**: Update markdown files in appropriate directories
2. **Website Changes**: Modify content in `/website/src/content/`
3. **Examples**: Add new examples to `/examples/` with proper documentation
4. **API Changes**: Update API documentation in `/api/` when agents change

## Development Setup

To work with the documentation website locally:

```bash
cd documentation/website
npm install
npm run dev
```

## Content Management

- **Automated Sync**: Repository content automatically syncs to website
- **Manual Curation**: Editorial content managed in `/website/src/content/`
- **Quality Review**: All content reviewed by Doc Writer Agent
- **Version Control**: All documentation version controlled with main repository

---
**Maintained by**: Doc Writer Agent  
**Last Updated**: June 6, 2025  
**Website**: [OpenAgentBuilder Documentation](https://docs.openagentbuilder.dev)
