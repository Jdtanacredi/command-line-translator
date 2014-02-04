#WIP

class Translation
  AUTH_TOKEN = ENV["VERBALIZE_IT_SANDBOX"]

  def initialize lang_name, translate_phrase
    @lang_name = lang_name
    @translate_phrase = translate_phrase
  end

  def get_languages
    parsed = JSON.parse RestClient.get('https://sandboxapi.verbalizeit.com/v1/languages.json')
  end
end