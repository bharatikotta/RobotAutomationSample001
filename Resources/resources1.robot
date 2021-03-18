*** Settings ***
Library   SeleniumLibrary
Library  ScreenCapLibrary
Library  SoapLibrary
Library  ../Resources/Arguments.py
*** Variables ***
${Browser}  Chrome
${URL}  http://www.google.com
${requests_dir}                      ${CURDIR}${/}Requests
${wsdl_calculator}                   http://www.dneonline.com/calculator.asmx?wsdl
${first_number}  50
${second_number}  30
*** keywords ***
def read_xml(xml_file):
    url = "http://www.dneonline.com/calculator.asmx?WSDL"
    headers = {'content-type': 'text/xml'}
    xml_file = open('C:/Users/bharati.r.kotta/PycharmProjects/SOAPAutomation/Requests/Request_Calculator.xml', 'r')
    body = xml_file.read()
    response = requests.post(url, data=body.format(first_number=6, second_number=4), headers=headers)
    print(response.text)
    return parseString(response)

