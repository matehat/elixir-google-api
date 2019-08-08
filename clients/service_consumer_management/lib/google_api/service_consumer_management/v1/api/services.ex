# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.ServiceConsumerManagement.V1.Api.Services do
  @moduledoc """
  API calls for all endpoints tagged `Services`.
  """

  alias GoogleApi.ServiceConsumerManagement.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Search tenancy units for a managed service.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.ServiceConsumerManagement.V1.Connection.t`) - Connection to server
  *   `parent` (*type:* `String.t`) - Service for which search is performed.
      services/{service}
      {service} the name of a service, for example 'service.googleapis.com'.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:pageSize` (*type:* `integer()`) - The maximum number of results returned by this request. Currently, the
          default maximum is set to 1000. If `page_size` isn't provided or the size
          provided is a number larger than 1000, it's automatically set to 1000.

          Optional.
      *   `:pageToken` (*type:* `String.t`) - The continuation token, which is used to page through large result sets.
          To get the next page of results, set this parameter to the value of
          `nextPageToken` from the previous response.

          Optional.
      *   `:query` (*type:* `String.t`) - Set a query `{expression}` for querying tenancy units. Your `{expression}`
          must be in the format: `field_name=literal_string`. The `field_name` is the
          name of the field you want to compare. Supported fields are
          `tenant_resources.tag` and `tenant_resources.resource`.

          For example, to search tenancy units that contain at least one tenant
          resource with a given tag 'xyz', use the query `tenant_resources.tag=xyz`.
          To search tenancy units that contain at least one tenant resource with
          a given resource name 'projects/123456', use the query
          `tenant_resources.resource=projects/123456`.

          Multiple expressions can be joined with `AND`s. Tenancy units must match
          all expressions to be included in the result set. For example,
          `tenant_resources.tag=xyz AND tenant_resources.resource=projects/123456`

          Optional.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.ServiceConsumerManagement.V1.Model.SearchTenancyUnitsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec serviceconsumermanagement_services_search(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.ServiceConsumerManagement.V1.Model.SearchTenancyUnitsResponse.t()}
          | {:error, Tesla.Env.t()}
  def serviceconsumermanagement_services_search(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :pageSize => :query,
      :pageToken => :query,
      :query => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+parent}:search", %{
        "parent" => URI.encode(parent, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.ServiceConsumerManagement.V1.Model.SearchTenancyUnitsResponse{}]
    )
  end

  @doc """
  Add a new tenant project to the tenancy unit.
  There can be a maximum of 512 tenant projects in a tenancy unit.
  If there are previously failed `AddTenantProject` calls, you might need to
  call `RemoveTenantProject` first to resolve them before you can make
  another call to `AddTenantProject` with the same tag.
  Operation<response: Empty>.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.ServiceConsumerManagement.V1.Connection.t`) - Connection to server
  *   `parent` (*type:* `String.t`) - Name of the tenancy unit.
      Such as 'services/service.googleapis.com/projects/12345/tenancyUnits/abcd'.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.ServiceConsumerManagement.V1.Model.AddTenantProjectRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.ServiceConsumerManagement.V1.Model.Operation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec serviceconsumermanagement_services_tenancy_units_add_project(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.ServiceConsumerManagement.V1.Model.Operation.t()}
          | {:error, Tesla.Env.t()}
  def serviceconsumermanagement_services_tenancy_units_add_project(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+parent}:addProject", %{
        "parent" => URI.encode(parent, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.ServiceConsumerManagement.V1.Model.Operation{}]
    )
  end

  @doc """
  Apply a configuration to an existing tenant project.
  This project must exist in an active state and have the original owner
  account. The caller must have permission to add a project to the given
  tenancy unit. The configuration is applied, but any existing settings on
  the project aren't modified.
  Specified policy bindings are applied. Existing bindings aren't modified.
  Specified services are activated. No service is deactivated.
  If specified, new billing configuration is applied.
  Omit a billing configuration to keep the existing one.
  A service account in the project is created if previously non existed.
  Specified labels will be appended to tenant project, note that the value of
  existing label key will be updated if the same label key is requested.
  The specified folder is ignored, as moving a tenant project to a different
  folder isn't supported.
  The operation fails if any of the steps fail, but no rollback of already
  applied configuration changes is attempted.
  Operation<response: Empty>.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.ServiceConsumerManagement.V1.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - Name of the tenancy unit.
      Such as 'services/service.googleapis.com/projects/12345/tenancyUnits/abcd'.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.ServiceConsumerManagement.V1.Model.ApplyTenantProjectConfigRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.ServiceConsumerManagement.V1.Model.Operation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec serviceconsumermanagement_services_tenancy_units_apply_project_config(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.ServiceConsumerManagement.V1.Model.Operation.t()}
          | {:error, Tesla.Env.t()}
  def serviceconsumermanagement_services_tenancy_units_apply_project_config(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+name}:applyProjectConfig", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.ServiceConsumerManagement.V1.Model.Operation{}]
    )
  end

  @doc """
  Attach an existing project to the tenancy unit as a new tenant
  resource. The project could either be the tenant project reserved by
  calling `AddTenantProject` under a tenancy unit of a service producer's
  project of a managed service, or from a separate project.
  The caller is checked against a set of permissions as if calling
  `AddTenantProject` on the same service consumer.
  To trigger the attachment, the targeted tenant project must be in a
  folder. Make sure the ServiceConsumerManagement service account is
  the owner of that project. These two requirements are already met
  if the project is reserved by calling `AddTenantProject`.
  Operation<response: Empty>.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.ServiceConsumerManagement.V1.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - Name of the tenancy unit that the project will be attached to.
      Such as 'services/service.googleapis.com/projects/12345/tenancyUnits/abcd'.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.ServiceConsumerManagement.V1.Model.AttachTenantProjectRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.ServiceConsumerManagement.V1.Model.Operation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec serviceconsumermanagement_services_tenancy_units_attach_project(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.ServiceConsumerManagement.V1.Model.Operation.t()}
          | {:error, Tesla.Env.t()}
  def serviceconsumermanagement_services_tenancy_units_attach_project(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+name}:attachProject", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.ServiceConsumerManagement.V1.Model.Operation{}]
    )
  end

  @doc """
  Creates a tenancy unit with no tenant resources.
  If tenancy unit already exists, it will be returned,
  however, in this case, returned TenancyUnit does not have tenant_resources
  field set and ListTenancyUnit has to be used to get a complete
  TenancyUnit with all fields populated.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.ServiceConsumerManagement.V1.Connection.t`) - Connection to server
  *   `parent` (*type:* `String.t`) - services/{service}/{collection id}/{resource id}
      {collection id} is the cloud resource collection type representing the
      service consumer, for example 'projects', or 'organizations'.
      {resource id} is the consumer numeric id, such as project number: '123456'.
      {service} the name of a managed service, such as 'service.googleapis.com'.
      Enables service binding using the new tenancy unit.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.ServiceConsumerManagement.V1.Model.CreateTenancyUnitRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.ServiceConsumerManagement.V1.Model.TenancyUnit{}}` on success
  *   `{:error, info}` on failure
  """
  @spec serviceconsumermanagement_services_tenancy_units_create(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.ServiceConsumerManagement.V1.Model.TenancyUnit.t()}
          | {:error, Tesla.Env.t()}
  def serviceconsumermanagement_services_tenancy_units_create(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+parent}/tenancyUnits", %{
        "parent" => URI.encode(parent, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.ServiceConsumerManagement.V1.Model.TenancyUnit{}]
    )
  end

  @doc """
  Delete a tenancy unit. Before you delete the tenancy unit, there should be
  no tenant resources in it that aren't in a DELETED state.
  Operation<response: Empty>.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.ServiceConsumerManagement.V1.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - Name of the tenancy unit to be deleted.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.ServiceConsumerManagement.V1.Model.Operation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec serviceconsumermanagement_services_tenancy_units_delete(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.ServiceConsumerManagement.V1.Model.Operation.t()}
          | {:error, Tesla.Env.t()}
  def serviceconsumermanagement_services_tenancy_units_delete(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/v1/{+name}", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.ServiceConsumerManagement.V1.Model.Operation{}]
    )
  end

  @doc """
  Deletes the specified project resource identified by a tenant resource tag.
  The mothod removes a project lien with a 'TenantManager' origin if that was
  added. It will then attempt to delete the project. If that operation fails,
  this method also fails.
  After the project has been deleted, the tenant resource state is set to
  DELETED.  To permanently remove resource metadata, call the
  `RemoveTenantProject` method.
  New resources with the same tag can't be added if there are existing
  resources in a DELETED state.
  Operation<response: Empty>.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.ServiceConsumerManagement.V1.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - Name of the tenancy unit.
      Such as 'services/service.googleapis.com/projects/12345/tenancyUnits/abcd'.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.ServiceConsumerManagement.V1.Model.DeleteTenantProjectRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.ServiceConsumerManagement.V1.Model.Operation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec serviceconsumermanagement_services_tenancy_units_delete_project(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.ServiceConsumerManagement.V1.Model.Operation.t()}
          | {:error, Tesla.Env.t()}
  def serviceconsumermanagement_services_tenancy_units_delete_project(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+name}:deleteProject", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.ServiceConsumerManagement.V1.Model.Operation{}]
    )
  end

  @doc """
  Find the tenancy unit for a managed service and service consumer.
  This method shouldn't be used in a service producer's runtime path, for
  example to find the tenant project number when creating VMs. Service
  producers must persist the tenant project's information after the project
  is created.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.ServiceConsumerManagement.V1.Connection.t`) - Connection to server
  *   `parent` (*type:* `String.t`) - Managed service and service consumer. Required.
      services/{service}/{collection id}/{resource id}
      {collection id} is the cloud resource collection type representing the
      service consumer, for example 'projects', or 'organizations'.
      {resource id} is the consumer numeric id, such as project number: '123456'.
      {service} the name of a service, such as 'service.googleapis.com'.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:filter` (*type:* `String.t`) - Filter expression over tenancy resources field. Optional.
      *   `:pageSize` (*type:* `integer()`) - The maximum number of results returned by this request.
      *   `:pageToken` (*type:* `String.t`) - The continuation token, which is used to page through large result sets.
          To get the next page of results, set this parameter to the value of
          `nextPageToken` from the previous response.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.ServiceConsumerManagement.V1.Model.ListTenancyUnitsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec serviceconsumermanagement_services_tenancy_units_list(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.ServiceConsumerManagement.V1.Model.ListTenancyUnitsResponse.t()}
          | {:error, Tesla.Env.t()}
  def serviceconsumermanagement_services_tenancy_units_list(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :filter => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+parent}/tenancyUnits", %{
        "parent" => URI.encode(parent, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.ServiceConsumerManagement.V1.Model.ListTenancyUnitsResponse{}]
    )
  end

  @doc """
  Removes the specified project resource identified by a tenant resource tag.
  The method removes the project lien with 'TenantManager' origin if that
  was added. It then attempts to delete the project. If that operation
  fails, this method also fails.
  Calls to remove already removed or non-existent tenant project succeed.
  After the project has been deleted, or if was already in a DELETED state,
  resource metadata is permanently removed from the tenancy unit.
  Operation<response: Empty>.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.ServiceConsumerManagement.V1.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - Name of the tenancy unit.
      Such as 'services/service.googleapis.com/projects/12345/tenancyUnits/abcd'.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.ServiceConsumerManagement.V1.Model.RemoveTenantProjectRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.ServiceConsumerManagement.V1.Model.Operation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec serviceconsumermanagement_services_tenancy_units_remove_project(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.ServiceConsumerManagement.V1.Model.Operation.t()}
          | {:error, Tesla.Env.t()}
  def serviceconsumermanagement_services_tenancy_units_remove_project(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+name}:removeProject", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.ServiceConsumerManagement.V1.Model.Operation{}]
    )
  end

  @doc """
  Attempts to undelete a previously deleted tenant project. The project must
  be in a DELETED state.
  There are no guarantees that an undeleted project will be in
  a fully restored and functional state. Call the `ApplyTenantProjectConfig`
  method to update its configuration and then validate all managed service
  resources.
  Operation<response: Empty>.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.ServiceConsumerManagement.V1.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - Name of the tenancy unit.
      Such as 'services/service.googleapis.com/projects/12345/tenancyUnits/abcd'.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.ServiceConsumerManagement.V1.Model.UndeleteTenantProjectRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.ServiceConsumerManagement.V1.Model.Operation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec serviceconsumermanagement_services_tenancy_units_undelete_project(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.ServiceConsumerManagement.V1.Model.Operation.t()}
          | {:error, Tesla.Env.t()}
  def serviceconsumermanagement_services_tenancy_units_undelete_project(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+name}:undeleteProject", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.ServiceConsumerManagement.V1.Model.Operation{}]
    )
  end
end
