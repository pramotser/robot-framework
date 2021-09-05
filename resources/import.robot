*** Settings ***
# Library   RobotMongoDBLibrary.Find
# Library   RobotMongoDBLibrary.Delete
# Library   RobotMongoDBLibrary.Insert
# Library   RobotMongoDBLibrary.Update

Library           RobotMongoDBLibrary
Library      Collections

# Library      json
# Library      SeleniumLibrary
# Library      OperatingSystem
# Resource     _Variables.robot


Variables         ../resources/configs/${ENV}/config.yaml


*** Variables ***
${ENV}   dev