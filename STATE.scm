;;; STATE.scm — robot-repo-bot
;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell

(define metadata
  '((version . "0.1.0") (updated . "2025-12-17") (project . "robot-repo-bot")))

(define current-position
  '((phase . "v0.1 - Foundation Complete")
    (overall-completion . 40)
    (components
     ((rsr-compliance ((status . "complete") (completion . 100)))
      (security-ci ((status . "complete") (completion . 100)))
      (guix-channel ((status . "complete") (completion . 100)))
      (documentation ((status . "in-progress") (completion . 60)))
      (packages ((status . "pending") (completion . 0)))))))

(define blockers-and-issues
  '((critical ())
    (high-priority ())))

(define roadmap
  '((v0.1 "Foundation"
     ((status . "complete")
      (items . ("RSR compliance" "Security CI/CD" "Guix channel setup" "SCM metadata files"))))
    (v0.2 "Infrastructure Packages"
     ((status . "next")
      (items . ("Add Rust toolchain packages" "Add Deno runtime package"
                "Add Ada/SPARK toolchain" "Add ReScript compiler package"))))
    (v0.3 "Developer Tools"
     ((status . "planned")
      (items . ("LSP server packages" "Editor configurations" "Pre-commit hooks"
                "Development shell environments"))))
    (v0.4 "CI/CD Templates"
     ((status . "planned")
      (items . ("Reusable workflow templates" "Cross-platform build support"
                "Container image definitions" "Deployment automation"))))
    (v1.0 "Stable Release"
     ((status . "planned")
      (items . ("Full test coverage" "Documentation complete"
                "All RSR Gold requirements met" "Community contribution guidelines"))))))

(define critical-next-actions
  '((immediate
     (("Add first infrastructure package" . high)
      ("Complete CONTRIBUTING.adoc" . medium)))
    (this-week
     (("Set up Rust package definition" . high)
      ("Add Deno package definition" . medium)))))

(define session-history
  '((snapshots
     ((date . "2025-12-15") (session . "initial") (notes . "SCM files added"))
     ((date . "2025-12-17") (session . "security-review")
      (notes . "Fixed SECURITY.md, email consistency, updated roadmap")))))

(define state-summary
  '((project . "robot-repo-bot")
    (completion . 40)
    (blockers . 0)
    (next-milestone . "v0.2 Infrastructure Packages")
    (updated . "2025-12-17")))
