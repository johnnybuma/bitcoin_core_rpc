require 'httparty'
require 'json'

module BitcoinCoreRpc
  class Client
    include HTTParty

    def initialize(rpc_url, rpc_user, rpc_password)
      self.class.base_uri rpc_url
      @auth = { username: rpc_user, password: rpc_password }
    end

    private

    def request(method, *params)
      payload = {
        method: method,
        params: params,
        id: 'jsonrpc'
      }.to_json

      response = self.class.post('/', body: payload, headers: headers, basic_auth: @auth)
      JSON.parse(response.body)
    end

    def headers
      { 'Content-Type' => 'application/json' }
    end
  end
end
