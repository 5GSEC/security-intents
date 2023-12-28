<!-- THIS IS AN AUTO-GENERATED FILE by ./tools/gendoc.sh. DO NOT EDIT MANUALLY -->

# Security Intents for Intent Driven Security
![CI status](https://github.com/5GSEC/security-intents/actions/workflows/ci-verify.yml/badge.svg)

Repository to hold Security Intents in standard template format.

![](res/nimbus.png)

## Security Intents
  - [blockAsset](intents/core/blockAsset.yaml)
  - [protectPort](intents/core/protectPort.yaml)
  - [blockRawSocket](intents/core/blockRawSocket.yaml)
  - [protectAsset](intents/core/protectAsset.yaml)

## Security Threat Template
```
title:        # Scenario-title
description:  # Detailed description of the scenario
severity:     # High/Medium/Low
tags: [oran, 5gcore, generic, oranThreatId]
detectionMethods: #Mechanisms to detect the threat - https://fight.mitre.org/data%20sources
   - name: applicationlog
     tag: [mitre, ds0015]
     description: desc
     url: https://fight.mitre.org/data%20sources/DS0015
   - name: myapplicationlog
     tag: [accuknox, ax0015]
     description: desc
     url: https://...
mitigationMethods: #Mechanisms to mitigate the threat - https://fight.mitre.org/mitigations
   - name: applicationlog
     tag: [mitre, ds0015]
     description: desc
     url: https://fight.mitre.org/data%20sources/DS0015
   - name: myapplicationlog
     tag: [accuknox, ax0015]
     description: desc
     url: https://...
securityIntents:
  - sample-si-1   # no params for now
  - sample-si-2
securityIntentBinding: sample-si-binding.yaml
preDeploymentConsiderations: #Anything that can be done in CI/CD pipelines that can alleviate this threat
references:
  - name: ref1 
    url:
  - name: ref2
    url: 
```

## Security Threats
  - [threatPackageInstallation](threats/execution/threatPackageInstallation.yaml)
  - [threatTemplate](threats/threatTemplate.yaml)

## Contributions welcome...

### Adding a new Security Intent

1. Fork and clone this repository
2. Create `security-intent-name.yaml` and `security-intent-binding-name.yaml` files
3. Copy the `intent.example` file and update it accordingly
   ```shell
   cp intent.example intent
    ```
4. Run `make`
5. Raise a PR
