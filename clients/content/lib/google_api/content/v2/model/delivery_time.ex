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

defmodule GoogleApi.Content.V2.Model.DeliveryTime do
  @moduledoc """


  ## Attributes

  *   `cutoffTime` (*type:* `GoogleApi.Content.V2.Model.CutoffTime.t`, *default:* `nil`) - Business days cutoff time definition. If not configured the cutoff time will be defaulted to 8AM PST.
  *   `handlingBusinessDayConfig` (*type:* `GoogleApi.Content.V2.Model.BusinessDayConfig.t`, *default:* `nil`) - The business days during which orders can be handled. If not provided, Monday to Friday business days will be assumed.
  *   `holidayCutoffs` (*type:* `list(GoogleApi.Content.V2.Model.HolidayCutoff.t)`, *default:* `nil`) - Holiday cutoff definitions. If configured, they specify order cutoff times for holiday-specific shipping.
  *   `maxHandlingTimeInDays` (*type:* `integer()`, *default:* `nil`) - Maximum number of business days spent before an order is shipped. 0 means same day shipped, 1 means next day shipped. Must be greater than or equal to minHandlingTimeInDays.
  *   `maxTransitTimeInDays` (*type:* `integer()`, *default:* `nil`) - Maximum number of business days that is spent in transit. 0 means same day delivery, 1 means next day delivery. Must be greater than or equal to minTransitTimeInDays.
  *   `minHandlingTimeInDays` (*type:* `integer()`, *default:* `nil`) - Minimum number of business days spent before an order is shipped. 0 means same day shipped, 1 means next day shipped.
  *   `minTransitTimeInDays` (*type:* `integer()`, *default:* `nil`) - Minimum number of business days that is spent in transit. 0 means same day delivery, 1 means next day delivery. Either {min,max}TransitTimeInDays or transitTimeTable must be set, but not both.
  *   `transitBusinessDayConfig` (*type:* `GoogleApi.Content.V2.Model.BusinessDayConfig.t`, *default:* `nil`) - The business days during which orders can be in-transit. If not provided, Monday to Friday business days will be assumed.
  *   `transitTimeTable` (*type:* `GoogleApi.Content.V2.Model.TransitTable.t`, *default:* `nil`) - Transit time table, number of business days spent in transit based on row and column dimensions. Either {min,max}TransitTimeInDays or transitTimeTable can be set, but not both.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cutoffTime => GoogleApi.Content.V2.Model.CutoffTime.t(),
          :handlingBusinessDayConfig => GoogleApi.Content.V2.Model.BusinessDayConfig.t(),
          :holidayCutoffs => list(GoogleApi.Content.V2.Model.HolidayCutoff.t()),
          :maxHandlingTimeInDays => integer(),
          :maxTransitTimeInDays => integer(),
          :minHandlingTimeInDays => integer(),
          :minTransitTimeInDays => integer(),
          :transitBusinessDayConfig => GoogleApi.Content.V2.Model.BusinessDayConfig.t(),
          :transitTimeTable => GoogleApi.Content.V2.Model.TransitTable.t()
        }

  field(:cutoffTime, as: GoogleApi.Content.V2.Model.CutoffTime)
  field(:handlingBusinessDayConfig, as: GoogleApi.Content.V2.Model.BusinessDayConfig)
  field(:holidayCutoffs, as: GoogleApi.Content.V2.Model.HolidayCutoff, type: :list)
  field(:maxHandlingTimeInDays)
  field(:maxTransitTimeInDays)
  field(:minHandlingTimeInDays)
  field(:minTransitTimeInDays)
  field(:transitBusinessDayConfig, as: GoogleApi.Content.V2.Model.BusinessDayConfig)
  field(:transitTimeTable, as: GoogleApi.Content.V2.Model.TransitTable)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.DeliveryTime do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.DeliveryTime.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.DeliveryTime do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
