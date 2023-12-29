#!/usr/bin/env bash

INTENTS_DIR=intents
THREATS_DIR=threats
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

writeIntents() {
  cat >>$MD <<EOF
## Security Intents
EOF
  if [[ -d $INTENTS_DIR ]]; then
    for i in $(find $INTENTS_DIR -name '*.yaml' | sort);
    do
      file=${i##*/}
      j=${file%.*}
      cat >>${MD} <<EOF
  - [$j]($i)
EOF
    done;
  fi
}

writeThreatTemplatFile() {
  cat >>$MD <<EOF
## Security Threat Template
EOF
  if [[ -f $THREATS_DIR/threatTemplate.yaml ]]; then
    echo '```' >>${MD}
    cat $THREATS_DIR/threatTemplate.yaml >>${MD}
    echo '```' >>${MD}
  fi
}

generateIntentFilesForThreats() {
  cat >>$MD <<EOF
## Security Threats
EOF
  if [[ -d $THREATS_DIR ]]; then
    for i in $(find $THREATS_DIR -name '*.yaml' | sort);
    do
      file=${i##*/}
      j=${file%.*}
      cat >>${MD} <<EOF
  - [$j]($i)
EOF
    done;
  fi
}

main() {
  cat >$MD <<EOF
<!-- THIS IS AN AUTO-GENERATED FILE by $0. DO NOT EDIT MANUALLY -->

$(cat $HDR_MD)
EOF
  echo "" >> $MD
  writeIntents
  echo "" >> $MD
  writeThreatTemplatFile
  echo "" >> $MD
  generateIntentFilesForThreats
  cat >>"$MD" <<EOF

$(cat $FTR_MD)
EOF
  cleanup
}

main
