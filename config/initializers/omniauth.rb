OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '135617806918685', '31856256b4c7123acd390b7b28ce1bcf', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end
