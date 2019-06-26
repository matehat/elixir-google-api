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

defmodule GoogleApi.ServiceControl.V1.Model.ReportRequest do
  @moduledoc """
  Request message for the Report method.

  ## Attributes

  *   `operations` (*type:* `list(GoogleApi.ServiceControl.V1.Model.Operation.t)`, *default:* `nil`) - Operations to be reported.

      Typically the service should report one operation per request.
      Putting multiple operations into a single request is allowed, but should
      be used only when multiple operations are natually available at the time
      of the report.

      If multiple operations are in a single request, the total request size
      should be no larger than 1MB. See ReportResponse.report_errors for
      partial failure behavior.
  *   `serviceConfigId` (*type:* `String.t`, *default:* `nil`) - Specifies which version of service config should be used to process the
      request.

      If unspecified or no matching version can be found, the
      latest one will be used.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :operations => list(GoogleApi.ServiceControl.V1.Model.Operation.t()),
          :serviceConfigId => String.t()
        }

  field(:operations, as: GoogleApi.ServiceControl.V1.Model.Operation, type: :list)
  field(:serviceConfigId)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceControl.V1.Model.ReportRequest do
  def decode(value, options) do
    GoogleApi.ServiceControl.V1.Model.ReportRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceControl.V1.Model.ReportRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
