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

defmodule GoogleApi.SafeBrowsing.V4.Api.FullHashes do
  @moduledoc """
  API calls for all endpoints tagged `FullHashes`.
  """

  alias GoogleApi.SafeBrowsing.V4.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Finds the full hashes that match the requested hash prefixes.

  ## Parameters

  - connection (GoogleApi.SafeBrowsing.V4.Connection): Connection to server
  - optional_params (keyword()): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. "media", "multipart").
    - :upload_protocol (String.t): Upload protocol for media (e.g. "raw", "multipart").
    - :body (GoogleApi.SafeBrowsing.V4.Model.FindFullHashesRequest.t): 

  ## Returns

  {:ok, %GoogleApi.SafeBrowsing.V4.Model.FindFullHashesResponse{}} on success
  {:error, info} on failure
  """
  @spec safebrowsing_full_hashes_find(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.SafeBrowsing.V4.Model.FindFullHashesResponse.t()}
          | {:error, Tesla.Env.t()}
  def safebrowsing_full_hashes_find(connection, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/v4/fullHashes:find", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.SafeBrowsing.V4.Model.FindFullHashesResponse{}]
    )
  end
end
