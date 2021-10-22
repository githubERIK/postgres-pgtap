# postgres-pgtap

- ```bash
  docker build \
  --build-arg POSTGRES_VERSION=14-alpine3.14 \
  --build-arg PGTAP_VERSION=v1.1.0 \
  -t dockererik/postgres-pgtap:14-alpine3.14-1.1.0 .
  ```

- ```bash
  docker build \
  --build-arg POSTGRES_VERSION=13-alpine3.14 \
  --build-arg PGTAP_VERSION=v1.1.0 \
  -t dockererik/postgres-pgtap:13-alpine3.14-1.1.0 .
  ```
