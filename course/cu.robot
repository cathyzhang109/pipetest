*** Settings ***
Library     SeleniumLibrary
#Library     deleteAllCourse
Library    Collections
Resource    ../rc5.robot
Suite Setup     upwebset
Suite Teardown      downwebset

*** Test Cases ***
验证添加课程1成功
    [Setup]     删除所有课程

    登录      auto        sdfsdfsdf
    sleep  1
    添加课程        小学语文        等级考试几点开始        1
    校验课程名称是否正确      小学语文

    sleep  2
    添加课程        小学数学        等级考试几点开始        1
    sleep  1
    校验课程名称是否正确         小学语文     小学数学
    close browser
    [Teardown]     log to console     \n结束

