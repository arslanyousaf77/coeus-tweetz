module Api
    module V1
      class Base < Grape::API
        mount Api::V1::Posts
        # mount API::V1::AnotherResource
      end
    end
  end