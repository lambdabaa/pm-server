
require 'omniauth'
require 'omniauth-facebook'
require 'openssl'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
Rails.application.config.middleware.use OmniAuth::Builder do
  provider(:facebook, '188887597923345', '07bc47165d102c99c71761e20afd271b', {
    :display => 'popup',
    :scope => 'email,user_birthday,user_relationships'
  })
end
