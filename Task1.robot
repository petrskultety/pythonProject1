*** Settings ***
Documentation    porovnani velikosti cisel

Resource   TaskKeywords.robot

Library    SeleniumLibrary
Library    Collections
Documentation  Simple test scripts using basic features and keywords of RF

*** Test Cases ***

TestPass1
   Compare pass 1

TestPass2
   Compare pass 2

TestFail
   Compare task fail