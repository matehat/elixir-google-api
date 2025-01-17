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

defmodule GoogleApi.ToolResults.V1beta3.Model.TestCase do
  @moduledoc """


  ## Attributes

  *   `elapsedTime` (*type:* `GoogleApi.ToolResults.V1beta3.Model.Duration.t`, *default:* `nil`) - The elapsed run time of the test case.

      Required.
  *   `endTime` (*type:* `GoogleApi.ToolResults.V1beta3.Model.Timestamp.t`, *default:* `nil`) - The end time of the test case.

      Optional.
  *   `skippedMessage` (*type:* `String.t`, *default:* `nil`) - Why the test case was skipped.

      Present only for skipped test case
  *   `stackTraces` (*type:* `list(GoogleApi.ToolResults.V1beta3.Model.StackTrace.t)`, *default:* `nil`) - The stack trace details if the test case failed or encountered an error.

      The maximum size of the stack traces is 100KiB, beyond which the stack track will be truncated.

      Zero if the test case passed.
  *   `startTime` (*type:* `GoogleApi.ToolResults.V1beta3.Model.Timestamp.t`, *default:* `nil`) - The start time of the test case.

      Optional.
  *   `status` (*type:* `String.t`, *default:* `nil`) - The status of the test case.

      Required.
  *   `testCaseId` (*type:* `String.t`, *default:* `nil`) - A unique identifier within a Step for this Test Case.
  *   `testCaseReference` (*type:* `GoogleApi.ToolResults.V1beta3.Model.TestCaseReference.t`, *default:* `nil`) - Test case reference, e.g. name, class name and test suite name.

      Required.
  *   `toolOutputs` (*type:* `list(GoogleApi.ToolResults.V1beta3.Model.ToolOutputReference.t)`, *default:* `nil`) - References to opaque files of any format output by the tool execution.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :elapsedTime => GoogleApi.ToolResults.V1beta3.Model.Duration.t(),
          :endTime => GoogleApi.ToolResults.V1beta3.Model.Timestamp.t(),
          :skippedMessage => String.t(),
          :stackTraces => list(GoogleApi.ToolResults.V1beta3.Model.StackTrace.t()),
          :startTime => GoogleApi.ToolResults.V1beta3.Model.Timestamp.t(),
          :status => String.t(),
          :testCaseId => String.t(),
          :testCaseReference => GoogleApi.ToolResults.V1beta3.Model.TestCaseReference.t(),
          :toolOutputs => list(GoogleApi.ToolResults.V1beta3.Model.ToolOutputReference.t())
        }

  field(:elapsedTime, as: GoogleApi.ToolResults.V1beta3.Model.Duration)
  field(:endTime, as: GoogleApi.ToolResults.V1beta3.Model.Timestamp)
  field(:skippedMessage)
  field(:stackTraces, as: GoogleApi.ToolResults.V1beta3.Model.StackTrace, type: :list)
  field(:startTime, as: GoogleApi.ToolResults.V1beta3.Model.Timestamp)
  field(:status)
  field(:testCaseId)
  field(:testCaseReference, as: GoogleApi.ToolResults.V1beta3.Model.TestCaseReference)
  field(:toolOutputs, as: GoogleApi.ToolResults.V1beta3.Model.ToolOutputReference, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ToolResults.V1beta3.Model.TestCase do
  def decode(value, options) do
    GoogleApi.ToolResults.V1beta3.Model.TestCase.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ToolResults.V1beta3.Model.TestCase do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
