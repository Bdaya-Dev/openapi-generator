# coding: utf-8

"""
    Echo Server API

    Echo Server API  # noqa: E501

    The version of the OpenAPI document: 0.1.0
    Contact: team@openapitools.org
    Generated by: https://openapi-generator.tech
"""

from __future__ import absolute_import

import unittest
import datetime
import base64
import os

import openapi_client
from openapi_client.api.query_api import QueryApi # noqa: E501
from openapi_client.rest import ApiException

class TestManual(unittest.TestCase):
    """Manually written tests"""

    gif_base64 = "R0lGODlhAQABAIABAP///wAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="

    def setUpFiles(self):
        self.test_file_dir = os.path.join(os.path.dirname(__file__), "..", "testfiles")
        self.test_file_dir = os.path.realpath(self.test_file_dir)
        self.test_gif = os.path.join(self.test_file_dir, "test.gif")

    def setUp(self):
        self.setUpFiles()

    def tearDown(self):
        pass

    def testEnumRefString(self):
        api_instance = openapi_client.QueryApi()
        q = openapi_client.StringEnumRef("unclassified")

        # Test query parameter(s)
        api_response = api_instance.test_enum_ref_string(enum_ref_string_query=q)
        e = EchoServerResponseParser(api_response)
        self.assertEqual(e.path, "/query/enum_ref_string?enum_ref_string_query=unclassified")


    def testDateTimeQueryWithDateTimeFormat(self):
        api_instance = openapi_client.QueryApi()
        datetime_format_backup = api_instance.api_client.configuration.datetime_format # backup dateime_format
        api_instance.api_client.configuration.datetime_format = "%Y-%m-%d %a %H:%M:%S%Z"
        datetime_query = datetime.datetime.fromisoformat('2013-10-20T19:20:30-05:00') # datetime |  (optional)
        date_query = datetime.date(2013, 10, 20) # date |  (optional)
        string_query = 'string_query_example' # str |  (optional)

        # Test query parameter(s)
        api_response = api_instance.test_query_datetime_date_string(datetime_query=datetime_query, date_query=date_query, string_query=string_query)
        e = EchoServerResponseParser(api_response)
        self.assertEqual(e.path, "/query/datetime/date/string?datetime_query=2013-10-20%20Sun%2019%3A20%3A30UTC-05%3A00&date_query=2013-10-20&string_query=string_query_example")

        # restore datetime format
        api_instance.api_client.configuration.datetime_format = datetime_format_backup

    def testDateTimeQueryWithDateTime(self):
        api_instance = openapi_client.QueryApi()
        datetime_query = datetime.datetime.fromisoformat('2013-10-20T19:20:30-05:00') # datetime |  (optional)
        date_query = datetime.date(2013, 10, 20) # date |  (optional)
        string_query = 'string_query_example' # str |  (optional)
    
        # Test query parameter(s)
        api_response = api_instance.test_query_datetime_date_string(datetime_query=datetime_query, date_query=date_query, string_query=string_query)
        e = EchoServerResponseParser(api_response)
        self.assertEqual(e.path, "/query/datetime/date/string?datetime_query=2013-10-20T19%3A20%3A30.000000-0500&date_query=2013-10-20&string_query=string_query_example")

    def testBinaryGif(self):
        api_instance = openapi_client.BodyApi()

        # Test binary response
        api_response = api_instance.test_binary_gif()
        self.assertEqual((base64.b64encode(api_response)).decode("utf-8"), self.gif_base64)

    def testAdditionalPropertiesNotDefined(self):
        try:
            n = openapi_client.NumberPropertiesOnly.from_json('{"number": 123, "float": 456, "double": 34}')
        except ValueError as err:
            self.assertEqual("Error due to additional fields (not defined in NumberPropertiesOnly) in the input: float", str(err))

    def testApplicatinOctetStreamBinaryBodyParameter(self):
        api_instance = openapi_client.BodyApi()
        binary_body = base64.b64decode(self.gif_base64)
        api_response = api_instance.test_body_application_octetstream_binary(binary_body)
        e = EchoServerResponseParser(api_response)
        self.assertEqual(e.path, "/body/application/octetstream/binary")
        self.assertEqual(e.headers["Content-Type"], 'application/octet-stream')
        self.assertEqual(bytes(e.body, "utf-8"), b'GIF89a\x01\x00\x01\x00\xef\xbf\xbd\x01\x00\xef\xbf\xbd\xef\xbf\xbd\xef\xbf\xbd\x00\x00\x00!\xef\xbf\xbd\x04\x01\n\x00\x01\x00,\x00\x00\x00\x00\x01\x00\x01\x00\x00\x02\x02L\x01\x00;')

    def testApplicatinOctetStreamBinaryBodyParameterWithFile(self):
        api_instance = openapi_client.BodyApi()
        try:
            api_response = api_instance.test_body_application_octetstream_binary("invalid_file_path")
        except FileNotFoundError as err:
            self.assertEqual("[Errno 2] No such file or directory: 'invalid_file_path'", str(err))

        api_response = api_instance.test_body_application_octetstream_binary(self.test_gif)
        e = EchoServerResponseParser(api_response)
        self.assertEqual(e.path, "/body/application/octetstream/binary")
        self.assertEqual(e.headers["Content-Type"], 'application/octet-stream')
        self.assertEqual(bytes(e.body, "utf-8"), b'GIF89a\x01\x00\x01\x00\xef\xbf\xbd\x01\x00\xef\xbf\xbd\xef\xbf\xbd\xef\xbf\xbd\x00\x00\x00!\xef\xbf\xbd\x04\x01\n\x00\x01\x00,\x00\x00\x00\x00\x01\x00\x01\x00\x00\x02\x02L\x01\x00;')

    def testBodyParameter(self):
        n = openapi_client.Pet.from_dict({"name": "testing", "photoUrls": ["http://1", "http://2"]})
        api_instance = openapi_client.BodyApi()
        api_response = api_instance.test_echo_body_pet_response_string(n)
        self.assertEqual(api_response, "{'name': 'testing', 'photoUrls': ['http://1', 'http://2']}")

        t = openapi_client.Tag()
        api_response = api_instance.test_echo_body_tag_response_string(t)
        self.assertEqual(api_response, "{}") # assertion to ensure {} is sent in the body

        api_response = api_instance.test_echo_body_free_form_object_response_string({})
        self.assertEqual(api_response, "{}") # assertion to ensure {} is sent in the body

    def testAuthHttpBasic(self):
        api_instance = openapi_client.AuthApi()
        api_response = api_instance.test_auth_http_basic()
        e = EchoServerResponseParser(api_response)
        self.assertFalse("Authorization" in e.headers)

        api_instance.api_client.configuration.username = "test_username"
        api_instance.api_client.configuration.password = "test_password"
        api_response = api_instance.test_auth_http_basic()
        e = EchoServerResponseParser(api_response)
        self.assertTrue("Authorization" in e.headers)
        self.assertEqual(e.headers["Authorization"], "Basic dGVzdF91c2VybmFtZTp0ZXN0X3Bhc3N3b3Jk")

    # test from_json, to_json, to_dict, from_dict
    def test_from_to_methods(self):
        json_str = ("{\"category\": {\"id\": 1, \"name\": \"dog\"},\n"
                    " \"id\": 1,\n"
                    " \"name\": \"test name\",\n"
                    " \"photoUrls\": [\"string\"],\n"
                    " \"status\": \"available\",\n"
                    " \"tags\": [{\"id\": 1, \"name\": \"None\"}]}")
        pet = openapi_client.Pet.from_json(json_str)
        assert pet is not None
        self.assertEqual(pet.id, 1)
        self.assertEqual(pet.status, "available")
        self.assertEqual(pet.photo_urls, ["string"])
        assert pet.tags is not None
        self.assertEqual(pet.tags[0].id, 1)
        self.assertEqual(pet.tags[0].name, "None")
        assert pet.category is not None
        self.assertEqual(pet.category.id, 1)
        # test to_json
        self.assertEqual(pet.to_json(),
                         '{"id": 1, "name": "test name", "category": {"id": 1, "name": "dog"}, "photoUrls": ['
                         '"string"], "tags": [{"id": 1, "name": "None"}], "status": "available"}')

        # test to_dict
        self.assertEqual(pet.to_dict(),
                         {"id": 1, "name": "test name", "category": {"id": 1, "name": "dog"}, "photoUrls": ["string"],
                          "tags": [{"id": 1, "name": "None"}], "status": "available"})

        # test from_dict
        pet2 = openapi_client.Pet.from_dict(pet.to_dict())
        assert pet2 is not None
        self.assertEqual(pet2.id, 1)
        self.assertEqual(pet2.status, "available")
        self.assertEqual(pet2.photo_urls, ["string"])
        assert pet2.tags is not None
        self.assertEqual(pet2.tags[0].id, 1)
        self.assertEqual(pet2.tags[0].name, "None")
        assert pet2.category is not None
        self.assertEqual(pet2.category.id, 1)

    def echoServerResponseParaserTest(self):
        s = """POST /echo/body/Pet/response_string HTTP/1.1
Host: localhost:3000
Accept-Encoding: identity
Content-Length: 58
Accept: text/plain
Content-Type: application/json
User-Agent: OpenAPI-Generator/1.0.0/python

{"name": "testing", "photoUrls": ["http://1", "http://2"]}"""
        e = EchoServerResponseParser(s)
        self.assertEqual(e.body, '{"name": "testing", "photoUrls": ["http://1", "http://2"]}')
        self.assertEqual(e.path, '/echo/body/Pet/response_string')
        self.assertEqual(e.headers["Accept"], 'text/plain')
        self.assertEqual(e.method, 'POST')

class EchoServerResponseParser():
    def __init__(self, http_response):
        if http_response is None:
            raise ValueError("http response must not be None.")

        lines = http_response.splitlines()
        self.headers = dict()
        x = 0
        while x < len(lines):
            if x == 0:
                items = lines[x].split(" ")
                self.method = items[0];
                self.path = items[1];
                self.protocol = items[2];
            elif lines[x] == "": # blank line
                self.body = "\n".join(lines[x+1:])
                break
            else:
                key_value = lines[x].split(": ")
                # store the header key-value pair in headers
                if len(key_value) == 2:
                    self.headers[key_value[0]] = key_value[1]
            x = x+1
            
if __name__ == '__main__':
    unittest.main()
