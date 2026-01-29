# ClickHouse Cloud-Like

Local ClickHouse environment using Docker Compose, configured to closely resemble ClickHouse Cloud for learning and experimentation.

## Requirements

- Docker
- Docker Compose v2+

## Quick Start

```bash
make up        # Start server
make connect   # Connect with clickhouse-client
```

## Cloud-Like Features

| Feature | Config File |
|---------|-------------|
| ZSTD compression (level 3) | `config/storage.xml` |
| JSON logging format | `config/logging.xml` |
| Query/Part/Thread logs | `config/logging.xml` |
| Async inserts enabled | `users/cloud-settings.xml` |
| `date_time_input_format` = best_effort * | `users/cloud-settings.xml` |
| Lightweight deletes | `users/experimental-settings.xml` |
| `default_role` with Cloud permissions | `initdb/01_default_role.sql` |
| `sql_console:admin` user | `initdb/03_admin_user.sql` |

_* Required for ClickHouse Academy labs_

## Commands

```bash
make help           # Show all commands
make up             # Start server (detached)
make down           # Stop server
make restart        # Restart server
make logs           # Follow server logs
make connect        # Connect as default user
make connect-admin  # Connect as sql_console:admin
make status         # Show container status
make clean          # Stop and delete all data ⚠️
```

## What This Is

- ✅ Local development environment
- ✅ Learning and experimentation
- ✅ Testing Cloud-like behavior locally

## What This Is NOT

- ❌ Production-ready deployment
- ❌ Exact replica of ClickHouse Cloud internals
- ❌ Replacement for ClickHouse Cloud
