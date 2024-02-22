# Verification Registry Smart Contracts

## Introduction

Verification Registry Smart Contracts allow any entity to leave a unique identifier (generated from any digital content) in the underlying EVM compatible network where an instance of the `verification registry` contract lives. Registering such identifier in a timestamped database (such as a blockchain network) takes relevance in many use cases (Finance, Legal, etc). Most of the implementations for such cases use [W3C Verifiable Credentials](https://www.w3.org/TR/vc-data-model-2.0/) and [W3C Decentralized Identifiers](https://www.w3.org/TR/did-core/) as the base protocols.

Verification Registry Smart Contracts are generic enough to be integrated with identity and verifiable credential protocols being consistent to what [W3C mention in that regard](https://www.w3.org/TR/did-core/#revocation-in-trustless-systems)

## Getting Started

- [Configuration Guide](docs/tech/configuration.md)
- [Deployment Guide](docs/tech/deployment.md)
- [Testing Guide](docs/tech/testing.md)
- [Additional Scripts](docs/tech/additionalscripts.md)

## Contracts

- [Verification Registry](docs/functional/verificationRegistry.md)
