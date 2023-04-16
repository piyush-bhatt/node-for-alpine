# Node.js for Alpine (node-alpine)

Feature to install node.js, nvm and yarn to alpine dev container

## Example Usage

```json
"features": {
    "piyush-bhatt/node-alpine:1": {
        "nodeVersion": "latest"
    }
}
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| nodeVersion | Select or enter Node.js version to install | string | lts |
| nvmVersion | Enter NVM version to install | string | 0.39.3 |
| yarnVersion | Select or enter yarn version to install | string | latest |
