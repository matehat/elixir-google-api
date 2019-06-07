# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Admin.Reports_v1.Model.NestedParameter do
  @moduledoc """
  JSON template for a parameter used in various reports.

  ## Attributes

  - boolValue (boolean()): Boolean value of the parameter. Defaults to: `null`.
  - intValue (String.t): Integral value of the parameter. Defaults to: `null`.
  - multiBoolValue ([boolean()]): Multiple boolean values of the parameter. Defaults to: `null`.
  - multiIntValue ([String.t]): Multiple integral values of the parameter. Defaults to: `null`.
  - multiValue ([String.t]): Multiple string values of the parameter. Defaults to: `null`.
  - name (String.t): The name of the parameter. Defaults to: `null`.
  - value (String.t): String value of the parameter. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boolValue => any(),
          :intValue => any(),
          :multiBoolValue => list(any()),
          :multiIntValue => list(any()),
          :multiValue => list(any()),
          :name => any(),
          :value => any()
        }

  field(:boolValue)
  field(:intValue)
  field(:multiBoolValue, type: :list)
  field(:multiIntValue, type: :list)
  field(:multiValue, type: :list)
  field(:name)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Reports_v1.Model.NestedParameter do
  def decode(value, options) do
    GoogleApi.Admin.Reports_v1.Model.NestedParameter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Reports_v1.Model.NestedParameter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end