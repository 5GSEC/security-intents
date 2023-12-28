#!/usr/bin/env bash

INTENTS_DIR=res/intents
HDR_MD=$(dirname $0)/header.md
FTR_MD=$(dirname $0)/footer.md
MD="README.md"

statusLine() {
  ORANGE="\033[0;33m"
  RED="\033[0;31m"
  GREEN="\033[0;32m"
  NC="\033[0m" # No Color

  status=$1
  shift
  [[ $status == AOK ]] || [[ $status == "0" ]] &&
    {
      printf "[${GREEN}OK${NC}] $*\n"
      return
    }
  [[ $status == WARN ]] &&
    {
      printf "[${ORANGE}WARN${NC}] $*\n"
      return
    }
  printf "[${RED}FAIL${NC}] $*\n"
  exit 1
}

cleanup() {
  if [[ -f intent ]]; then
    . intent
    rm -f intent $SI_FILE $SIB_FILE
    statusLine AOK "done with processing"
  fi
}

copyContents() {
  [[ -f intent ]] && {
    . intent
    mkdir -p $INTENTS_DIR/$TITLE
    cp intent $SI_FILE $SIB_FILE $INTENTS_DIR/$TITLE
  }
}

addCommonEntries() {
  CUR_INTENT_DIR=$INTENTS_DIR/$TITLE
  cat >>${MD} <<EOF
  | [$TITLE]($CUR_INTENT_DIR) | $DESCRIPTION | $SEVERITY | $THREAT_ID | $DETECTION_METHODS | $MITIGATION_METHODS | [file]($CUR_INTENT_DIR/$SI_FILE) | [file]($CUR_INTENT_DIR/$SIB_FILE) | $PRE_DEPLOYMENT_CONSIDERATIONS | $REFERENCES |
EOF
}

forEveryIntent() {
  [[ "$1" == "" ]] && statusLine ERR "invalid use of forEveryIntent"
  if [[ -d $INTENTS_DIR ]]; then
    while read dir; do
      . $dir/intent
      $1
    done < <(find $INTENTS_DIR -mindepth 1 -maxdepth 1 -type d | sort)
  fi
}

main() {
  cat >$MD <<EOF
<!-- THIS IS AN AUTO-GENERATED FILE by $0. DO NOT EDIT MANUALLY -->

$(cat $HDR_MD)

## Security Intents
| Title | Description | Severity | O-RAN Threat ID | Detection Methods | Mitigation Methods | Security Intent | Security Intent Binding | Pre-Deployment considerations | References |
|:-----:|-------------|----------|-----------------|-------------------|--------------------|-----------------|-------------------------|-------------------------------|------------|
EOF
  copyContents
  forEveryIntent addCommonEntries
  cat >>"$MD" <<EOF

$(cat $FTR_MD)
EOF
  cleanup
}

main
