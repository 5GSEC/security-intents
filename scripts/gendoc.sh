#!/usr/bin/env bash

INTENTS_DIR=intents
THREATS_DIR=threats
HDR_MD=res/header.md
FTR_MD=res/footer.md
MD="README.md"

prerequisites(){
  if [ ! `command -v yq` ]; then
    echo "Please install yq https://github.com/mikefarah/yq#install"
    exit 1
  fi
  if [ ! `command -v jq` ]; then
    echo "Please install jq https://github.com/jqlang/jq#installation"
    exit 1
  fi
}

writeThreatTemplateFile() {
  cat >>$MD <<EOF

## Security Threat Template
EOF
  echo '```yaml' >>${MD}
  cat res/threatTemplate.yaml >>${MD}
  echo '```' >>${MD}
}

extractRefs(){
  if [[ "$1" == "" ]]; then
       printf "invalid use of extractRefs"
       exit 1
  fi
  REFERENCES=""
  # https://stackoverflow.com/a/62899715
  while IFS=$'\t' read -r name url; do
      ref="[$name]($url)"
      if [[ $ref == "[]()" ]];then
        continue
      fi
      REFERENCES="$ref, $REFERENCES"
  done < <(yq e '.references[] | [.name, .url] | @tsv' $1)
  # Remove trailing comma and space
  REFERENCES="${REFERENCES%, }"
  echo $REFERENCES
}

extractSis(){
  if [[ "$1" == "" ]]; then
       printf "invalid use of extractRefs"
       exit 1
  fi
  SIsPath=""
  intents="$(yq e -o=j '.securityIntents' $1 | jq -r '.[]')"
  for intent in $intents; do
    intentPath=$(echo "[$intent]($INTENTS_DIR/$intent)")
    SIsPath="$intentPath, $SIsPath"
  done
  # Remove trailing comma and space
  SIsPath="${SIsPath%, }"
  echo $SIsPath
}

setThreatEntries() {
  for file in $(find $1 -name '*.y*ml' -type f | sort); do
    TITLE=$(yq '.title' $file)
    DESCRIPTION=$(yq '.description' $file)
    SEVERITY=$(yq '.severity' $file)
    REFERENCES=$(extractRefs $file)
    SIS_PATH=$(extractSis $file)
    if [[ $SEVERITY == "null" ]]; then
      SEVERITY=""
    fi
   cat >>${MD} <<EOF
   | [$TITLE]($file) | $DESCRIPTION | $SEVERITY | $SIS_PATH |$REFERENCES |
EOF
  done;
}

forEveryThreat() {
   if [[ "$1" == "" ]]; then
     printf "invalid use of forEveryThreat"
     exit 1
   fi
   if [[ -d $THREATS_DIR ]]; then
     while read dir; do
       $1 $dir
     done < <(find $THREATS_DIR -mindepth 1 -maxdepth 1 -type d | sort)
   fi
}

main() {
  cat >$MD <<EOF
<!-- THIS IS AN AUTO-GENERATED FILE by $0. DO NOT EDIT MANUALLY -->

$(cat $HDR_MD)
EOF
  writeThreatTemplateFile
  cat >> ${MD} <<EOF

## Security Threats

| Title | Description | Severity | Security Intents | References |
|:-----:|-------------|----------|------------|------------|
EOF
  forEveryThreat setThreatEntries
  cat >>"$MD" <<EOF

$(cat $FTR_MD)
EOF
}

prerequisites
main
