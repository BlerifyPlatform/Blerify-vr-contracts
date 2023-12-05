# Deployment Guide

## Deploying a contract example:

```sh
 yarn hardhat run --network lacchain scripts/deployExample.ts
```

Output:

```sh
Using Base Relay Address: 0xa4B5eE2906090ce2cDbf5dfff944db26f397037D
migrations Instance successfully deployed at address: 0xE74B710bCC51fE2B290b8653F9754125f39e4Dd3
```

## Deploying available contracts:

```sh
 yarn hardhat run --network lacchain scripts/deployVerificationRegistryGM.ts # deploys Credential Registry Smart Contract with Gas Model
```
