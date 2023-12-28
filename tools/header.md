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


