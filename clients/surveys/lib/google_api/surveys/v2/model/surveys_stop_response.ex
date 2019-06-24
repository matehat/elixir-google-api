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

defmodule GoogleApi.Surveys.V2.Model.SurveysStopResponse do
  @moduledoc """


  ## Attributes

  *   `requestId` (*type:* `String.t`, *default:* `nil`) - Unique request ID used for logging and debugging. Please include in any error reporting or troubleshooting requests.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :requestId => String.t()
        }

  field(:requestId)
end

defimpl Poison.Decoder, for: GoogleApi.Surveys.V2.Model.SurveysStopResponse do
  def decode(value, options) do
    GoogleApi.Surveys.V2.Model.SurveysStopResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Surveys.V2.Model.SurveysStopResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
