Jenkins - build, test and deployment automation server

Ansible - more sofisticated deployment and server configuration framework

Vagrant - lightweight, reproducable and portable dev environments

Docker - software containerization platform

# Concepts
- source
- target
- fat package (with dependencies included)
- skinny package (with dependencies excluded)

Build system generates targets from sources.
Targets can serve as sources for other targets so that there are dependencies between the targets.
Dependencies graph between the targets define the build order (topological sort order).
To decrease build time there are rules for regeneration in response to change.

- http://semver.org/

# Build Tools
