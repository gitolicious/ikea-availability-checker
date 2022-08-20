#!/bin/bash

# TODO make sure the script knows it’s WORKDIR
# WORKDIR="../";
# cd "${WORKDIR}";

# TODO add DEBUG option

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

# ERRORS=0
# SUCCESS=0

function smokeCountry() {
    countryCode="${1}"
    productCode="${2}"

    result=$(npm run start -s -- stock --plain --country "${countryCode}" "${productCode}");
    lines=$(echo "${result}" | wc -l)

    # TODO double check negative and positve
    if [[ $? -eq 0 ]]; then
        # TODO there are cases where the command runs sucessful but there
        #      are no results
        printf "  success: %b%s%b\n" "${GREEN}" "${countryCode} ${productCode}  ${lines}" "${NC}";
    else
        printf "    error: %b%s%b\n" "${RED}" "${countryCode}   ${productCode}" "${NC}";
        echo "${result}"
    fi
}

# IDEA create some kind of report which country is still working
# IDEA publish the report on github

CODE="80213074"

# TODO check with the countries
# BUG bug in spain request
smokeCountry es "${CODE}"
# smokeCountry at "${CODE}"
# smokeCountry au "${CODE}"
# smokeCountry ca "${CODE}"
# smokeCountry ch "${CODE}"
# smokeCountry be "${CODE}"
# smokeCountry cn "${CODE}"
# smokeCountry cz "${CODE}"
# smokeCountry de "${CODE}"
# smokeCountry dk "${CODE}"
# smokeCountry fr "${CODE}"
# smokeCountry gh "${CODE}"
# smokeCountry hk "${CODE}"
# smokeCountry hu "${CODE}"
# smokeCountry ie "${CODE}"
# smokeCountry it "${CODE}"
# smokeCountry jp "${CODE}"
# smokeCountry kr "${CODE}"
# smokeCountry nl "${CODE}"
# smokeCountry no "${CODE}"
# smokeCountry pl "${CODE}"
# smokeCountry ru "${CODE}"
# smokeCountry se "${CODE}"
# smokeCountry sg "${CODE}"
# smokeCountry sk "${CODE}"
# smokeCountry tw "${CODE}"
# smokeCountry us "${CODE}"
