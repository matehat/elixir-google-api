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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.SslCertsInsertRequest do
  @moduledoc """
  SslCerts insert request.

  ## Attributes

  *   `commonName` (*type:* `String.t`, *default:* `nil`) - User supplied name. Must be a distinct name from the other certificates for this instance.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :commonName => String.t()
        }

  field(:commonName)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.SslCertsInsertRequest do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.SslCertsInsertRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.SslCertsInsertRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
