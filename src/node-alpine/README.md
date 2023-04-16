
# Node.js for Alpine (node-alpine)

Installs Node.js (via nvm) and yarn to an alpine dev container

## Example Usage

```json
"features": {
    "ghcr.io/piyush-bhatt/node-for-alpine/node-alpine:1": {}
}
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| nodeVersion | Select or enter Node.js version to install | string | lts |
| nvmVersion | Enter NVM version to install | string | 0.39.3 |
| yarnVersion | Select or enter yarn version to install | string | latest |



---

_Note: This file was auto-generated from the [devcontainer-feature.json](https://github.com/piyush-bhatt/node-for-alpine/blob/main/src/node-alpine/devcontainer-feature.json).  Add additional notes to a `NOTES.md`._
