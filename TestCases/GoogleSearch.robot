*** Settings ***
Library   SeleniumLibrary
Library  ScreenCapLibrary
Resource  ../Resources/resources1.robot
*** Variables ***
${Browser}  Chrome
${URL}  http://www.google.com
*** Test Cases ***
GoogleSearch Test
  ${Res}  Start Browser And Maximize   ${URL}   ${Browser}
  Log  ${Res}
  capture page screenshot  C:/Users/bharati.r.kotta/PycharmProjects/SOAPAutomation/Snapshots/TC4.png
  close all browsers