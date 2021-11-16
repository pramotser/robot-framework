*** Settings ***
Resource    ../keywords/testcase/keyword_excute_mongodb.robot

*** Test Cases ***
Test insert data into mongodb
    [Documentation]   Insert Data Success
    Test Insert Data

Test find data by ID from mongodb
    [Documentation]   Can find data with ID from data inset in test case "Test insert data into mongodb"
    Test Find Data By ID

Test find by fillter data from mongodb
    [Documentation]   Can Find Data By fillter
    Test Find Data By fillter

Test update data imei into mongodb by ID
    [Documentation]   Can Update value from Test Case "Test insert data into mongodb"
    Test Update Data

Test delete data by ID into mongodb
    [Documentation]   Can Delete data with ID from data inset in test case "Test insert data into mongodb"
    Test Delete Data By ID
