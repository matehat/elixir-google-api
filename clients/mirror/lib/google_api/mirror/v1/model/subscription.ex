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

defmodule GoogleApi.Mirror.V1.Model.Subscription do
  @moduledoc """
  A subscription to events on a collection.

  ## Attributes

  - callbackUrl (String.t): The URL where notifications should be delivered (must start with https://). Defaults to: `null`.
  - collection (String.t): The collection to subscribe to. Allowed values are:   - timeline - Changes in the timeline including insertion, deletion, and updates.  - locations - Location updates.  - settings - Settings updates. Defaults to: `null`.
  - id (String.t): The ID of the subscription. Defaults to: `null`.
  - kind (String.t): The type of resource. This is always mirror#subscription. Defaults to: `null`.
  - notification (Notification): Container object for notifications. This is not populated in the Subscription resource. Defaults to: `null`.
  - operation ([String.t]): A list of operations that should be subscribed to. An empty list indicates that all operations on the collection should be subscribed to. Allowed values are:   - UPDATE - The item has been updated.  - INSERT - A new item has been inserted.  - DELETE - The item has been deleted.  - MENU_ACTION - A custom menu item has been triggered by the user. Defaults to: `null`.
  - updated (DateTime.t): The time at which this subscription was last modified, formatted according to RFC 3339. Defaults to: `null`.
  - userToken (String.t): An opaque token sent to the subscriber in notifications so that it can determine the ID of the user. Defaults to: `null`.
  - verifyToken (String.t): A secret token sent to the subscriber in notifications so that it can verify that the notification was generated by Google. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :callbackUrl => any(),
          :collection => any(),
          :id => any(),
          :kind => any(),
          :notification => GoogleApi.Mirror.V1.Model.Notification.t(),
          :operation => list(any()),
          :updated => DateTime.t(),
          :userToken => any(),
          :verifyToken => any()
        }

  field(:callbackUrl)
  field(:collection)
  field(:id)
  field(:kind)
  field(:notification, as: GoogleApi.Mirror.V1.Model.Notification)
  field(:operation, type: :list)
  field(:updated, as: DateTime)
  field(:userToken)
  field(:verifyToken)
end

defimpl Poison.Decoder, for: GoogleApi.Mirror.V1.Model.Subscription do
  def decode(value, options) do
    GoogleApi.Mirror.V1.Model.Subscription.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Mirror.V1.Model.Subscription do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end