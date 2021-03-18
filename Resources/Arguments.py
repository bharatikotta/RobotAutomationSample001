import requests
class Arguments:
    def read_xml(xml_file):
        url = "http://www.dneonline.com/calculator.asmx?WSDL"
        headers = {'content-type': 'text/xml'}
        xml_file = open('C:/Users/bharati.r.kotta/PycharmProjects/SOAPAutomation/Requests/Request_Calculator.xml', 'r')
        body = xml_file.read()
        response = requests.post(url, data=body.format(first_number=6, second_number=4), headers=headers)
        print(response.text)
        return response


