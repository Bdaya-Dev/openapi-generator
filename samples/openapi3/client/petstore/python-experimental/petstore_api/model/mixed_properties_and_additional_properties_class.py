# coding: utf-8

"""
    OpenAPI Petstore

    This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\  # noqa: E501

    The version of the OpenAPI document: 1.0.0
    Generated by: https://openapi-generator.tech
"""

import re  # noqa: F401
import sys  # noqa: F401
import typing  # noqa: F401
import functools  # noqa: F401

from frozendict import frozendict  # noqa: F401

import decimal  # noqa: F401
from datetime import date, datetime  # noqa: F401
from frozendict import frozendict  # noqa: F401

from petstore_api import schemas  # noqa: F401


class MixedPropertiesAndAdditionalPropertiesClass(
    schemas.DictSchema
):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """
    uuid = schemas.UUIDSchema
    dateTime = schemas.DateTimeSchema
    
    
    class map(
        schemas.DictSchema
    ):
    
        @classmethod
        @property
        def _additional_properties(cls) -> typing.Type['Animal']:
            return Animal
    
    
        def __new__(
            cls,
            *args: typing.Union[dict, frozendict, ],
            _configuration: typing.Optional[schemas.Configuration] = None,
            **kwargs: typing.Type[schemas.Schema],
        ) -> 'map':
            return super().__new__(
                cls,
                *args,
                _configuration=_configuration,
                **kwargs,
            )


    def __new__(
        cls,
        *args: typing.Union[dict, frozendict, ],
        uuid: typing.Union[uuid, schemas.Unset] = schemas.unset,
        dateTime: typing.Union[dateTime, schemas.Unset] = schemas.unset,
        map: typing.Union[map, schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Type[schemas.Schema],
    ) -> 'MixedPropertiesAndAdditionalPropertiesClass':
        return super().__new__(
            cls,
            *args,
            uuid=uuid,
            dateTime=dateTime,
            map=map,
            _configuration=_configuration,
            **kwargs,
        )

from petstore_api.model.animal import Animal
