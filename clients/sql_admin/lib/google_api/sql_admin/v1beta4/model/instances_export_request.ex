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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.InstancesExportRequest do
  @moduledoc """
  Database instance export request.

  ## Attributes

  *   `exportContext` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.ExportContext.t`, *default:* `nil`) - Contains details about the export operation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :exportContext => GoogleApi.SQLAdmin.V1beta4.Model.ExportContext.t()
        }

  field(:exportContext, as: GoogleApi.SQLAdmin.V1beta4.Model.ExportContext)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.InstancesExportRequest do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.InstancesExportRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.InstancesExportRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
