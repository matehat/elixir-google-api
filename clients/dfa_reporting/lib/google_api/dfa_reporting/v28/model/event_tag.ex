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

defmodule GoogleApi.DFAReporting.V28.Model.EventTag do
  @moduledoc """
  Contains properties of an event tag.

  ## Attributes

  - accountId (String.t): Account ID of this event tag. This is a read-only field that can be left blank. Defaults to: `null`.
  - advertiserId (String.t): Advertiser ID of this event tag. This field or the campaignId field is required on insertion. Defaults to: `null`.
  - advertiserIdDimensionValue (DimensionValue): Dimension value for the ID of the advertiser. This is a read-only, auto-generated field. Defaults to: `null`.
  - campaignId (String.t): Campaign ID of this event tag. This field or the advertiserId field is required on insertion. Defaults to: `null`.
  - campaignIdDimensionValue (DimensionValue): Dimension value for the ID of the campaign. This is a read-only, auto-generated field. Defaults to: `null`.
  - enabledByDefault (boolean()): Whether this event tag should be automatically enabled for all of the advertiser&#39;s campaigns and ads. Defaults to: `null`.
  - excludeFromAdxRequests (boolean()): Whether to remove this event tag from ads that are trafficked through Display &amp; Video 360 to Ad Exchange. This may be useful if the event tag uses a pixel that is unapproved for Ad Exchange bids on one or more networks, such as the Google Display Network. Defaults to: `null`.
  - id (String.t): ID of this event tag. This is a read-only, auto-generated field. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;dfareporting#eventTag\&quot;. Defaults to: `null`.
  - name (String.t): Name of this event tag. This is a required field and must be less than 256 characters long. Defaults to: `null`.
  - siteFilterType (String.t): Site filter type for this event tag. If no type is specified then the event tag will be applied to all sites. Defaults to: `null`.
    - Enum - one of [BLACKLIST, WHITELIST]
  - siteIds ([String.t]): Filter list of site IDs associated with this event tag. The siteFilterType determines whether this is a whitelist or blacklist filter. Defaults to: `null`.
  - sslCompliant (boolean()): Whether this tag is SSL-compliant or not. This is a read-only field. Defaults to: `null`.
  - status (String.t): Status of this event tag. Must be ENABLED for this event tag to fire. This is a required field. Defaults to: `null`.
    - Enum - one of [DISABLED, ENABLED]
  - subaccountId (String.t): Subaccount ID of this event tag. This is a read-only field that can be left blank. Defaults to: `null`.
  - type (String.t): Event tag type. Can be used to specify whether to use a third-party pixel, a third-party JavaScript URL, or a third-party click-through URL for either impression or click tracking. This is a required field. Defaults to: `null`.
    - Enum - one of [CLICK_THROUGH_EVENT_TAG, IMPRESSION_IMAGE_EVENT_TAG, IMPRESSION_JAVASCRIPT_EVENT_TAG]
  - url (String.t): Payload URL for this event tag. The URL on a click-through event tag should have a landing page URL appended to the end of it. This field is required on insertion. Defaults to: `null`.
  - urlEscapeLevels (integer()): Number of times the landing page URL should be URL-escaped before being appended to the click-through event tag URL. Only applies to click-through event tags as specified by the event tag type. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => any(),
          :advertiserId => any(),
          :advertiserIdDimensionValue => GoogleApi.DFAReporting.V28.Model.DimensionValue.t(),
          :campaignId => any(),
          :campaignIdDimensionValue => GoogleApi.DFAReporting.V28.Model.DimensionValue.t(),
          :enabledByDefault => any(),
          :excludeFromAdxRequests => any(),
          :id => any(),
          :kind => any(),
          :name => any(),
          :siteFilterType => any(),
          :siteIds => list(any()),
          :sslCompliant => any(),
          :status => any(),
          :subaccountId => any(),
          :type => any(),
          :url => any(),
          :urlEscapeLevels => any()
        }

  field(:accountId)
  field(:advertiserId)
  field(:advertiserIdDimensionValue, as: GoogleApi.DFAReporting.V28.Model.DimensionValue)
  field(:campaignId)
  field(:campaignIdDimensionValue, as: GoogleApi.DFAReporting.V28.Model.DimensionValue)
  field(:enabledByDefault)
  field(:excludeFromAdxRequests)
  field(:id)
  field(:kind)
  field(:name)
  field(:siteFilterType)
  field(:siteIds, type: :list)
  field(:sslCompliant)
  field(:status)
  field(:subaccountId)
  field(:type)
  field(:url)
  field(:urlEscapeLevels)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.EventTag do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.EventTag.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.EventTag do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end