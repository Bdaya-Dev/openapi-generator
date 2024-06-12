/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech) (7.7.0-SNAPSHOT).
 * https://openapi-generator.tech
 * Do not edit the class manually.
*/
package org.openapitools.api

import org.openapitools.model.FooGetDefaultResponse
import io.swagger.v3.oas.annotations.*
import io.swagger.v3.oas.annotations.enums.*
import io.swagger.v3.oas.annotations.media.*
import io.swagger.v3.oas.annotations.responses.*
import io.swagger.v3.oas.annotations.security.*
import org.springframework.http.HttpStatus
import org.springframework.http.MediaType
import org.springframework.http.ResponseEntity
import org.springframework.http.server.reactive.ServerHttpRequest

import org.springframework.web.bind.annotation.*
import org.springframework.validation.annotation.Validated
import org.springframework.web.context.request.NativeWebRequest
import org.springframework.beans.factory.annotation.Autowired

import jakarta.validation.constraints.DecimalMax
import jakarta.validation.constraints.DecimalMin
import jakarta.validation.constraints.Email
import jakarta.validation.constraints.Max
import jakarta.validation.constraints.Min
import jakarta.validation.constraints.NotNull
import jakarta.validation.constraints.Pattern
import jakarta.validation.constraints.Size
import jakarta.validation.Valid

import kotlin.collections.List
import kotlin.collections.Map

@Validated
@RequestMapping("\${api.base-path:/v2}")
interface FooApi {

    @Operation(
        tags = ["default",],
        summary = "",
        operationId = "fooGet",
        description = """""",
        responses = [
            ApiResponse(responseCode = "200", description = "response", content = [Content(schema = Schema(implementation = FooGetDefaultResponse::class))])
        ]
    )
    @RequestMapping(
            method = [RequestMethod.GET],
            value = ["/foo"],
            produces = ["application/json"]
    )
    fun fooGet(serverHttpRequest: ServerHttpRequest): ResponseEntity<FooGetDefaultResponse> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }
}
