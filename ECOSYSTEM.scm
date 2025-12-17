;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;; ECOSYSTEM.scm — robot-repo-bot

(ecosystem
  (version "1.0.0")
  (name "robot-repo-bot")
  (type "project")
  (purpose "Guix channel and repository infrastructure")

  (position-in-ecosystem
    "Part of hyperpolymath ecosystem. Follows RSR guidelines.")

  (related-projects
    (project (name "rhodium-standard-repositories")
             (url "https://github.com/hyperpolymath/rhodium-standard-repositories")
             (relationship "standard")))

  (what-this-is "Guix channel providing reproducible infrastructure packages")
  (what-this-is-not "- NOT exempt from RSR compliance"))
