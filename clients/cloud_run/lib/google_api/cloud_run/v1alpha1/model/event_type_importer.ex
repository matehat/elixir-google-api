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

defmodule GoogleApi.CloudRun.V1alpha1.Model.EventTypeImporter do
  @moduledoc """


  ## Attributes

  *   `apiVersion` (*type:* `String.t`, *default:* `nil`) - The API version of the importer CRD.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - The kind of the importer CRD.
  *   `parameters` (*type:* `list(GoogleApi.CloudRun.V1alpha1.Model.EventTypeParameter.t)`, *default:* `nil`) - Parameters required to create an importer for the EventType.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiVersion => String.t(),
          :kind => String.t(),
          :parameters => list(GoogleApi.CloudRun.V1alpha1.Model.EventTypeParameter.t())
        }

  field(:apiVersion)
  field(:kind)
  field(:parameters, as: GoogleApi.CloudRun.V1alpha1.Model.EventTypeParameter, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.EventTypeImporter do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.EventTypeImporter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.EventTypeImporter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
