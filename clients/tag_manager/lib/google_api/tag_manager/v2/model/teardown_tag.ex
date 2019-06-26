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

defmodule GoogleApi.TagManager.V2.Model.TeardownTag do
  @moduledoc """
  Represents a tag that fires after another tag in order to tear down dependencies.

  ## Attributes

  *   `stopTeardownOnFailure` (*type:* `boolean()`, *default:* `nil`) - If true, fire the teardown tag if and only if the main tag fires successfully. If false, fire the teardown tag regardless of main tag firing status.
  *   `tagName` (*type:* `String.t`, *default:* `nil`) - The name of the teardown tag.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :stopTeardownOnFailure => boolean(),
          :tagName => String.t()
        }

  field(:stopTeardownOnFailure)
  field(:tagName)
end

defimpl Poison.Decoder, for: GoogleApi.TagManager.V2.Model.TeardownTag do
  def decode(value, options) do
    GoogleApi.TagManager.V2.Model.TeardownTag.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TagManager.V2.Model.TeardownTag do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
