*** Settings ***
Resource  ../Resources/resources1.robot
#Resource        Resources.Arguments
*** Test Cases ***
#Test read
#  Create Soap Client    ${wsdl_calculator}
#  ${response}    Call SOAP Method With XML    C:/Users/bharati.r.kotta/PycharmProjects/SOAPAutomation/Requests/Request_Calculator.xml
#    ${result}    Get Data From XML By Tag    ${response}    AddResult
#    Log  ${result}
#   log to console ${result}
#  log to console ${response}
#  should be equal    8    ${result}

Test Call Soap Method Add
    Create Soap Client    ${wsdl_calculator}
    ${response}    Call SOAP Method    Add    ${first_number}    ${second_number}
    should be equal as integers    80    ${response}
    Log   ${response}

Test Call Soap Method Subtract
    Create Soap Client    ${wsdl_calculator}
    ${response}    Call SOAP Method    Subtract    ${first_number}    ${second_number}
    should be equal as integers    20    ${response}
    Log   ${response}
Test Call Soap Method Multiply
    Create Soap Client    ${wsdl_calculator}
    ${response}    Call SOAP Method    Multiply    ${first_number}    ${second_number}
    should be equal as integers    1500    ${response}
    Log   ${response}
Test Call Soap Method Divide
    Create Soap Client    ${wsdl_calculator}
    ${response}    Call SOAP Method    Divide    ${first_number}    ${second_number}
    should be equal as integers    2    ${response}
    Log   ${response}
