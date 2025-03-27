module ApplicationHelper
  def markdown(text)
    Commonmarker.parse(text, options: {
      parse: { smart: true }
    }).to_html.html_safe
  end
end
