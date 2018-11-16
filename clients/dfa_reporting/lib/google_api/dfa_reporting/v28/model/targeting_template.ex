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

defmodule GoogleApi.DFAReporting.V28.Model.TargetingTemplate do
  @moduledoc """
  Contains properties of a targeting template. A targeting template encapsulates targeting information which can be reused across multiple ads.

  ## Attributes

  - accountId (String.t): Account ID of this targeting template. This field, if left unset, will be auto-generated on insert and is read-only after insert. Defaults to: `null`.
  - advertiserId (String.t): Advertiser ID of this targeting template. This is a required field on insert and is read-only after insert. Defaults to: `null`.
  - advertiserIdDimensionValue (DimensionValue): Dimension value for the ID of the advertiser. This is a read-only, auto-generated field. Defaults to: `null`.
  - dayPartTargeting (DayPartTargeting): Time and day targeting criteria. Defaults to: `null`.
  - geoTargeting (GeoTargeting): Geographical targeting criteria. Defaults to: `null`.
  - id (String.t): ID of this targeting template. This is a read-only, auto-generated field. Defaults to: `null`.
  - keyValueTargetingExpression (KeyValueTargetingExpression): Key-value targeting criteria. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;dfareporting#targetingTemplate\&quot;. Defaults to: `null`.
  - languageTargeting (LanguageTargeting): Language targeting criteria. Defaults to: `null`.
  - listTargetingExpression (ListTargetingExpression): Remarketing list targeting criteria. Defaults to: `null`.
  - name (String.t): Name of this targeting template. This field is required. It must be less than 256 characters long and unique within an advertiser. Defaults to: `null`.
  - subaccountId (String.t): Subaccount ID of this targeting template. This field, if left unset, will be auto-generated on insert and is read-only after insert. Defaults to: `null`.
  - technologyTargeting (TechnologyTargeting): Technology platform targeting criteria. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => any(),
          :advertiserId => any(),
          :advertiserIdDimensionValue => GoogleApi.DFAReporting.V28.Model.DimensionValue.t(),
          :dayPartTargeting => GoogleApi.DFAReporting.V28.Model.DayPartTargeting.t(),
          :geoTargeting => GoogleApi.DFAReporting.V28.Model.GeoTargeting.t(),
          :id => any(),
          :keyValueTargetingExpression =>
            GoogleApi.DFAReporting.V28.Model.KeyValueTargetingExpression.t(),
          :kind => any(),
          :languageTargeting => GoogleApi.DFAReporting.V28.Model.LanguageTargeting.t(),
          :listTargetingExpression => GoogleApi.DFAReporting.V28.Model.ListTargetingExpression.t(),
          :name => any(),
          :subaccountId => any(),
          :technologyTargeting => GoogleApi.DFAReporting.V28.Model.TechnologyTargeting.t()
        }

  field(:accountId)
  field(:advertiserId)
  field(:advertiserIdDimensionValue, as: GoogleApi.DFAReporting.V28.Model.DimensionValue)
  field(:dayPartTargeting, as: GoogleApi.DFAReporting.V28.Model.DayPartTargeting)
  field(:geoTargeting, as: GoogleApi.DFAReporting.V28.Model.GeoTargeting)
  field(:id)

  field(
    :keyValueTargetingExpression,
    as: GoogleApi.DFAReporting.V28.Model.KeyValueTargetingExpression
  )

  field(:kind)
  field(:languageTargeting, as: GoogleApi.DFAReporting.V28.Model.LanguageTargeting)
  field(:listTargetingExpression, as: GoogleApi.DFAReporting.V28.Model.ListTargetingExpression)
  field(:name)
  field(:subaccountId)
  field(:technologyTargeting, as: GoogleApi.DFAReporting.V28.Model.TechnologyTargeting)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.TargetingTemplate do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.TargetingTemplate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.TargetingTemplate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end