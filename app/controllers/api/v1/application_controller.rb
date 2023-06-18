module Api
  class V1::ApplicationController < ActionController::API
    # V1::ApplicationControllerを継承したコントローラのメソッドにアクセス時、HTTPリクエストヘッダに、「Authorization: “Bearer *****************(トークン)”」を入れるだけで、勝手にJWT認証してくれるようになります。
    
    include Firebase::Auth::Authenticable
    before_action :authenticate_user
  end
end
