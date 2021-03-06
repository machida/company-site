module ApplicationHelper

  def page_slug
    controller.class.to_s.underscore.
      gsub(%r{/}, "-").
      gsub(/_controller/, "_") + action_name
  end

  %w(home articles pages tags categories members services archives).each do |controller|
    define_method("#{controller}?") do
      params[:controller] == controller and params[:action] == 'index'
    end
  end

  %w(articles pages tags categories members services archives contacts).each do |controller|
    define_method("#{controller.singularize}?") do
      (params[:controller] == controller and params[:action] == 'show') or (params[:controller] == controller and params[:action] == 'new')
    end
  end

  def pc?
    browser.platform == 'mac' or browser.platform == 'windows' or browser.platform == 'linux'
  end

  def sign_in?
    params[:controller] == 'sessions' and params[:action] == 'new'
  end

  def contact?
    params[:controller] == "contact" and params[:action] == 'new' or params[:action] == 'create'
  end

  def staffs?
    (params[:controller]).include?("staffs")
  end

  def devise?
    (params[:controller]).include?("devise")
  end


  %w(development test production).each do |env|
    define_method("#{env}?") do
      Rails.env == env
    end
  end

  def current_path(path)
    "is-current" if current_page?(path)
  end

  def current_controller(controller)
    "is-current" if current_page?(:controller => controller)
  end

  def gravatar_image_url(email = nil, size = nil)
    url = 'http://www.gravatar.com/avatar/'
    url += if email
      Digest::MD5.hexdigest(email)
    else
      '0' * 32
    end
    size ? "#{url}?size=#{size}" : url
  end

  def show_date(time)
    return time unless time
    time.strftime("%Y/%m/%d")
  end

  def show_at(time)
    return time unless time
    time.strftime("%Y/%m/%d %H:%M:%S")
  end

  def controller?(*controller)
    controller.include?(params[:controller])
  end

  def action?(*action)
    action.include?(params[:action])
  end

  # タグの初期化（更新時に使用）
  def initial_tag_list(tag_list)
    raw tag_list.map{|tag| generate_tag_list(tag)}.join
  end

  def add_tag_input
    content_tag('span', onclick: "add_tag_field(\"#{escape_javascript(generate_tag_list)}\"); return false;", class: "tag-add-button") do
      content_tag('i', '', class: "fa fa-plus tag-add-button__icon") +
      t("Add Tag")
    end
  end

  def markdown(text)
    options = [:hard_wrap, :filter_html, :autolink, :no_intraemphasis, :fenced_code, :gh_blockcode]
    syntax_highlighter(Redcarpet.new(text, *options).to_html).html_safe
  end

  def syntax_highlighter(html)
    doc = Nokogiri::HTML(html)
    doc.search("//pre[@lang]").each do |pre|
      pre.replace Albino.colorize(pre.text.rstrip, pre[:lang])
    end
    doc.to_s
  end

  def generate_tag_list(tag = nil)
    content = '<li class="tag_list"><input class="tag_input" type="text"'
    content += " value=\"#{tag}\"" if tag
    content += ' />'
    content += remove_tag_input
    content += '</li>'
  end

  def remove_tag_input
    link_to '#', onclick: "remove_tag_field(this); return false;", class: "tag-delete-button" do
      content_tag('i', '', class: "fa fa-times")
    end
  end

  def edit_path
    if current_staff
      if params[:controller] == "pages"
        content_tag('p', class: "edit-block") do
          link_to "/staffs/pages/#{@page.slug}/edit", class: "edit-block__link" do
            content_tag('i', '', class: "fa fa-times edit-block__link-icon")
          end
        end
      elsif params[:controller] == "articles"
        content_tag('p', class: "edit-block") do
          link_to "/staffs/articles/#{@article.id}/edit", class: "edit-block__link" do
            content_tag('i', '', class: "fa fa-pencil-square-o edit-block__link-icon")
          end
        end
      elsif params[:controller] == "services"
        content_tag('p', class: "edit-block") do
          link_to "/staffs/services/#{@service.slug}/edit", class: "edit-block__link" do
            content_tag('i', '', class: "fa fa-pencil-square-o edit-block__link-icon")
          end
        end
      elsif params[:controller] == "members"
        content_tag('p', class: "edit-block") do
          link_to "/staffs/staffs/#{@staff.slug}/edit", class: "edit-block__link" do
            content_tag('i', '', class: "fa fa-pencil-square-o edit-block__link-icon")
          end
        end
      end
    end
  end

  def mobile?
    browser.name == 'iPhone' or browser.name == 'Android'
  end

end
