module Cucumber
  module Messages
  end
end
require 'cucumber/messages_pb'
require 'cucumber/messages/binary_to_message_enumerator'
require 'cucumber/messages/ndjson_to_message_enumerator'
require 'cucumber/messages/protobuf_delimited'
require 'cucumber/messages/protobuf_ndjson'
require 'cucumber/messages/time_conversion'
require 'cucumber/messages/id_generator'

Cucumber::Messages::Envelope.include(Cucumber::Messages::WriteNdjson)
Cucumber::Messages::Envelope.include(Cucumber::Messages::WriteDelimited)
Cucumber::Messages::Envelope.extend(Cucumber::Messages::ParseDelimited)
