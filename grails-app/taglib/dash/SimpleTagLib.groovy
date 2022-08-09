package dash

class SimpleTagLib {
  def simple = {attrs, body ->
      out<< body()<<(attrs.happy == 'true'? ":)": ":(")
    }
}
