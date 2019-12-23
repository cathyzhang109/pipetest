*** Settings ***
Library       SeleniumLibrary
Library     Collections
*** Keywords ***
登录
    [Arguments]     ${name}     ${password}
#    open browser    http://localhost/mgr/ps/mgr/index.html#/     chrome
#    set browser implicit wait  4
    go to   http://localhost/mgr/login/login.html
    input text      id=username  ${name}
    input text      id=password   ${password}
    click element     xpath=//*[@type="button"]
添加课程
    [Arguments]     ${coursename}       ${desc}     ${display_idx}
    click element    css=[ng-click="showAddOne=true"]
    input text    css=[ng-model="addData.name"]      ${coursename}
    input text     css=[ng-model="addData.desc"]      ${desc}
    input text      css=[ng-model="addData.display_idx"]       ${display_idx}
    click element    css=[ng-click="addOne()"]
校验课程名称是否正确
    [Arguments]     @{name}
    ${eles}=        get webelements     css=[total-items="totalNum"] td:nth-child(2)
    ${lessons}=     create list
    :FOR    ${ele}      IN      @{eles}
    \       log      ${ele.text}

    \       Append To List      ${lessons}  ${ele.text}
    LOG       ${lessons}
    ${expected}=    create list    @{name}
    Lists Should Be Equal   ${expected}    ${lessons}

删除所有课程

    登录      auto        sdfsdfsdf
    set browser implicit wait  4

    FOR     ${one}    IN RANGE    9999
          ${eles}=     get webelements    css=[ng-click="delOne(one)"]
         exit for loop if      $eles==[]
         click element    ${eles[0]}     #@{eles}[0]
         click element    xpath=//*[@class="btn btn-primary"]
          sleep  1
    END
    set browser implicit wait  10
#    close browser
upwebset
    OPEN BROWSER    http://www.baidu.com    chrome
    set browser implicit wait  10
downwebset
    close browser