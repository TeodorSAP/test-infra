#!/bin/bash

readonly SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# shellcheck source=prow/scripts/lib/log.sh
source "${SCRIPT_DIR}/lib/log.sh"

log::banner "Validate reconciler's go.mod file"

# Configure dependencies
log::info "Configure dependencies"
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py
python2 get-pip.py
pip install semver==2.10

# Execute validation script
log::info "Execute validation script"
python2 ./scripts/validate-go-mod.py

# Test script exit code
if [[ $? -eq 0 ]];then
    log::success "Result: go.mod is VALID"
else
    log::error "Result: go.mod is INVALID or script execution failed (see log above)"
    exit 1
fi