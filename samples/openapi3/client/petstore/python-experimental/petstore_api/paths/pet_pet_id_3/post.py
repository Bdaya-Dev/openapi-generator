# coding: utf-8

"""


    Generated by: https://openapi-generator.tech
"""

from dataclasses import dataclass
import re  # noqa: F401
import sys  # noqa: F401
import typing
import urllib3
import functools  # noqa: F401
from urllib3._collections import HTTPHeaderDict

from petstore_api import api_client, exceptions
import decimal  # noqa: F401
from datetime import date, datetime  # noqa: F401
from frozendict import frozendict  # noqa: F401

from petstore_api import schemas  # noqa: F401

from . import path

# path params
PetIdSchema = schemas.Int64Schema
RequestRequiredPathParams = typing.TypedDict(
    'RequestRequiredPathParams',
    {
        'petId': PetIdSchema,
    }
)
RequestOptionalPathParams = typing.TypedDict(
    'RequestOptionalPathParams',
    {
    },
    total=False
)


class RequestPathParams(RequestRequiredPathParams, RequestOptionalPathParams):
    pass


request_path_pet_id = api_client.PathParameter(
    name="petId",
    style=api_client.ParameterStyle.SIMPLE,
    schema=PetIdSchema,
    required=True,
)
# body param


class SchemaForRequestBodyApplicationXWwwFormUrlencoded(
    schemas.DictSchema
):
    name = schemas.StrSchema
    status = schemas.StrSchema


    def __new__(
        cls,
        *args: typing.Union[dict, frozendict, ],
        name: typing.Union[name, schemas.Unset] = schemas.unset,
        status: typing.Union[status, schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Type[schemas.Schema],
    ) -> 'SchemaForRequestBodyApplicationXWwwFormUrlencoded':
        return super().__new__(
            cls,
            *args,
            name=name,
            status=status,
            _configuration=_configuration,
            **kwargs,
        )


request_body_body = api_client.RequestBody(
    content={
        'application/x-www-form-urlencoded': api_client.MediaType(
            schema=SchemaForRequestBodyApplicationXWwwFormUrlencoded),
    },
)
_auth = [
    'petstore_auth',
]


@dataclass
class ApiResponseFor405(api_client.ApiResponse):
    response: urllib3.HTTPResponse
    body: schemas.Unset = schemas.unset
    headers: schemas.Unset = schemas.unset


_response_for_405 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor405,
)
_status_code_to_response = {
    '405': _response_for_405,
}


class BaseApi(api_client.Api):

    def _update_pet_with_form(
        self: api_client.Api,
        body: typing.Union[SchemaForRequestBodyApplicationXWwwFormUrlencoded, schemas.Unset] = schemas.unset,
        path_params: RequestPathParams = frozendict(),
        content_type: str = 'application/x-www-form-urlencoded',
        stream: bool = False,
        timeout: typing.Optional[typing.Union[int, typing.Tuple]] = None,
        skip_deserialization: bool = False,
    ) -> typing.Union[
        api_client.ApiResponseWithoutDeserialization
    ]:
        """
        Updates a pet in the store with form data
        :param skip_deserialization: If true then api_response.response will be set but
            api_response.body and api_response.headers will not be deserialized into schema
            class instances
        """
        self._verify_typed_dict_inputs(RequestPathParams, path_params)
        used_path = path.value

        _path_params = {}
        for parameter in (
            request_path_pet_id,
        ):
            parameter_data = path_params.get(parameter.name, schemas.unset)
            if parameter_data is schemas.unset:
                continue
            serialized_data = parameter.serialize(parameter_data)
            _path_params.update(serialized_data)

        for k, v in _path_params.items():
            used_path = used_path.replace('{%s}' % k, v)

        _headers = HTTPHeaderDict()
        # TODO add cookie handling

        _fields = None
        _body = None
        if body is not schemas.unset:
            serialized_data = request_body_body.serialize(body, content_type)
            _headers.add('Content-Type', content_type)
            if 'fields' in serialized_data:
                _fields = serialized_data['fields']
            elif 'body' in serialized_data:
                _body = serialized_data['body']
        response = self.api_client.call_api(
            resource_path=used_path,
            method='post'.upper(),
            headers=_headers,
            fields=_fields,
            body=_body,
            auth_settings=_auth,
            stream=stream,
            timeout=timeout,
        )

        if skip_deserialization:
            api_response = api_client.ApiResponseWithoutDeserialization(response=response)
        else:
            response_for_status = _status_code_to_response.get(str(response.status))
            if response_for_status:
                api_response = response_for_status.deserialize(response, self.api_client.configuration)
            else:
                api_response = api_client.ApiResponseWithoutDeserialization(response=response)

        if not 200 <= response.status <= 299:
            raise exceptions.ApiException(api_response=api_response)

        return api_response


class UpdatePetWithForm(BaseApi):
    # this class is used by api classes that refer to endpoints with operationId fn names

    def update_pet_with_form(
        self: BaseApi,
        body: typing.Union[SchemaForRequestBodyApplicationXWwwFormUrlencoded, schemas.Unset] = schemas.unset,
        path_params: RequestPathParams = frozendict(),
        content_type: str = 'application/x-www-form-urlencoded',
        stream: bool = False,
        timeout: typing.Optional[typing.Union[int, typing.Tuple]] = None,
        skip_deserialization: bool = False,
    ) -> typing.Union[
        api_client.ApiResponseWithoutDeserialization
    ]:
        return self._update_pet_with_form(
            body=body,
            path_params=path_params,
            content_type=content_type,
            stream=stream,
            timeout=timeout,
            skip_deserialization=skip_deserialization
        )


class ApiForpost(BaseApi):
    # this class is used by api classes that refer to endpoints by path and http method names

    def post(
        self: BaseApi,
        body: typing.Union[SchemaForRequestBodyApplicationXWwwFormUrlencoded, schemas.Unset] = schemas.unset,
        path_params: RequestPathParams = frozendict(),
        content_type: str = 'application/x-www-form-urlencoded',
        stream: bool = False,
        timeout: typing.Optional[typing.Union[int, typing.Tuple]] = None,
        skip_deserialization: bool = False,
    ) -> typing.Union[
        api_client.ApiResponseWithoutDeserialization
    ]:
        return self._update_pet_with_form(
            body=body,
            path_params=path_params,
            content_type=content_type,
            stream=stream,
            timeout=timeout,
            skip_deserialization=skip_deserialization
        )


