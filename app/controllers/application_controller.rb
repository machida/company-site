class ApplicationController < ActionController::Base
  before_action :site_information
  before_action :month_articles
  before_action :tag_cloud
  before_action :recent_articles
  protect_from_forgery with: :exception

  # devise ログイン後のリダイレクト
  def after_sign_in_path_for(resource)
    staffs_root_path
  end

  def site_information
    @site = Site.find(:first)
  end

  # cancanの名前をuserからstaffにoverride
  def current_ability
    if current_staff
      @current_ability ||= Ability.new(current_staff)
    end
  end

  # 投稿の月別アーカイブ作成
  def month_articles
    @articles_by_month = Article.published.order("created_at DESC").group_by { |article| article.created_at.strftime("%Y/%m")}
  end

  # 最新の投稿20件表示
  def recent_articles
    @articles = Article.published.order("created_at DESC").limit(10)
  end

  # order('count DESC')でカウントの多い順にタグを並べています
  def tag_cloud
    @tags = Article.tag_counts_on(:tags).order('count DESC')
  end

end
