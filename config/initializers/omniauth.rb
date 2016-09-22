OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '178601552571848', '3b498018af233d5f16ee8c7190061a97',
            fields: 'first_name,last_name,email,gender,age_range',
            image: 'large',
            client_options: {
                   site: 'https://graph.facebook.com/v2.6',
                   authorize_url: "https://www.facebook.com/v2.6/dialog/oauth"
           }
end
