# needed to let discovery work (always goes to https)
if Rails.env.development? #don't fail on SSL errors
  OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
  OpenSSL::SSL::VERIFY_FAIL_IF_NO_PEER_CERT=OpenSSL::SSL::VERIFY_NONE
#  Rack::OAuth2.debug!
end
