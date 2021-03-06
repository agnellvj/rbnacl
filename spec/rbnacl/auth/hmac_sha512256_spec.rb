require 'spec_helper'

describe Crypto::Auth::HmacSha512256 do
  # From RFC4231 (https://tools.ietf.org/html/rfc4231)
  let(:key) { "Jefe" }
  let(:message) { "what do ya want for nothing?" }
  let(:tag) {
    [0x16,0x4b,0x7a,0x7b,0xfc,0xf8,0x19,0xe2,0xe3,0x95,0xfb,0xe7,0x3b,0x56,0xe0,0xa3,
     0x87,0xbd,0x64,0x22,0x2e,0x83,0x1f,0xd6,0x10,0x27,0x0c,0xd7,0xea,0x25,0x05,0x54].pack("c*")
  }

  include_examples "authenticator"
end
