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
