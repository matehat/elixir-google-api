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

defmodule GoogleApi.Spanner.V1.Model.ReplicaInfo do
  @moduledoc """


  ## Attributes

  *   `defaultLeaderLocation` (*type:* `boolean()`, *default:* `nil`) - If true, this location is designated as the default leader location where
      leader replicas are placed. See the [region types
      documentation](https://cloud.google.com/spanner/docs/instances#region_types)
      for more details.
  *   `location` (*type:* `String.t`, *default:* `nil`) - The location of the serving resources, e.g. "us-central1".
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of replica.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :defaultLeaderLocation => boolean(),
          :location => String.t(),
          :type => String.t()
        }

  field(:defaultLeaderLocation)
  field(:location)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.ReplicaInfo do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.ReplicaInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.ReplicaInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end