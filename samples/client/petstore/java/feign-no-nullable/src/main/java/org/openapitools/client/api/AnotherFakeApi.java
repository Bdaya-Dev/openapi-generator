package org.openapitools.client.api;

import org.openapitools.client.ApiClient;
import org.openapitools.client.EncodingUtils;
import org.openapitools.client.model.ApiResponse;

import org.openapitools.client.model.Client;
import java.util.UUID;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import feign.*;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.7.0-SNAPSHOT")
public interface AnotherFakeApi extends ApiClient.Api {


  /**
   * To test special tags
   * To test special tags and operation ID starting with number
   * @param uuidTest to test uuid example value (required)
   * @param body client model (required)
   * @return Client
   */
  @RequestLine("PATCH /another-fake/dummy")
  @Headers({
    "Content-Type: application/json",
    "Accept: application/json",
    "uuid_test: {uuidTest}"
  })
  Client call123testSpecialTags(@Param("uuidTest") UUID uuidTest, Client body);

  /**
   * To test special tags
   * Similar to <code>call123testSpecialTags</code> but it also returns the http response headers .
   * To test special tags and operation ID starting with number
   * @param uuidTest to test uuid example value (required)
   * @param body client model (required)
   * @return A ApiResponse that wraps the response boyd and the http headers.
   */
  @RequestLine("PATCH /another-fake/dummy")
  @Headers({
    "Content-Type: application/json",
    "Accept: application/json",
    "uuid_test: {uuidTest}"
  })
  ApiResponse<Client> call123testSpecialTagsWithHttpInfo(@Param("uuidTest") UUID uuidTest, Client body);


}
