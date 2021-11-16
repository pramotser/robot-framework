*** Keywords ***
Convert Bytes To String
    [Arguments]   ${BYTES}
    ${String} =	Decode Bytes To String	${BYTES}	UTF-8
    [Return]   ${String}

Convert JSON String To Dictionary
    [Arguments]   ${String}
    ${Dict}    Evaluate    json.loads('''${String}''')    json
    [Return]   ${Dict}

Get Data From File JSON
   [Arguments]   ${filename}
   ${file}    Get File    ${filename}
   ${qa}    Evaluate    json.loads('''${file}''')    json
   [return]   ${qa}
 
Get Key From File JSON
   [Arguments]   ${filename}   ${key}
   ${result}    Get Data From File JSON    ${filename}
   [return]     ${result['${key}']}


Load YAML into Robot and edit it
    [Arguments]   ${directoryfile}
    ${YAML}=     Get File     ${directoryfile}
    ${LOADED}=     yaml.Safe Load     ${YAML}
    [return]   ${LOADED}