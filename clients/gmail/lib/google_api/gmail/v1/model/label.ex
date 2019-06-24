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

defmodule GoogleApi.Gmail.V1.Model.Label do
  @moduledoc """
  Labels are used to categorize messages and threads within the user's mailbox.

  ## Attributes

  *   `color` (*type:* `GoogleApi.Gmail.V1.Model.LabelColor.t`, *default:* `nil`) - The color to assign to the label. Color is only available for labels that have their type set to user.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The immutable ID of the label.
  *   `labelListVisibility` (*type:* `String.t`, *default:* `nil`) - The visibility of the label in the label list in the Gmail web interface.
  *   `messageListVisibility` (*type:* `String.t`, *default:* `nil`) - The visibility of the label in the message list in the Gmail web interface.
  *   `messagesTotal` (*type:* `integer()`, *default:* `nil`) - The total number of messages with the label.
  *   `messagesUnread` (*type:* `integer()`, *default:* `nil`) - The number of unread messages with the label.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The display name of the label.
  *   `threadsTotal` (*type:* `integer()`, *default:* `nil`) - The total number of threads with the label.
  *   `threadsUnread` (*type:* `integer()`, *default:* `nil`) - The number of unread threads with the label.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The owner type for the label. User labels are created by the user and can be modified and deleted by the user and can be applied to any message or thread. System labels are internally created and cannot be added, modified, or deleted. System labels may be able to be applied to or removed from messages and threads under some circumstances but this is not guaranteed. For example, users can apply and remove the INBOX and UNREAD labels from messages and threads, but cannot apply or remove the DRAFTS or SENT labels from messages or threads.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :color => GoogleApi.Gmail.V1.Model.LabelColor.t(),
          :id => String.t(),
          :labelListVisibility => String.t(),
          :messageListVisibility => String.t(),
          :messagesTotal => integer(),
          :messagesUnread => integer(),
          :name => String.t(),
          :threadsTotal => integer(),
          :threadsUnread => integer(),
          :type => String.t()
        }

  field(:color, as: GoogleApi.Gmail.V1.Model.LabelColor)
  field(:id)
  field(:labelListVisibility)
  field(:messageListVisibility)
  field(:messagesTotal)
  field(:messagesUnread)
  field(:name)
  field(:threadsTotal)
  field(:threadsUnread)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Gmail.V1.Model.Label do
  def decode(value, options) do
    GoogleApi.Gmail.V1.Model.Label.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Gmail.V1.Model.Label do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
