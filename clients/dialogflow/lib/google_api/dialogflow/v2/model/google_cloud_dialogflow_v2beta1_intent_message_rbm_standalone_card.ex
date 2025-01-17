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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard do
  @moduledoc """
  Standalone Rich Business Messaging (RBM) rich card.

  Rich cards allow you to respond to users with more vivid content, e.g.
  with media and suggestions.

  For more details about RBM rich cards, please see:
  https://developers.google.com/rcs-business-messaging/rbm/guides/build/send-messages#rich-cards.
  You can group multiple rich cards into one using RbmCarouselCard but
  carousel cards will give you less control over the card layout.

  ## Attributes

  *   `cardContent` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent.t`, *default:* `nil`) - Required. Card content.
  *   `cardOrientation` (*type:* `String.t`, *default:* `nil`) - Required. Orientation of the card.
  *   `thumbnailImageAlignment` (*type:* `String.t`, *default:* `nil`) - Required if orientation is horizontal.
      Image preview alignment for standalone cards with horizontal layout.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cardContent =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent.t(),
          :cardOrientation => String.t(),
          :thumbnailImageAlignment => String.t()
        }

  field(
    :cardContent,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent
  )

  field(:cardOrientation)
  field(:thumbnailImageAlignment)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
