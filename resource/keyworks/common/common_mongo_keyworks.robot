*** Keywords ***
Create connectionString
    [Arguments]   ${connectionString}   ${database}   ${collection}
    &{MONGODB_CONNECT_AFTER_SALE}   Create Dictionary   connection=${connectionString}   database=${database}   collection=${collection}
    [return]   ${MONGODB_CONNECT_AFTER_SALE}

Get Connection Member
    ${Connection_member}   Create connectionString   ${db.connectionString}   ${db.database}   ${db.collection.member}
    [return]   ${Connection_member}
    
Insert data in mongo
    [Arguments]   ${connectionString}   ${data} 
    ${results}   InsertOne   ${connectionString}   ${data}
    [return]   ${results}

Find data in mongo with ID
    [Arguments]   ${connectionString}   ${id} 
    ${results}   FindOneByID   ${connectionString}    ${id}
    [return]   ${results}

Find data in mongo with dictionary
    [Arguments]   ${connectionString}   ${dictionary} 
    ${results}   Find   ${connectionString}   ${dictionary}
    [return]   ${results}

Update data in mongo with ID
    [Arguments]   ${connectionString}   ${id}   ${data_update}
    ${results}   Update   ${connectionString}   ${id}   ${data_update}
    [return]   ${results}

Delete data in mongo with ID
    [Arguments]   ${connectionString}   ${id}
    ${results}   DeleteOneByID   ${connectionString}   ${id}
    [return]   ${results}

Verify result insert success
    [Arguments]   ${result}
    Should Be Equal   ${result}   INSERTED SUCCESS

Verify result update success
    [Arguments]   ${result}
    Should Be Equal   ${result}   UPDATED SUCCESS

Verify result delete success
    [Arguments]   ${result}
    Should Be Equal   ${result}   DELETED SUCCESS