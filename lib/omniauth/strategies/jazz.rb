require 'omniauth-oauth'
require 'openssl'


module OmniAuth
    module Strategies

        class Jazz < OmniAuth::Strategies::OAuth
            option :name, 'jazz'
            option :client_options, {
                :authorize_path => '/jts/oauth-authorize',
                :request_token_path => '/jts/oauth-request-token',
                :access_token_path => '/jts/oauth-access-token',
            }

            # Allow Jazz server to use an untrusted certificate
            def consumer
                consumer = super
                consumer.http.verify_mode = OpenSSL::SSL::VERIFY_NONE
                consumer.http.verify_depth = 0
                consumer
            end
        end
    end
end
