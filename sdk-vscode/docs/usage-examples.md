# Usage Examples

Real-world scenarios demonstrating how to use OpenAgentBuilder agents in VS Code.

## Scenario 1: New Project Setup

**Goal**: Set up a new full-stack project with proper architecture and testing.

### Step 1: Project Planning
```
/product-owner I need to create a task management application for small teams. Help me define the requirements and user stories.
```

**Expected Response**: The Product Owner agent will help you:
- Define core user stories and acceptance criteria
- Identify key features and priorities
- Create a product backlog structure

### Step 2: Technical Architecture
```
/master-software-engineer Based on these requirements: [paste requirements], help me design the technical architecture for a React + Node.js application.
```

**Expected Response**: The Master Software Engineer will:
- Recommend technology stack and patterns
- Design system architecture
- Plan testing strategy and quality gates

### Step 3: Implementation Planning
```
/project-manager Help me create a development plan for this project with the following requirements: [paste requirements] and architecture: [paste architecture plan]
```

## Scenario 2: Feature Development

**Goal**: Implement a new user authentication feature.

### Step 1: Backend Development
```
/backend-engineer I need to implement JWT-based authentication for a Node.js Express API. Include comprehensive testing and security best practices.
```

**Follow-up prompts**:
```
/backend-engineer Create database schema for user management with password hashing
/backend-engineer Set up middleware for JWT token validation
/backend-engineer Write comprehensive tests for the authentication endpoints
```

### Step 2: Frontend Implementation
```
/frontend-engineer Create a React login/signup component that integrates with our JWT authentication API. Include form validation and error handling.
```

**Follow-up prompts**:
```
/frontend-engineer Add loading states and user feedback for authentication flows
/frontend-engineer Create a protected route component that checks authentication status
/frontend-engineer Write unit tests for the authentication components
```

### Step 3: Quality Assurance
```
/quality-assurance-engineer Help me create a comprehensive testing strategy for the authentication feature, including unit, integration, and security tests.
```

## Scenario 3: Code Review and Refactoring

**Goal**: Improve code quality and fix technical debt.

### Step 1: Code Analysis
```
/master-software-engineer Review this code for potential improvements:

[paste your code]

Focus on architecture, performance, and maintainability.
```

### Step 2: Refactoring Assistance
```
/frontend-engineer Help me refactor this React component to use hooks and improve performance:

[paste component code]
```

### Step 3: Testing Strategy
```
/quality-assurance-engineer This code currently has low test coverage. Help me create a testing strategy and write comprehensive tests:

[paste code to test]
```

## Scenario 4: Agent Development

**Goal**: Create a new custom agent for your specific domain.

### Step 1: Agent Design
```
/prompt-engineer-v2 I need to create a new agent for DevOps and infrastructure management. Help me design the agent structure, capabilities, and workflow.

Requirements:
- Focus on CI/CD pipeline management
- Include infrastructure as code
- Support for monitoring and alerting
- Integration with cloud platforms
```

### Step 2: Agent Refinement
```
/prompt-engineer-v2 Refactor this agent prompt to improve clarity and add TDD principles:

[paste your draft agent]
```

### Step 3: Documentation
```
/doc-writer Create comprehensive documentation for this new DevOps agent, including usage examples and integration guidelines:

[paste finalized agent]
```

## Scenario 5: Requirements Analysis

**Goal**: Transform vague business requirements into clear, testable specifications.

### Step 1: Requirements Gathering
```
/system-analyst Help me analyze these business requirements and create detailed technical specifications:

"We need a reporting system that shows business metrics and can export data."

Include user stories, acceptance criteria, and testability assessment.
```

### Step 2: User Story Creation
```
/product-owner Based on these technical specifications: [paste specs], help me create well-defined user stories with acceptance criteria and priority ranking.
```

### Step 3: Technical Validation
```
/master-software-engineer Review these requirements and user stories for technical feasibility:

[paste user stories]

Identify potential challenges and recommend solutions.
```

## Scenario 6: Agile Process Improvement

**Goal**: Improve team collaboration and development processes.

### Step 1: Process Assessment
```
/scrum-master Our team is struggling with sprint planning and delivery consistency. Help me analyze our current process and identify improvement opportunities.

Current challenges:
- Stories are often incomplete at sprint end
- Testing happens too late in the cycle
- Team members work in silos
```

### Step 2: TDD Implementation
```
/quality-assurance-engineer Help me create a plan to implement TDD practices across our development team. Include training strategies and gradual adoption approaches.
```

### Step 3: Team Coordination
```
/project-manager Create a coordination strategy that improves cross-team communication and reduces delivery risks for our multi-team project.
```

## Best Practices

### 1. Agent Sequencing
Use agents in logical order for complex tasks:
1. **Product Owner** → Requirements and user stories
2. **System Analyst** → Technical specifications
3. **Master Software Engineer** → Architecture design
4. **Frontend/Backend Engineers** → Implementation
5. **Quality Assurance Engineer** → Testing strategy
6. **Project Manager** → Coordination and delivery

### 2. Context Preservation
Include relevant context in follow-up prompts:
```
/frontend-engineer Continue working on the authentication component from our previous discussion. Now I need to add password reset functionality with the same security standards.
```

### 3. Iterative Refinement
Use agents iteratively to improve solutions:
```
/prompt-engineer-v2 Refine this agent prompt based on the feedback: [paste feedback]

Original prompt: [paste prompt]
```

### 4. Cross-Agent Validation
Use multiple agents to validate solutions:
```
/quality-assurance-engineer Review this architecture proposed by the Master Software Engineer and identify potential testing challenges:

[paste architecture]
```

## Common Workflows

### New Feature Workflow
1. `/product-owner` → Define requirements
2. `/system-analyst` → Create specifications
3. `/master-software-engineer` → Design architecture
4. `/frontend-engineer` or `/backend-engineer` → Implement
5. `/quality-assurance-engineer` → Test strategy
6. `/project-manager` → Coordinate delivery

### Bug Fix Workflow
1. `/quality-assurance-engineer` → Analyze issue
2. `/master-software-engineer` → Root cause analysis
3. Relevant engineer → Implement fix
4. `/quality-assurance-engineer` → Verify fix

### Code Review Workflow
1. `/master-software-engineer` → Architecture review
2. Relevant specialist → Implementation review
3. `/quality-assurance-engineer` → Testing review

## Tips for Effective Usage

1. **Be Specific**: Provide clear context and requirements
2. **Use Follow-ups**: Build on previous conversations
3. **Cross-reference**: Use multiple agents for different perspectives
4. **Include Code**: Share relevant code for better assistance
5. **Ask for Examples**: Request concrete code examples and implementations

## Troubleshooting Common Issues

### Agent Not Responding as Expected
- Ensure you're using the correct agent name (`/agent-name`)
- Provide more specific context and requirements
- Try rephrasing your request

### Multiple Agents for Same Task
- Use `/master-software-engineer` for high-level decisions
- Use specific engineers for implementation details
- Use `/orchestrator` for coordinating multiple agents

### Context Loss
- Include relevant previous context in new prompts
- Reference earlier conversations explicitly
- Use clear, descriptive language for your requirements
