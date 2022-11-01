*** Settings ***
Library    SeleniumLibrary
Library    Collections
Resource   GitHubVariables.robot
*** Keywords ***

Open GitHub page
    Set Screenshot directory   Screenshots
    Open Browser  https://github.com/login   browser=chrome
Login to GitHub account
#    wait until element is visible   //div[@class='d-lg-flex flex-items-center px-3 px-lg-0 mb-3 mb-lg-0 text-center text-lg-left']/a[contains(.,'Sign up')]
#    click element   //div[@class='d-lg-flex flex-items-center px-3 px-lg-0 mb-3 mb-lg-0 text-center text-lg-left']/a[contains(.,'Sign up')]
#    wait until element is visible  //a[contains(.,'Sign in →')]
#    click element  //a[contains(.,'Sign in →')]
    wait until element is visible  ${login}
    click element   ${login}
    input text   //input[@id='login_field']  ${Email}
    click element  id:password
    input password  id:password  ${password}
    click element  //input[@name='commit']
Create new private repository
    wait until element is visible  ${repository}
    click element  ${repository}
    wait until element is visible  id:repository_name
    click element  id:repository_name
    input text  id:repository_name      ${Git Hub test1}
    click element   id:repository_visibility_private
    scroll element into view  //button[@class='btn-primary btn']
    click element  //button[@class='btn-primary btn']
Verify that created repository is in list of repositories
    wait until element is visible  //a[.='petrskultety']
    click element  //details[@class='details-overlay details-reset js-feature-preview-indicator-container']/summary[@class='Header-link']
    wait until element is visible  //a[.='Your repositories']
    click element  //a[.='Your repositories']
    input text  id:your-repos-filter  ${Git Hub test1}
    wait until element is visible  ${Git Hub test1}
    click element
Verify that created repository is not visible when not logged in
Change repository from previous test to public
Verify that the repository is visible when not logged in
Delete the repository
Verify that the repository is deleted