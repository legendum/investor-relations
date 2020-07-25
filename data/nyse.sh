#!/bin/bash

PAGE=$1
if [[ -z $PAGE ]] ; then
    echo "usage $0 <page>"
    exit
fi

curl -v -X POST https://www.nyse.com/api/quotes/filter \
     --header "content-type: application/json" \
     --data "{\"instrumentType\": \"EQUITY\", \"filterToken\": \"\", \"pageNumber\": $PAGE, \"maxResultsPerPage\": 200, \"sortColumn\": \"NORMALIZED_TICKER\", \"sortOrder\": \"ASC\" }"
