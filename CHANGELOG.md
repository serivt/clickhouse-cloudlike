# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/), and this project adheres to [Semantic Versioning](https://semver.org/).

## [0.1.0] - 2026-01-29

### Added
- Initial cloud-like ClickHouse setup
  - Docker Compose with official ClickHouse image
  - ZSTD compression (level 3)
  - JSON logging format
  - Query/Part/Thread logs enabled
  - Async inserts enabled
  - Lightweight deletes
- Roles and users system
  - `default_role` with Cloud-like permissions
  - `sql_console:admin` role for administration
  - Pre-configured admin user
- Makefile with helper commands
  - `make up/down/restart` - Server control
  - `make connect` - Connect as default user
  - `make connect-admin` - Connect as admin
  - `make logs/status/clean` - Utilities
- Playground workflow for quick SQL query execution
  - `make run` target that executes queries from `playground.sql`
  - `playground.sql` as local workspace for ad-hoc queries (gitignored)

### Documentation
- README.md with project documentation
- LICENSE file
