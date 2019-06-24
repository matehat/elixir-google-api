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

defmodule GoogleApi.Discovery.V1.Api.Apis do
  @moduledoc """
  API calls for all endpoints tagged `Apis`.
  """

  alias GoogleApi.Discovery.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Retrieve the description of a particular version of an api.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Discovery.V1.Connection.t`) - Connection to server
  *   `api` (*type:* `String.t`) - The name of the API.
  *   `version` (*type:* `String.t`) - The version of the API.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Discovery.V1.Model.RestDescription{}}` on success
  *   `{:error, info}` on failure
  """
  @spec discovery_apis_get_rest(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Discovery.V1.Model.RestDescription.t()} | {:error, Tesla.Env.t()}
  def discovery_apis_get_rest(connection, api, version, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/apis/{api}/{version}/rest", %{
        "api" => URI.encode(api, &URI.char_unreserved?/1),
        "version" => URI.encode(version, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Discovery.V1.Model.RestDescription{}])
  end

  @doc """
  Retrieve the list of APIs supported at this endpoint.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Discovery.V1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:name` (*type:* `String.t`) - Only include APIs with the given name.
      *   `:preferred` (*type:* `boolean()`) - Return only the preferred version of an API.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Discovery.V1.Model.DirectoryList{}}` on success
  *   `{:error, info}` on failure
  """
  @spec discovery_apis_list(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.Discovery.V1.Model.DirectoryList.t()} | {:error, Tesla.Env.t()}
  def discovery_apis_list(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :name => :query,
      :preferred => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/apis", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Discovery.V1.Model.DirectoryList{}])
  end
end
