/*
 * This program is part of the OpenLMIS logistics management information system platform software.
 * Copyright © 2017 VillageReach
 *
 * This program is free software: you can redistribute it and/or modify it under the terms
 * of the GNU Affero General Public License as published by the Free Software Foundation, either
 * version 3 of the License, or (at your option) any later version.
 *  
 * This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
 * without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
 * See the GNU Affero General Public License for more details. You should have received a copy of
 * the GNU Affero General Public License along with this program. If not, see
 * http://www.gnu.org/licenses.  For additional information contact info@OpenLMIS.org. 
 */

package org.openlmis.contract_tests.referencedata;

import static io.restassured.RestAssured.enableLoggingOfRequestAndResponseIfValidationFails;
import static io.restassured.RestAssured.given;
import static io.restassured.path.json.JsonPath.from;
import static org.hamcrest.Matchers.notNullValue;
import static org.jglue.fluentjson.JsonBuilderFactory.buildObject;
import static org.openlmis.contract_tests.common.LoginStepDefs.ACCESS_TOKEN;
import static org.openlmis.contract_tests.common.LoginStepDefs.ACCESS_TOKEN_PARAM_NAME;
import static org.openlmis.contract_tests.common.TestVariableReader.baseUrlOfService;

import cucumber.api.DataTable;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.http.ContentType;
import io.restassured.response.Response;
import java.util.List;
import java.util.Map;
import org.jglue.fluentjson.JsonObjectBuilder;

public class SupervisoryNodeStepDefs {

  private Response response;
  private String id;

  static {
    enableLoggingOfRequestAndResponseIfValidationFails();
  }

  @When("^I try to create a supervisoryNode with:$")
  public void tryToCreateSupervisoryNodeWith(DataTable argsList) {
    List<Map<String, String>> data = argsList.asMaps(String.class, String.class);
    for (Map<String, String> map : data) {
      response = given()
          .contentType(ContentType.JSON)
          .queryParam(ACCESS_TOKEN_PARAM_NAME, ACCESS_TOKEN)
          .body(buildSupervisoryNode(map)
              .getJson().toString())
          .when()
          .post(baseUrlOfService("referencedata") + "supervisoryNodes");
    }
  }

  @Then("^I should get response with the created supervisoryNode's id$")
  public void IShouldGetResponseWithTheCreatedSupervisoryNodeId() throws Throwable {
    response
        .then()
        .body("id", notNullValue());
    id = from(response.asString()).get("id");
  }

  private JsonObjectBuilder buildSupervisoryNode(Map<String, String> data) {
    JsonObjectBuilder facility = buildObject()
        .add("id", data.get("facility"));
    return buildObject()
        .add("code", (String) data.get("code"))
        .add("facility", facility)
        .add("name", (String) data.get("name"));
  }
}
