# VS Code SDK Configuration

## Overview
Configuration settings for the OpenAgentBuilder VS Code SDK Integration, enabling customization of discovery, synchronization, and performance parameters.

## Configuration Schema

### Discovery Configuration
```yaml
discovery:
  # Source directories to monitor for agents
  source_directories:
    core: "/agents/core/"
    development: "/agents/development/"
    management: "/agents/management/"
    specialized: "/agents/specialized/"
  
  # Target VS Code directories
  target_directories:
    core: "/sdk-vscode/agents/core/"
    development: "/sdk-vscode/agents/development/"
    management: "/sdk-vscode/agents/management/"
    specialized: "/sdk-vscode/agents/specialized/"
  
  # File patterns to monitor
  patterns:
    - "*.md"
    - "*/modules/*.md"
    - "*/tasks/*.md"
    - "*/checklists/*.md"
  
  # Files to exclude from monitoring
  exclude_patterns:
    - "*backup*"
    - "*.tmp"
    - "*.bak"
```

### Synchronization Configuration
```yaml
synchronization:
  # Synchronization frequency
  schedule:
    automatic: true
    interval: "1h"          # Hourly automatic sync
    full_sync: "24h"        # Daily full synchronization
  
  # Performance settings
  performance:
    max_concurrent: 5       # Maximum concurrent transformations
    timeout: 30             # Timeout in seconds
    retry_attempts: 3       # Number of retry attempts
    retry_delay: 2          # Delay between retries in seconds
  
  # Quality validation
  validation:
    enabled: true
    pre_sync: true          # Validate before synchronization
    post_sync: true         # Validate after synchronization
    performance_check: true # Check prompt loading performance
```

### Transformation Configuration
```yaml
transformation:
  # Agent conversion settings
  conversion:
    preserve_authorization: true    # Always preserve authorization protocols
    optimize_performance: true     # Optimize for VS Code performance
    include_memory_access: true    # Include memory integration capabilities
    maintain_integration: true     # Preserve integration points
  
  # Format optimization
  format:
    max_description_length: 2000   # Maximum description length
    include_examples: true         # Include usage examples
    compress_content: false        # Whether to compress content
    markdown_optimization: true    # Optimize markdown formatting
```

### Quality Assurance Configuration
```yaml
quality:
  # TDD Integration
  tdd:
    enabled: true
    validation_tests: true         # Run validation tests
    performance_tests: true       # Run performance tests
    integration_tests: true       # Run integration tests
  
  # Quality metrics
  metrics:
    accuracy_threshold: 99.9       # Minimum accuracy percentage
    completeness_threshold: 100    # Minimum completeness percentage
    performance_threshold: 2000    # Maximum load time in ms
    error_threshold: 0.1          # Maximum error rate percentage
  
  # Monitoring
  monitoring:
    enabled: true
    log_level: "INFO"             # DEBUG, INFO, WARN, ERROR
    audit_trail: true             # Maintain audit trail
    performance_logging: true     # Log performance metrics
```

### Memory Integration Configuration
```yaml
memory:
  # Institutional memory access
  access:
    development_sessions: true     # Access development session context
    pattern_library: true         # Access pattern library
    decision_logs: true           # Access decision logs
    quality_standards: true       # Access quality standards
  
  # Memory enhancement
  enhancement:
    context_gathering: true       # Enable context gathering
    pattern_recognition: true     # Enable pattern recognition
    decision_alignment: true      # Enable decision alignment
    knowledge_contribution: true  # Enable knowledge contribution
```

### Error Handling Configuration
```yaml
error_handling:
  # Recovery settings
  recovery:
    automatic_rollback: true      # Automatic rollback on failure
    backup_retention: 7           # Days to retain backups
    graceful_degradation: true    # Enable graceful degradation
  
  # Notification settings
  notifications:
    enabled: true
    email_alerts: false           # Email notifications
    log_alerts: true             # Log-based alerts
    dashboard_alerts: true        # Dashboard notifications
  
  # Error thresholds
  thresholds:
    warning_threshold: 1          # Warning after N errors
    critical_threshold: 5         # Critical alert after N errors
    shutdown_threshold: 10        # Shutdown after N errors
```

## Usage

### Default Configuration
The SDK ships with optimized default settings that work for most use cases:
- Automatic discovery and synchronization enabled
- High-quality transformation with performance optimization
- Comprehensive validation and error handling
- Full memory integration and TDD compliance

### Custom Configuration
Users can customize configuration by creating a `config.yaml` file:

```yaml
# Example custom configuration
discovery:
  patterns:
    - "*.md"
    - "custom-agents/*.md"

synchronization:
  schedule:
    interval: "30m"  # Sync every 30 minutes
  
quality:
  metrics:
    accuracy_threshold: 99.5  # Lower threshold for testing
```

### Environment Variables
Configuration can also be set via environment variables:

```bash
# Discovery settings
export SDK_DISCOVERY_INTERVAL="1h"
export SDK_DISCOVERY_PATTERNS="*.md,*/modules/*.md"

# Quality settings
export SDK_QUALITY_ACCURACY_THRESHOLD="99.9"
export SDK_QUALITY_TDD_ENABLED="true"

# Performance settings
export SDK_PERFORMANCE_MAX_CONCURRENT="5"
export SDK_PERFORMANCE_TIMEOUT="30"
```

### Runtime Configuration
Some settings can be modified at runtime through the SDK API:

```bash
# Update synchronization interval
sdk-config set synchronization.schedule.interval "2h"

# Enable debug logging
sdk-config set quality.monitoring.log_level "DEBUG"

# Force immediate synchronization
sdk-sync --immediate
```

## Validation

### Configuration Validation
The SDK validates all configuration settings on startup:
- Schema validation for all configuration sections
- Range validation for numeric parameters
- Path validation for directory settings
- Permission validation for file system access

### Performance Impact
Configuration settings are optimized for minimal performance impact:
- Lazy loading of configuration sections
- Caching of frequently accessed settings
- Efficient change detection for dynamic updates
- Background validation of configuration changes

---

**VS Code SDK Configuration**  
**Component**: OpenAgentBuilder VS Code SDK  
**Version**: 2.0.0  
**Last Updated**: 2025-06-06
