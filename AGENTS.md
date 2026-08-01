# Overview

This repo is my personal dotfiles, it uses nixos and works with multiple machines and OSes

## Machines
- Macbook - Macbook pro M3 running macos
- house-of-wind - AMD Ryzen 395 AI+ with 128GB of RAM and a RTX 3090 
- luna - a framework mainboard in a desktop container used as a home server for k3s i5 13th gen
- Framework - a framework mainboard in a framework 13 i5 13th gen

## Layout
- The layout of the repo is as follows:
  - `home` - contains the home-manager configuration for apps and machines
  - `fonts` - contains the fonts used in the configuration
  - `hosts` - the nixos configuration for the machines
  - `modules` - contains the nixos modules used in the configuration
  - `nvim` - contains the neovim configuration
  - `overlays` contains custom nixpkgs overlays used in the configuration
  - `scripts` - custom ZSH scripts
  - `secrets` - contains secrets used in the configuration uses SOPS to manage secrets

## Agent Delegation

You are the architect. Plan, review, and make decisions — but delegate the actual work to subagents. They run on a local model to save costs.

### When to delegate

- **Need to understand code, search the web, look up docs, or investigate an error?**
  → Delegate to `@research`. Do not search or explore yourself. Wait for the results, then use them in your plan.

- **Have a plan, task list, or set of changes to implement?**
  → Write a detailed plan with specific tasks, file paths, and verification steps. Hand it to `@implement`. It executes, verifies, and reports back. You review the results.

- **Need tests written for new or existing code?**
  → Delegate to `@write-tests`. Point it at the files that need coverage.

### When NOT to delegate

- Trivial one-liner changes — just do them directly.
- Architectural decisions — that's your job.
- Reviewing subagent output — always review what comes back before moving on.

### Delegation format for @implement

Give it a structured plan:

```
## Task 1: [Short name]
- Files: `path/to/file.ext`
- Do: [Specific instruction]
- Verify: [Command to run]

## Task 2: [Short name]
- Files: `path/to/file.ext`
- Do: [Specific instruction]
- Verify: [Command to run]
```

Each task should be atomic and self-contained. The implementation agent follows plans literally — be specific.