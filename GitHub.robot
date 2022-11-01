*** Settings ***
Documentation    ...   Task 1
                 ...   1.	Login to GitHub account
                 ...   2.	Create new private repository
                 ...   3.	Verify that created repository is in list of repositories
                 ...   4.	Verify that created repository is not visible when not logged in
                 ...   Task 2
                 ...   1. Change repository from previous test to public
                 ...   2. Verify that the repository is visible when not logged in
                 ...   Task 3
                 ...   1. Delete the repository
                 ...   2. Verify that the repository is deleted


Resource   GitHubKeywords.robot

Library    SeleniumLibrary
Library    Collections

Test Setup  Open GitHub page
Test Teardown   Close all browsers

*** Test Cases ***

GitHub
    Open GitHub page
    Login to GitHub account
    Create new private repository
    Verify that created repository is in list of repositories
    Verify that created repository is not visible when not logged in
    Change repository from previous test to public
    Verify that the repository is visible when not logged in
    Delete the repository
    Verify that the repository is deleted
