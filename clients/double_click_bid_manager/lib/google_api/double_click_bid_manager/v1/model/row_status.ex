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

defmodule GoogleApi.DoubleClickBidManager.V1.Model.RowStatus do
  @moduledoc """
  Represents the upload status of a row in the request.

  ## Attributes

  *   `changed` (*type:* `boolean()`, *default:* `nil`) - Whether the stored entity is changed as a result of upload.
  *   `entityId` (*type:* `String.t`, *default:* `nil`) - Entity Id.
  *   `entityName` (*type:* `String.t`, *default:* `nil`) - Entity name.
  *   `errors` (*type:* `list(String.t)`, *default:* `nil`) - Reasons why the entity can't be uploaded.
  *   `persisted` (*type:* `boolean()`, *default:* `nil`) - Whether the entity is persisted.
  *   `rowNumber` (*type:* `integer()`, *default:* `nil`) - Row number.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :changed => boolean(),
          :entityId => String.t(),
          :entityName => String.t(),
          :errors => list(String.t()),
          :persisted => boolean(),
          :rowNumber => integer()
        }

  field(:changed)
  field(:entityId)
  field(:entityName)
  field(:errors, type: :list)
  field(:persisted)
  field(:rowNumber)
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickBidManager.V1.Model.RowStatus do
  def decode(value, options) do
    GoogleApi.DoubleClickBidManager.V1.Model.RowStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickBidManager.V1.Model.RowStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
