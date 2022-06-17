
# Getting Started with WhatsApp Cloud API

## Introduction

Welcome to the WhatsApp API from Meta.

Individual developers and existing Business Service Providers (BSPs) can now send and receive messages via the WhatsApp API using a cloud-hosted version of the WhatsApp Business API. Compared to the previous solutions, the cloud-based WhatsApp API is simpler to use and is a more cost-effective way for businesses to use WhatsApp. Please keep in mind the following configurations:

| Name | Description |
| --- | --- |
| Version | Latest [Graph API version](https://developers.facebook.com/docs/graph-api/). For example: v13.0 |
| User-Access-Token | Your user access token after signing up at [developers.facebook.com](https://developers.facebook.com). |
| WABA-ID | Your WhatsApp Business Account (WABA) ID. |
| Phone-Number-ID | ID for the phone number connected to the WhatsApp Business API. You can get this with a [Get Phone Number ID request](3184f675-d289-46f1-88e5-e2b11549c418). |
| Business-ID | Your Business' ID. Once you have your Phone-Number-ID, make a [Get Business Profile request](#99fd3743-46cf-46c4-95b5-431c6a4eb0b0) to get your Business' ID. |
| Recipient-Phone-Number | Phone number that you want to send a WhatsApp message to. |
| Media-ID | ID for the media to [send a media message](#0a632754-3788-43bf-b785-ac6a73423d5a) or [media template message](#439c926a-8a6c-4972-ab2c-d99297716da9) to your customers. |
| Media-URL | URL for the media to [download media content](#cbe5ece3-246c-48f3-b338-074187dfef66). |

## Building

The generated code depends on a few Ruby gems. The references to these gems are added in the gemspec file. The easiest way to resolve the dependencies, build the gem and install it is through Rake:

1. Install Rake if not already installed: `gem install rake`
2. Install Bundler if not already installed: `gem install bundler`
3. From terminal/cmd navigate to the root directory of the SDK.
4. Invoke: `rake install`

Alternatively, you can build and install the gem manually:

1. From terminal/cmd navigate to the root directory of the SDK.
2. Run the build command: `gem build whats_app_cloud_api.gemspec`
3. Run the install command: `gem install whats_app_cloud_api-1.0.0.gem`

![Installing Gem](https://apidocs.io/illustration/ruby?workspaceFolder=WhatsAppCloudApi&gemVer=1.0.0&gemName=whats_app_cloud_api&step=buildSDK)

## Installation

The following section explains how to use the whats_app_cloud_api ruby gem in a new Rails project using RubyMine&trade;. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

### 1. Starting a new project

Close any existing projects in RubyMine&trade; by selecting `File -> Close Project`. Next, click on `Create New Project` to create a new project from scratch.

![Create a new project in RubyMine - Step 1](https://apidocs.io/illustration/ruby?workspaceFolder=WhatsAppCloudApi&step=createNewProject0)

Next, provide `TestApp` as the project name, choose `Rails Application` as the project type, and click `OK`.

![Create a new Rails Application in RubyMine - Step 2](https://apidocs.io/illustration/ruby?workspaceFolder=WhatsAppCloudApi&step=createNewProject1)

In the next dialog make sure that the correct Ruby SDK is being used (>= 2.6 and < 3.1) and click `OK`.

![Create a new Rails Application in RubyMine - Step 3](https://apidocs.io/illustration/ruby?workspaceFolder=WhatsAppCloudApi&step=createNewProject2)

### 2. Add reference of the gem

In order to use the Tester gem in the new project we must add a gem reference. Locate the `Gemfile` in the Project Explorer window under the `TestApp` project node. The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line: `gem 'whats_app_cloud_api', '1.0.0'`

![Add new reference to the Gemfile](https://apidocs.io/illustration/ruby?workspaceFolder=WhatsAppCloudApi&gemVer=1.0.0&gemName=whats_app_cloud_api&step=addReference)

### 3. Adding a new Rails Controller

Once the `TestApp` project is created, a folder named `controllers` will be visible in the *Project Explorer* under the following path: `TestApp > app > controllers`. Right click on this folder and select `New -> Run Rails Generator...`.

![Run Rails Generator on Controllers Folder](https://apidocs.io/illustration/ruby?workspaceFolder=WhatsAppCloudApi&gemVer=1.0.0&gemName=whats_app_cloud_api&step=addCode0)

Selecting the said option will popup a small window where the generator names are displayed. Here, select the `controller` template.

![Create a new Controller](https://apidocs.io/illustration/ruby?workspaceFolder=WhatsAppCloudApi&step=addCode1)

Next, a popup window will ask you for a Controller name and included Actions. For controller name provide `Hello` and include an action named `Index` and click `OK`.

![Add a new Controller](https://apidocs.io/illustration/ruby?workspaceFolder=WhatsAppCloudApi&gemVer=1.0.0&gemName=whats_app_cloud_api&step=addCode2)

A new controller class named `HelloController` will be created in a file named `hello_controller.rb` containing a method named `Index`. In this method, add code for initialization and a sample for its usage.

![Initialize the library](https://apidocs.io/illustration/ruby?workspaceFolder=WhatsAppCloudApi&gemName=whats_app_cloud_api&step=addCode3)

## Initialize the API Client

**_Note:_** Documentation for the client can be found [here.](doc/client.md)

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| `access_token` | `String` | The OAuth 2.0 Access Token to use for API requests. |
| `version` | `String` | *Default*: `'v13.0'` |
| `environment` | Environment | The API environment. <br> **Default: `Environment.PRODUCTION`** |
| `connection` | `Faraday::Connection` | The Faraday connection object passed by the SDK user for making requests |
| `adapter` | `Faraday::Adapter` | The Faraday adapter object passed by the SDK user for performing http requests |
| `timeout` | `Float` | The value to use for connection timeout. <br> **Default: 60** |
| `max_retries` | `Integer` | The number of times to retry an endpoint call if it fails. <br> **Default: 0** |
| `retry_interval` | `Float` | Pause in seconds between retries. <br> **Default: 1** |
| `backoff_factor` | `Float` | The amount to multiply each successive retry's interval amount by in order to provide backoff. <br> **Default: 2** |
| `retry_statuses` | `Array` | A list of HTTP statuses to retry. <br> **Default: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524]** |
| `retry_methods` | `Array` | A list of HTTP methods to retry. <br> **Default: %i[get put]** |

The API client can be initialized as follows:

```ruby
client = WhatsAppCloudApi::Client.new(
  access_token: 'AccessToken',
  environment: Environment::PRODUCTION,
  version: 'v13.0',
)
```

## Authorization

This API uses `OAuth 2 Bearer token`.

## List of APIs

* [Business Profiles](doc/controllers/business-profiles.md)
* [Phone Numbers](doc/controllers/phone-numbers.md)
* [Two-Step Verification](doc/controllers/two-step-verification.md)
* [Messages](doc/controllers/messages.md)
* [Registration](doc/controllers/registration.md)
* [Media](doc/controllers/media.md)

## Classes Documentation

* [Utility Classes](doc/utility-classes.md)
* [HttpResponse](doc/http-response.md)
* [HttpRequest](doc/http-request.md)

