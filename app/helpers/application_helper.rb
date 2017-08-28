module ApplicationHelper
  def flash_message
    messages = ''
    %i[notice info warning error].each do |type|
      messages += "<p class=\"#{type}\">#{flash[type]}</p>" if flash[type]
    end

    messages += '<p class="notice">ok</p>'
    messages
  end
end
