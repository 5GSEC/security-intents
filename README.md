<!-- THIS IS AN AUTO-GENERATED FILE by ./tools/gendoc.sh. DO NOT EDIT MANUALLY -->

# Security Intents for Intent Driven Security
![CI status](https://github.com/5GSEC/security-intents/actions/workflows/ci-verify.yml/badge.svg)

Repository to hold Security Intents in standard template format.

![](res/nimbus.png)

## Security Intent Template

|          Threat Scenario          | (Scenario title)                                                                       |
|:---------------------------------:|----------------------------------------------------------------------------------------|
|          **Description**          | (Detailed description of the scenario)                                                 |
|           **Severity**            | High/Medium/Low                                                                        |
|        **O-RAN Threat ID**        | (mapping to Threat IDs defined in O-RAN WG11 Threat Model document)                    |
|       **Detection Methods**       | Mechanisms to detect the threat                                                        |
|      **Mitigation Methods**       | Mechanisms to mitigate the threat                                                      |
|        **Security Intent**        | YAML                                                                                   |
|    **Security Intent Binding**    | (Set of labels, annotations describing workloads who would be impacted by this threat) |
| **Pre-Deployment considerations** | (Anything that can be done in CI/CD pipelines that can alleviate this threat)          |
|          **References**           |                                                                                        |

## Security Intents
  - [blockAsset](intents/core/blockAsset.yaml)
  - [protectPort](intents/core/protectPort.yaml)
  - [blockRawSocket](intents/core/blockRawSocket.yaml)
  - [protectAsset](intents/core/protectAsset.yaml)

## Security Threats
| Title | Description | Severity | O-RAN Threat ID | Detection Methods | Mitigation Methods | Security Intent | Security Intent Binding | Pre-Deployment considerations | References |
|:-----:|-------------|----------|-----------------|-------------------|--------------------|-----------------|-------------------------|-------------------------------|------------|


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
