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

defmodule GoogleApi.Reseller.V1.Model.ResellernotifyGetwatchdetailsResponse do
  @moduledoc """
  JSON template for resellernotify getwatchdetails response.

  ## Attributes

  *   `serviceAccountEmailAddresses` (*type:* `list(String.t)`, *default:* `nil`) - List of registered service accounts.
  *   `topicName` (*type:* `String.t`, *default:* `nil`) - Topic name of the PubSub
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :serviceAccountEmailAddresses => list(String.t()),
          :topicName => String.t()
        }

  field(:serviceAccountEmailAddresses, type: :list)
  field(:topicName)
end

defimpl Poison.Decoder, for: GoogleApi.Reseller.V1.Model.ResellernotifyGetwatchdetailsResponse do
  def decode(value, options) do
    GoogleApi.Reseller.V1.Model.ResellernotifyGetwatchdetailsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Reseller.V1.Model.ResellernotifyGetwatchdetailsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
