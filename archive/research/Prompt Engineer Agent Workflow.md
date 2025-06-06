# Prompt Engineer Agent Workflow

This document outlines the detailed workflow steps that the Prompt Engineer agent should follow when creating prompts for other agents in the software factory team. Each step includes specific actions, inputs, outputs, and validation criteria.

## 1. ASK Phase

### Purpose
Gather comprehensive requirements and clarify expectations for the prompt to be created.

### Actions
1. **Identify Target Agent**: Determine which agent role the prompt is being created for
2. **Gather Requirements**: Collect information about the agent's purpose, responsibilities, and expected outputs
3. **Clarify Context**: Understand how the agent fits within the broader software factory ecosystem
4. **Define Scope**: Establish boundaries for what the prompt should and should not cover
5. **Identify Stakeholders**: Determine who will use or be affected by the prompt
6. **Establish Success Criteria**: Define how the effectiveness of the prompt will be measured

### Inputs
- Agent role specification
- Project requirements documentation
- Stakeholder interviews or feedback
- Existing prompt examples (if available)
- System architecture documentation

### Outputs
- Requirements document for the prompt
- Success criteria document
- Scope definition document
- Context map showing agent interactions

### Validation Criteria
- All stakeholder questions have been addressed
- Requirements are specific, measurable, achievable, relevant, and time-bound
- Success criteria are clearly defined and measurable
- Scope boundaries are explicitly stated

## 2. PLAN Phase

### Purpose
Develop a structured approach for creating the prompt, ensuring all requirements are addressed.

### Actions
1. **Outline Prompt Structure**: Define the major sections and components of the prompt
2. **Identify Key Information**: Determine what information must be included in each section
3. **Establish Terminology**: Define key terms and concepts to ensure consistency
4. **Create Information Hierarchy**: Organize information in order of importance
5. **Develop Validation Strategy**: Plan how the prompt will be tested and validated
6. **Establish Timeline**: Create a schedule for prompt development and review

### Inputs
- Requirements document from ASK phase
- Prompt engineering best practices
- Template library (if available)
- Success criteria document

### Outputs
- Prompt outline document
- Terminology glossary
- Validation plan
- Development timeline

### Validation Criteria
- Outline covers all requirements
- Structure follows prompt engineering best practices
- Terminology is consistent and clearly defined
- Validation plan addresses all success criteria

## 3. EXECUTE Phase

### Purpose
Create the prompt according to the plan, ensuring clarity, specificity, and actionability.

### Actions
1. **Draft Prompt Sections**: Write each section of the prompt according to the outline
2. **Implement Workflow Steps**: Ensure the prompt guides the target agent through their workflow
3. **Define Inputs and Outputs**: Clearly specify what the agent should receive and produce
4. **Establish Constraints**: Define limitations and boundaries for the agent
5. **Provide Examples**: Include examples of expected behavior and outputs
6. **Add Context**: Ensure the prompt includes necessary background information

### Inputs
- Prompt outline from PLAN phase
- Terminology glossary
- Requirements document
- Example outputs (if available)

### Outputs
- Draft prompt in markdown format
- Example scenarios and outputs
- Reference documentation

### Validation Criteria
- Prompt follows the planned structure
- All requirements are addressed
- Language is clear and unambiguous
- Examples illustrate expected behavior
- Workflow steps are clearly defined

## 4. DEBUG Phase

### Purpose
Identify and resolve issues in the prompt to ensure it functions as intended.

### Actions
1. **Review for Clarity**: Ensure all instructions are clear and unambiguous
2. **Check for Completeness**: Verify that all requirements are addressed
3. **Identify Edge Cases**: Consider unusual scenarios and how the prompt handles them
4. **Test with Scenarios**: Apply the prompt to various scenarios to identify issues
5. **Resolve Ambiguities**: Clarify any vague or confusing instructions
6. **Address Contradictions**: Resolve any conflicting guidance within the prompt

### Inputs
- Draft prompt from EXECUTE phase
- Requirements document
- Success criteria
- Test scenarios

### Outputs
- Issue log documenting identified problems
- Revised prompt addressing identified issues
- Edge case handling documentation

### Validation Criteria
- All identified issues are resolved
- Prompt handles edge cases appropriately
- No contradictions or ambiguities remain
- Instructions are clear and actionable

## 5. REVIEW Phase

### Purpose
Evaluate the prompt's effectiveness and gather feedback for improvement.

### Actions
1. **Self-Review**: Critically evaluate the prompt against requirements and success criteria
2. **Peer Review**: Obtain feedback from other prompt engineers or stakeholders
3. **Simulate Agent Behavior**: Predict how the target agent would respond to the prompt
4. **Compare to Success Criteria**: Evaluate the prompt against established success metrics
5. **Identify Improvement Areas**: Note aspects of the prompt that could be enhanced
6. **Prioritize Changes**: Determine which improvements are most critical

### Inputs
- Revised prompt from DEBUG phase
- Success criteria
- Feedback from stakeholders
- Simulation results

### Outputs
- Review report documenting findings
- Prioritized list of improvements
- Final prompt revision
- Performance evaluation against success criteria

### Validation Criteria
- Prompt meets all success criteria
- Stakeholder feedback has been addressed
- Simulation indicates prompt will produce expected results
- Improvements have been implemented based on priority

## 6. DOCUMENT Phase

### Purpose
Create comprehensive documentation for the prompt to ensure it can be understood, used, and maintained effectively.

### Actions
1. **Document Design Decisions**: Explain the rationale behind key prompt design choices
2. **Create Usage Guidelines**: Provide instructions for how to use and modify the prompt
3. **Establish Version Control**: Set up a system for tracking prompt versions and changes
4. **Create Maintenance Plan**: Define how the prompt should be updated and maintained
5. **Compile Reference Materials**: Gather relevant resources and references
6. **Prepare Handover Documentation**: Create materials for transferring prompt ownership

### Inputs
- Final prompt revision from REVIEW phase
- Design notes and decisions
- Review report
- Requirements and success criteria documents

### Outputs
- Prompt documentation package
- Usage guidelines
- Maintenance documentation
- Version history
- Reference library

### Validation Criteria
- Documentation is comprehensive and clear
- Usage guidelines are actionable
- Version control system is established
- Maintenance responsibilities are clearly defined
- All reference materials are included and organized

## Workflow Diagram

```
┌─────────┐     ┌─────────┐     ┌─────────┐     ┌─────────┐     ┌─────────┐     ┌─────────┐
│   ASK   │────▶│  PLAN   │────▶│ EXECUTE │────▶│  DEBUG  │────▶│ REVIEW  │────▶│DOCUMENT │
└─────────┘     └─────────┘     └─────────┘     └─────────┘     └─────────┘     └─────────┘
     ▲                                                                               │
     └───────────────────────────────────────────────────────────────────────────────┘
                                  Continuous Improvement
```

## Iteration and Continuous Improvement

The workflow is designed to be iterative. Based on feedback and performance metrics, the Prompt Engineer should be prepared to revisit earlier phases to refine and improve the prompt. This continuous improvement cycle ensures prompts evolve to meet changing requirements and incorporate new best practices.

### Iteration Triggers
- Feedback from target agent performance
- Changes in project requirements
- Discovery of new edge cases
- Identification of ambiguities in practice
- Advances in prompt engineering techniques

When an iteration trigger occurs, the Prompt Engineer should determine which phase to return to and proceed through the subsequent phases again, carrying forward the knowledge and improvements from previous iterations.
