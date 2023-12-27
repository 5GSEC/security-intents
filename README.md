# Security Intents for Intent Driven Security

Repository to hold Security Intents in standard template format.

![](res/nimbus.png)

## Security Intents

The security intents listed out here are the basis on which threat mitigation is implemented.

- [Protect Asset](intents/core/protectAsset.yaml)
- [Protect Port](intents/core/protectPort.yaml)
- [Block Asset](intents/core/blockAsset.yaml)
- [Block Raw Sockets](intents/core/blockRawSockets.yaml)

## Security Intent Template

| Threat Scenario | (Scenario title) |
|:---------------:|------------------------|
| **Description** | (Detailed description of the scenario) |
| **Severity** | High/Medium/Low |
| **O-RAN Threat ID** | (mapping to Threat IDs defined in O-RAN WG11 Threat Model document) |
| **Detection Methods** | Mechanisms to detect the threat |
| **Mitigation Methods** | Mechanisms to mitigate the threat |
| **Security Intent** | YAML |
| **Security Intent Binding** | (Set of labels, annotations describing workloads who would be impacted by this threat) |
| **Pre-Deployment considerations** | (Anything that can be done in CI/CD pipelines that can alleviate this threat) |
| **References** | |
