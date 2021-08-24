*** Settings ***
Resource                  _Settings.robot
Resource                  _Keywords.robot
Resource                  _Variables.robot


    

*** Keywords ***
Prepare Json data
    ${data_json}     Get Data From JSON File   ./data/data.json
    [Return]   ${data_json} 

Prepare Connection AFSWarehouse MongoDb By Collection
    [Arguments]   ${COLLECTION}
    ${CREATE_CONNECTION_MONGODB}   Create Connection MongoDb   ${CS_COSMOS}   ${DB_AFSWarehouse}   ${COLLECTION}
    [Return]   ${CREATE_CONNECTION_MONGODB}

Test Insert Data in MongoDb
    ${data_json}   Prepare Json data
    ${CREATE_CONNECTION_MONGODB}   Prepare Connection AFSWarehouse MongoDb By Collection   ${CL_Afs_transaction} 
    ${MSG_INSERT}      Insert Data MongoDb   ${CREATE_CONNECTION_MONGODB}    ${data_json}
    Should Be Equal    ${MSG_INSERT}    INSERTED SUCCESS
    [Teardown]   Delete Data By ID MongoDb   ${CREATE_CONNECTION_MONGODB}   ${data_json['_id']}

Test Find Data By ID MongoDb 
   ${dict}     Prepare Json data
   ${CREATE_CONNECTION_MONGODB}   Prepare Connection AFSWarehouse MongoDb By Collection   ${CL_Afs_transaction} 
   ${MSG_INSERT}      Insert Data MongoDb   ${CREATE_CONNECTION_MONGODB}    ${dict}
   Should Be Equal    ${MSG_INSERT}    INSERTED SUCCESS
   ${results}   Find Data By ID MongoDb   ${CREATE_CONNECTION_MONGODB}   ${dict['_id']}
   Should Be Equal   ${results}   ${dict}
   [Teardown]   Delete Data By ID MongoDb   ${CREATE_CONNECTION_MONGODB}   ${dict['_id']}


Test Cases Update Data MongoDb
   ${data_json}     Prepare Json data
   ${CREATE_CONNECTION_MONGODB}   Prepare Connection AFSWarehouse MongoDb By Collection   ${CL_Afs_transaction} 
   ${MSG_INSERT}      Insert Data MongoDb   ${CREATE_CONNECTION_MONGODB}    ${data_json}
   Should Be Equal    ${MSG_INSERT}    INSERTED SUCCESS
   Set To Dictionary   ${data_json}   createBy=test
   ${MSG_UPDATE}      Update Data By ID MongoDb   ${CREATE_CONNECTION_MONGODB}    ${data_json['_id']}      ${data_json}
   Should Be Equal    ${MSG_UPDATE}    UPDATED SUCCESS
   [Teardown]   Delete Data By ID MongoDb   ${CREATE_CONNECTION_MONGODB}   ${data_json['_id']}


Test Cases Delete Data By ID MongoDb
   ${data_json}     Prepare Json data
   ${CREATE_CONNECTION_MONGODB}   Prepare Connection AFSWarehouse MongoDb By Collection   ${CL_Afs_transaction} 
   ${MSG_INSERT}      Insert Data MongoDb   ${CREATE_CONNECTION_MONGODB}    ${data_json}
   Should Be Equal    ${MSG_INSERT}    INSERTED SUCCESS
   ${MSG_DELETE}     Delete Data By ID MongoDb    ${CREATE_CONNECTION_MONGODB}    ${data_json['_id']}
   Should Be Equal    ${MSG_DELETE}    DELETED SUCCESS

Test Cases Find data by field MongoDb
    ${data_json}   Prepare Json data
    ${CREATE_CONNECTION_MONGODB}   Prepare Connection AFSWarehouse MongoDb By Collection   ${CL_Afs_transaction} 
    ${MSG_INSERT}      Insert Data MongoDb   ${CREATE_CONNECTION_MONGODB}    ${data_json}
    Should Be Equal    ${MSG_INSERT}    INSERTED SUCCESS
    ${key}   Get Dictionary Keys   ${data_json}
    ${FILLTER}     Create Dictionary    ${key[8]}=${data_json['${key[8]}']}
    ${RESULTS}     Find data by Dictionary   ${CREATE_CONNECTION_MONGODB}   ${FILLTER}
    Should Not Be Empty   ${RESULTS}
    [Teardown]   Delete Data By ID MongoDb   ${CREATE_CONNECTION_MONGODB}   ${data_json['_id']}