OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '178601552571848', '3b498018af233d5f16ee8c7190061a97'
end
