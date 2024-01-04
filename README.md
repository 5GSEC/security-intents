<!-- THIS IS AN AUTO-GENERATED FILE by ./scripts/gendoc.sh. DO NOT EDIT MANUALLY -->

# Security Intents for Intent Driven Security

![CI status](https://github.com/5GSEC/security-intents/actions/workflows/ci-verify.yml/badge.svg)

Repository to hold Security Intents in standard template format.

![](res/nimbus.png)

## Security Threat Template
```yaml
title: Scenario-title
description: Detailed description of the scenario
severity: High/Medium/Low
tags:
  - oran
  - 5gcore
  - generic
detectionMethods: # Mechanisms to detect the threat
  - name: Application log
    tag:
      - mitre/ds0015
    description: Description # Optional
    url: https://...
  - name: Process
    tag:
      - accuknox/ax0015
    description: Description # Optional
    url: https://...
mitigationMethods: # Mechanisms to mitigate the threat
  - name: Update Software
    tag:
      - mitre/ds0015
    description: desc
    url: https://...
  - name: User Account Management
    tag:
      - accuknox/ax0015
    description: desc
    url: https://...
securityIntents:
  - sample-si-1.yaml
  - sample-si-2.yaml
securityIntentBinding: # Set of labels, annotations describing workloads who would be impacted by this threat
  - sample-si-binding.yaml
preDeploymentConsiderations: [ ] # Anything that can be done in CI/CD pipelines that can alleviate this threat
references:
  - name: ref1
    url: https://...
  - name: ref2
    url: https://...
```

## Security Threats

| Title | Description | Severity | Security Intents | References |
|:-----:|-------------|----------|------------|------------|

## Contributions welcome...

### Adding a new Security Threat

1. Fork and clone this repository
2. Copy `res/threatTemplate.yaml` template file in [threats](threats)/`tactic` directory and edit the file's contents to
   accurately reflect the specific threat information. For e.g., `execution` tactic from MITRE FiGHT.
   ```shell
   cp res/threatTemplate.yaml threats/execution/threat-name.yaml
    ```
3. Create the Security Intent file(s) you listed in the `.securityIntents` field of the `threat-name.yaml` file, and
   place them within the [intents](intents) directory. For e.g.,
   ```yaml
   ...
   securityIntents:
    - sample-si.yaml 
    - sample-si-2.yaml 
   ...
   ```
4. Run `make`
5. Raise a PR
