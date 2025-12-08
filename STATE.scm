;; STATE.scm - Persistent AI Conversation State Checkpoint
;; Project: robot-repo-bot
;; Format: Guile Scheme (homoiconic, human-readable)

(define state
  '((metadata
     (format-version . "2.0")
     (schema-version . "2025-12-06")
     (created-at . "2025-12-08T00:00:00Z")
     (last-updated . "2025-12-08T00:00:00Z")
     (generator . "Claude/STATE-system"))

    ;;=========================================================================
    ;; CURRENT POSITION
    ;;=========================================================================
    ;; Status: GREENFIELD - Empty repository, no code yet
    ;; The project exists only as a concept and this state file.

    (focus
     (current-project . "robot-repo-bot")
     (current-phase . "inception")
     (completion-overall . 0)
     (deadline . #f)
     (blocking-projects . ()))

    ;;=========================================================================
    ;; PROJECT DEFINITION (What we know so far)
    ;;=========================================================================
    (project
     (name . "robot-repo-bot")
     (status . "in-progress")
     (completion . 0)
     (category . "automation/devops")
     (phase . "inception")
     (description . "A bot for automating repository operations (specifics TBD)")
     (dependencies . ())
     (blockers . ("requirements-undefined" "architecture-not-designed"))
     (notes . "Repository is empty. Awaiting user input on core purpose and features."))

    ;;=========================================================================
    ;; ROUTE TO MVP v1
    ;;=========================================================================
    ;; This roadmap assumes a typical repo automation bot. Adjust based on answers to questions below.

    (mvp-v1-roadmap
     (goal . "Minimal working bot that performs core repository automation")

     (phase-1-discovery
      (status . "in-progress")
      (tasks . (
        "Define core purpose and use case"
        "Identify target platforms (GitHub, GitLab, Gitea, etc.)"
        "Determine trigger mechanism (webhooks, polling, CLI, scheduled)"
        "Choose tech stack"
        "Document MVP feature set")))

     (phase-2-foundation
      (status . "pending")
      (tasks . (
        "Initialize project structure"
        "Set up development environment"
        "Implement authentication/authorization"
        "Create basic configuration system"
        "Set up CI/CD pipeline")))

     (phase-3-core-features
      (status . "pending")
      (tasks . (
        "Implement primary bot action(s)"
        "Add event handling/webhook processing"
        "Create logging and observability"
        "Error handling and retry logic")))

     (phase-4-mvp-polish
      (status . "pending")
      (tasks . (
        "Documentation (README, usage guide)"
        "Basic tests"
        "Deployment configuration"
        "User acceptance testing"))))

    ;;=========================================================================
    ;; ISSUES / BLOCKERS
    ;;=========================================================================
    (issues
     (critical
      ((id . "ISSUE-001")
       (title . "Requirements undefined")
       (description . "No specification exists for what the bot should do")
       (status . "open")
       (blocks . ("all-development")))

      ((id . "ISSUE-002")
       (title . "Tech stack not chosen")
       (description . "Language, framework, and hosting platform not decided")
       (status . "open")
       (blocks . ("phase-2-foundation"))))

     (non-critical
      ((id . "ISSUE-003")
       (title . "No CI/CD configured")
       (description . "Will need pipeline once code exists")
       (status . "deferred")))))

    ;;=========================================================================
    ;; QUESTIONS FOR USER
    ;;=========================================================================
    ;; These must be answered before meaningful development can begin.

    (questions-for-user
     (high-priority
      (
       (q1 . "What is the primary purpose of robot-repo-bot? (e.g., auto-labeling issues, PR automation, code review bot, dependency updates, etc.)")

       (q2 . "Which git platform(s) should it support? (GitHub, GitLab, Gitea, Bitbucket, all?)")

       (q3 . "What triggers the bot? (webhooks, scheduled cron, CLI command, GitHub Actions, etc.)")

       (q4 . "What language/tech stack preference? (TypeScript/Node, Python, Rust, Go, etc.)")

       (q5 . "Where will this be deployed? (GitHub Actions, self-hosted server, cloud function, container?)")))

     (medium-priority
      (
       (q6 . "Should this be open source or private?")

       (q7 . "Any existing bots or tools this should integrate with or replace?")

       (q8 . "What authentication method? (GitHub App, Personal Access Token, OAuth?)")

       (q9 . "Are there specific repos this will operate on, or should it be configurable?")))

     (nice-to-know
      (
       (q10 . "Any preference on configuration format? (YAML, TOML, JSON, environment variables?)")

       (q11 . "Monitoring/alerting requirements? (logs to stdout, Prometheus metrics, Sentry?)")

       (q12 . "Expected scale? (single repo, org-wide, multi-tenant?)"))))

    ;;=========================================================================
    ;; LONG-TERM ROADMAP (Post-MVP)
    ;;=========================================================================
    (long-term-roadmap
     (vision . "A robust, extensible repository automation platform")

     (v1-0-mvp
      (target . "TBD after requirements defined")
      (features . ("Core bot functionality" "Single platform support" "Basic configuration")))

     (v1-5-stability
      (features . (
        "Comprehensive test suite"
        "Production-grade error handling"
        "Detailed logging and metrics"
        "Documentation and examples")))

     (v2-0-extensibility
      (features . (
        "Plugin/extension system"
        "Multi-platform support"
        "Custom action definitions"
        "Web dashboard (optional)")))

     (v3-0-scale
      (features . (
        "Multi-tenant support"
        "Rate limiting and queuing"
        "Distributed processing"
        "Enterprise features")))

     (future-possibilities
      (ideas . (
        "AI-powered PR reviews"
        "Automated dependency updates"
        "Security scanning integration"
        "Custom workflow builder"
        "Slack/Discord notifications"
        "Analytics and insights dashboard"))))

    ;;=========================================================================
    ;; CRITICAL NEXT ACTIONS
    ;;=========================================================================
    (critical-next
     ("Answer the high-priority questions in questions-for-user section"
      "Define MVP feature set based on answers"
      "Choose tech stack"
      "Create initial project structure"
      "Write README with project vision"))

    ;;=========================================================================
    ;; SESSION ARTIFACTS
    ;;=========================================================================
    (files-created-this-session
     ("STATE.scm"))

    (files-modified-this-session ())

    (context-notes . "Initial STATE.scm created for empty robot-repo-bot repository. Awaiting user input to define project scope and begin implementation.")))

;; End of STATE.scm
