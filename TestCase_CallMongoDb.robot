*** Settings ***
Resource                  Keyworks_TestCallMonogoDb.robot


*** Test Cases ***
TC01 Test insert data in mongodb
    [Documentation]   will add data to mongodb and check that the response of the received message must be success.
    [Tags]   TC01
    Test Insert Data in MongoDb

TC02 Test Find Data By ID MongoDb 
    [Documentation]   will add data to mongodb to prepare data search after search data and verify that the search data must match the data added.
    [Tags]   TC02
    Test Find Data By ID MongoDb 

TC03 Test Cases Update Data By ID MongoDb
    [Documentation]   will add data to mongodb to prepare data update and check that the response of the received message must be success.
    [Tags]   TC03
    Test Cases Update Data MongoDb
    
TC04 Test Cases Delete Data By ID MongoDb
    [Documentation]   will add data to mongodb to prepare data update and check that the response of the received message must be success.
    [Tags]   TC04
    Test Cases Delete Data By ID MongoDb
    
TC05 Test Cases Find data by field MongoDb
    [Tags]   TC05
    [Documentation]   will add data to mongodb to prepare data search after search data by field and verify that the search data must match the data added.
    Test Cases Find data by field MongoDb