#!/bin/bash
set -ex

# Setup required environment variables. TEST_URL should be set by CNP
export E2E_FRONTEND_URL=${TEST_URL}
export E2E_FRONTEND_NODE_ENV=${E2E_FRONTEND_NODE_ENV:-"production"}
export IDAM_API_URL=${IDAM_API_URL:-"https://preprod-idamapi.reform.hmcts.net:3511"}
export COURT_PHONENUMBER=${COURT_PHONENUMBER:-"0300 303 0642"}
export COURT_OPENINGHOURS=${COURT_OPENINGHOURS:-"Monday to Friday, 8.30am to 5pm"}
export COURT_EMAIL=${COURT_EMAIL:-"divorce@justice.gov.uk"}
export E2E_WAIT_FOR_TIMEOUT_VALUE=${E2E_WAIT_FOR_TIMEOUT_VALUE:-15000}
export E2E_WAIT_FOR_ACTION_VALUE=${E2E_WAIT_FOR_ACTION_VALUE:-250}
export CODECEPT_PARAMS=${CODECEPT_PARAMS:-""}

yarn test-e2e ${CODECEPT_PARAMS}