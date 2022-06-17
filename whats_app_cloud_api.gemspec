Gem::Specification.new do |s|
  s.name = 'whats_app_cloud_api'
  s.version = '1.0.0'
  s.summary = 'whats_app_cloud_api'
  s.description = 'Welcome to the WhatsApp API from Meta.  Individual developers and existing Business Service Providers (BSPs) can now send and receive messages via the WhatsApp API using a cloud-hosted version of the WhatsApp Business API. Compared to the previous solutions, the cloud-based WhatsApp API is simpler to use and is a more cost-effective way for businesses to use WhatsApp. Please keep in mind the following configurations:  | Name | Description | | --- | --- | | Version | Latest [Graph API version](https://developers.facebook.com/docs/graph-api/). For example: v13.0 | | User-Access-Token | Your user access token after signing up at [developers.facebook.com](https://developers.facebook.com). | | WABA-ID | Your WhatsApp Business Account (WABA) ID. | | Phone-Number-ID | ID for the phone number connected to the WhatsApp Business API. You can get this with a [Get Phone Number ID request](3184f675-d289-46f1-88e5-e2b11549c418). | | Business-ID | Your Business\' ID. Once you have your Phone-Number-ID, make a [Get Business Profile request](#99fd3743-46cf-46c4-95b5-431c6a4eb0b0) to get your Business\' ID. | | Recipient-Phone-Number | Phone number that you want to send a WhatsApp message to. | | Media-ID | ID for the media to [send a media message](#0a632754-3788-43bf-b785-ac6a73423d5a) or [media template message](#439c926a-8a6c-4972-ab2c-d99297716da9) to your customers. | | Media-URL | URL for the media to [download media content](#cbe5ece3-246c-48f3-b338-074187dfef66). |'
  s.authors = ['APIMatic SDK Generator']
  s.email = 'support@apimatic.io'
  s.homepage = 'https://apimatic.io'
  s.license = 'MIT'
  s.add_dependency('logging', '~> 2.3')
  s.add_dependency('faraday', '~> 2.0', '>= 2.0.1')
  s.add_dependency('faraday-follow_redirects', '~> 0.2')
  s.add_dependency('faraday-multipart', '~> 1.0')
  s.add_dependency('faraday-gzip', '~> 0.1')
  s.add_dependency('faraday-retry', '~> 1.0')
  s.add_dependency('certifi', '~> 2018.1', '>= 2018.01.18')
  s.add_dependency('faraday-http-cache', '~> 2.2')
  s.required_ruby_version = ['>= 2.6']
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
