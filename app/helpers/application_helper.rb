module ApplicationHelper
  def outgoing_menssage
    if notice
      raw "<h4 class='alert_success'>#{notice}</h4>"
    end
  end

  def arrow_left
    image_tag('icons/116767-matte-blue-and-white-square-icon-arrows-arrow-thick-left.png', height: '50px', width: '50px')
  end

  def arrow_right
    image_tag('icons/116768-matte-blue-and-white-square-icon-arrows-arrow-thick-right.png', height: '50px', width: '50px')
  end

  def submit_link(form)
    if params[:action] == 'new'
      form.submit(I18n.t(:create), class: 'btn btn-success')
    else
      form.submit(I18n.t(:update), class: 'btn btn-primary')
    end
  end

  def show_icon(object)
    val = (object) ? true : false
    image_tag "#{val}.png"
  end

  def comments(post)
    html = ""
    post.comments.each do |comment|
      html << "<p>#{comment.name}</p>"
      html << "<p>#{comment.email}</p>"
      html << "<p>#{comment.description}</p>"
    end
    raw html
  end
end
