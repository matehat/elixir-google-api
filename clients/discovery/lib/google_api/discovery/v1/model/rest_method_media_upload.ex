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

defmodule GoogleApi.Discovery.V1.Model.RestMethodMediaUpload do
  @moduledoc """
  Media upload parameters.

  ## Attributes

  *   `accept` (*type:* `list(String.t)`, *default:* `nil`) - MIME Media Ranges for acceptable media uploads to this method.
  *   `maxSize` (*type:* `String.t`, *default:* `nil`) - Maximum size of a media upload, such as "1MB", "2GB" or "3TB".
  *   `protocols` (*type:* `GoogleApi.Discovery.V1.Model.RestMethodMediaUploadProtocols.t`, *default:* `nil`) - Supported upload protocols.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accept => list(String.t()),
          :maxSize => String.t(),
          :protocols => GoogleApi.Discovery.V1.Model.RestMethodMediaUploadProtocols.t()
        }

  field(:accept, type: :list)
  field(:maxSize)
  field(:protocols, as: GoogleApi.Discovery.V1.Model.RestMethodMediaUploadProtocols)
end

defimpl Poison.Decoder, for: GoogleApi.Discovery.V1.Model.RestMethodMediaUpload do
  def decode(value, options) do
    GoogleApi.Discovery.V1.Model.RestMethodMediaUpload.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Discovery.V1.Model.RestMethodMediaUpload do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
