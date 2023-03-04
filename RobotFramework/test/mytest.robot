*** Setting ***
Library    SeleniumLibrary
Library    OperatingSystem

Suite Setup    Log    This is suite setup test
Suite Teardown    Log     This is suite teardown  
Test Setup    Log    This test setup     
Test Teardown    Log    This test teardown    
  
Default Tags    sanity

*** Test Cases ***
MyFirstTest
    Log     Hellworld...
FristSeleniumTest
        
    Create Webdriver     Chrome     executable_path=/Users/daoduydung/Documents/driver/chromedriver.exe
    Open Browser        https://google.com    Chrome
    Set Browser Implicit Wait    5
    Input Text    name=q    Automation step by step  
    Press Keys    name=q     ENTER
    #Click Button    name=btnK    
    Sleep    2     
    Close Browser
    Log    Test complete    
    
SampleTestLogin
    Open Browser     ${URL}     Chrome
    Set Browser Implicit Wait    10
    LoginFunc
    Click Element    class:oxd-topbar-header-userarea
    Click Element    link=Logout
    Close Browser
    Log            Test compelted
    Log            This test was execute by dung on MacOS
    
*** Variables ***
${URL}       https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
@{infologin}     Admin    admin123
&{datalogin}    username=Admin    password=admin123 

*** Keywords ***
LoginFunc
    Input Text    name=username    ${infologin}[0]
    Input Text    name=password   ${datalogin}[password]
    Click Button    tag:button
                      