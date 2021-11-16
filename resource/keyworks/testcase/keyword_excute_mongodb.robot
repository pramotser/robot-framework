*** Settings ***
Resource    ../../import.robot

*** Keywords ***
Test Insert Data
    ${data}   Get Data From File JSON   ${robot.dir.datas}/TestDataExecuteMongo/TestConnectCosmosDB.json
    &{collection_member}   Get Connection Member
    ${results}   Insert data in mongo   ${collection_member}   ${data}
    Verify result insert success   ${results}

# Test Find Data By ID
#     ${data}   Get Data From File JSON   ${robot.dir.datas}/TestDataExecuteMongo/TestConnectCosmosDB.json
#     &{collection_afsTransaction}   Get Connection Member
#     ${results}   Find data in mongo with ID   ${collection_afsTransaction}    ${data['_id']}
#     Should Be Equal   ${results['receiptNo']}   ${data['receiptNo']}

# Test Find Data By fillter
#     ${data}   Get Data From File JSON   ${robot.dir.datas}/TestDataExecuteMongo/TestConnectCosmosDB.json
#     &{dictionary}   Create Dictionary   imei=IMEI-TEST-INSERT
#     &{collection_afsTransaction}   Get Connection Member
#     ${results}    Find data in mongo with dictionary   ${collection_afsTransaction}   ${dictionary}
#     Verify the ID searched with Filter   ${results}   ${data['_id']}

# Test Update Data
#     ${data}   Get Data From File JSON   ${robot.dir.datas}/TestDataExecuteMongo/TestConnectCosmosDB.json
#     &{data_update}   Create Dictionary   imei=IMEI-TEST-UPDATE
#     &{collection_afsTransaction}   Get Connection Member
#     ${results}    Update data in mongo with ID    ${collection_afsTransaction}    ${data['_id']}   ${data_update}
#     Verify result update success   ${results}

# Test Delete Data By ID
#     ${data}   Get Data From File JSON   ${robot.dir.datas}/TestDataExecuteMongo/TestConnectCosmosDB.json
#     &{collection_afsTransaction}   Get Connection Member
#     ${results}    Delete data in mongo with ID    ${collection_afsTransaction}    ${data['_id']}
#     Verify result delete success   ${results}

# Verify the ID searched with Filter
#     [Arguments]   ${results}   ${ID}
#     FOR    ${result}    IN    @{results}
#         Should Be Equal   ${result["_id"]}     ${ID}
#     END