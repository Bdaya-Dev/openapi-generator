/**
 * OpenAPI Petstore
 *
 * Test for issue 4062
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
 */

@file:Suppress(
    "ArrayInDataClass",
    "EnumEntryName",
    "RemoveRedundantQualifierName",
    "UnusedImport"
)

package org.openapitools.client.models


import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.KSerializer
import kotlinx.serialization.Serializer
import kotlinx.serialization.builtins.serializer
import kotlinx.serialization.encoding.Decoder
import kotlinx.serialization.encoding.Encoder

/**
 * An enum with complex-ish naming
 *
 * Values: MY_FIRST_VALUE,MY_SECOND_VALUE,UNKNOWN_DEFAULT_OPEN_API
 */
@Serializable(with = PetEnumSerializer::class)
enum class PetEnum(val value: kotlin.String) {

    @SerialName(value = "myFirstValue")
    MY_FIRST_VALUE("myFirstValue"),

    @SerialName(value = "MY_SECOND_VALUE")
    MY_SECOND_VALUE("MY_SECOND_VALUE"),

    @SerialName(value = "unknown_default_open_api")
    UNKNOWN_DEFAULT_OPEN_API("unknown_default_open_api");

    /**
     * Override toString() to avoid using the enum variable name as the value, and instead use
     * the actual value defined in the API spec file.
     *
     * This solves a problem when the variable name and its value are different, and ensures that
     * the client sends the correct enum values to the server always.
     */
    override fun toString(): String = value

    companion object {
        /**
         * Converts the provided [data] to a [String] on success, null otherwise.
         */
        fun encode(data: kotlin.Any?): kotlin.String? = if (data is PetEnum) "$data" else null

        /**
         * Returns a valid [PetEnum] for [data], null otherwise.
         */
        fun decode(data: kotlin.Any?): PetEnum? = data?.let {
          val normalizedData = "$it".lowercase()
          values().firstOrNull { value ->
            it == value || normalizedData == "$value".lowercase()
          }
        }
    }
}

@Serializer(forClass = PetEnum::class)
internal object PetEnumSerializer : KSerializer<PetEnum> {
    override val descriptor = kotlin.String.serializer().descriptor

    override fun deserialize(decoder: Decoder): PetEnum {
        val value = decoder.decodeSerializableValue(kotlin.String.serializer())
        return PetEnum.values().firstOrNull { it.value == value }
            ?: PetEnum.UNKNOWN_DEFAULT_OPEN_API
    }

    override fun serialize(encoder: Encoder, value: PetEnum) {
        encoder.encodeSerializableValue(kotlin.String.serializer(), value.value)
    }
}

