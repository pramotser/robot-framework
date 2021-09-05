# *** Settings ***
# Resource    ../Resources/import.robot

# *** Keywords ***

# #  Start Keywords for Database
# Create Connection MongoDb
#    [Arguments]   ${connection_string}   ${database_name}   ${collection}
#    &{Create_Connection_MongoDb}=   Create Dictionary   connection=${connection_string}   database=${database_name}   collection=${collection}
#    [return]   ${Create_Connection_MongoDb}

# Get Data From JSON File  
#    [Arguments]   ${FILENAME}
#    ${FILE}    Get File    ${FILENAME}
#    ${DICT}    Evaluate    json.loads('''${FILE}''')    json
#    [Return]   ${DICT}

# Insert Data MongoDb
#    [Arguments]   ${CONNECTION_MONGODB}   ${DATA}
#    ${MSG}      InsertOne   ${CONNECTION_MONGODB}    ${DATA}
#    [return]   ${MSG}

# Find Data By ID MongoDb
#    [Arguments]   ${CONNECTION_MONGODB}   ${ID}
#    ${RESUILT}   FindOneByID   ${CONNECTION_MONGODB}   ${ID}
#    [return]   ${RESUILT}

# Update Data By ID MongoDb
#    [Arguments]   ${CONNECTION_MONGODB}   ${ID}   ${DATA}
#    ${MSG}      Update   ${CONNECTION_MONGODB}    ${ID}      ${DATA}
#    [return]   ${MSG}

# Delete Data By ID MongoDb
#    [Arguments]   ${CONNECTION_MONGODB}   ${ID}
#    ${MSG}     DeleteOneByID    ${CONNECTION_MONGODB}    ${ID}
#    [return]   ${MSG}


# Find data by Dictionary
#     [Arguments]   ${CONNECTION_MONGODB}   ${DICTIONARY}
#     ${RESULTS}     Find    ${CONNECTION_MONGODB}    ${DICTIONARY}
#     [return]   ${RESULTS}

# #  End Keywords for Database