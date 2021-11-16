*** Settings ***
Variables       ./config/config.yaml
Variables       ./testdata/common_datatest.yaml

Library         RobotMongoDBLibrary.Insert
Library         RobotMongoDBLibrary.Update
Library         RobotMongoDBLibrary.Find
Library         RobotMongoDBLibrary.Delete

Library         OperatingSystem
Library         Collections
Library         String
Library         RequestsLibrary
Library         SeleniumLibrary
Library         json
Library         yaml

Resource        ./keywords/common/common_keyworks.robot
Resource        ./keywords/common/common_mongo_keyworks.robot

