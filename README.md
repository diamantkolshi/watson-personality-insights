# watson-personality-insights

The IBM Watson™ Personality Insights service provides an Application Programming Interface (API) that enables applications to derive insights from social media, enterprise data, or other digital communications. The service uses linguistic analytics to infer individuals' intrinsic personality characteristics, including Big Five, Needs, and Values, from digital communications such as email, text messages, tweets, and forum posts.

For more informations you can read [here](https://www.ibm.com/watson/developercloud/doc/personality-insights/)

## Prerequisites

To get an API username and password, you'll need to [sign up for IBM Bluemix](https://console.ng.bluemix.net/registration/).

After creating an instance of the Personality Insights service, select Service Credentials from the navigation on the left side of its dashboard page to see the username and password that are associated with the instance. For more information, see [Obtaining credentials for Watson services](https://www.ibm.com/watson/developercloud/doc/common/getting-started-credentials.html).

After create bluemix account and create username and passowrd credencials, you can use another gem for env variables as ([dotenv](https://github.com/bkeepers/dotenv), [figaro](https://github.com/laserlemon/figaro) or which you want to create env variables).

Then in (.env) file you should add:

```ruby
personality_insights_username=$your_username_from_bluemix
personality_insights_username=$your_password_from_bluemix
```

watson_langauge_translator will take your username and password and it will do request with this credencials, it's it!

## Getting Started in ruby
You can install this library

`gem install 'watson-personality-insights'`

and use

```ruby
require 'watson-personality-insights'
```

## Getting Started in Rails
PersonalityInsights works with Rails > 4.1 onwards. You can add it to your Gemfile with:

```ruby
gem 'watson-personality-insights'
```

Then run `bundle install`

## Use

#### Profile

Generates a personality profile for the author of the input text. The service accepts a maximum of 20 MB of input content. It can analyze text in Arabic, English, Japanese, or Spanish and return its results in a variety of languages. You can provide plain text, HTML, or JSON input. The service returns output in JSON format by default, but you can request the output in CSV format.

```ruby
@watson_personality = PersonalityInsights::Profile.new(json_file_url)
@watson_personality.get_profile( 
  version: '2016-10-20',
  consumption_preferences: true,
  raw_scores: true,
  content_language: "en", # {OPTIONAL} [ar, en (default), es, ja]
  accept: "application/json", # {OPTIONAL} [application/json (default), text/csv]
  accept_language: "es" # {OPTIONAL} [ar, de, en (the default), es, fr, it, ja, ko, pt-br (Brazilian Portuguese), zh-cn (Simplified Chinese), zh-tw (Traditional Chinese)
)
```
 
## License

This project is licensed under the MIT License
