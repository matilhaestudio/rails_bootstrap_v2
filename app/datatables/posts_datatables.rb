class PostsDatatable
  include ActionView::Helpers::UrlHelper
  include ApplicationHelper

  delegate :params, :link_to, to: :@view

  def initialize(view, results)
    @view = view
    @results = results
  end

  def as_json(_options = {})
    {
      iTotalRecords: Post.count,
      aaData: data
    }
  end

  private

  def data
    @results.map do |post|
      [
        '',
        post.title,
        post.description
      ]
    end
  end

  def posts
    @posts ||= fetch_posts
  end

  def fetch_posts
    # posts = @results.order("#{sort_column} #{sort_direction}")

    # posts = posts.page(page).per(per_page)
    # if params[:sSearch].present?
    #   posts = posts.search(post_name_count: params[:sSearch]).result
    # end

    # posts
  end

  def page
    params[:iDisplayStart].to_i/per_page + 1
  end

  def per_page
    params[:iDisplayLength].to_i > 0 ? params[:iDisplayLength].to_i : 10
  end

  def sort_column
    # columns = ['created_at', 'company_name', 'responsible_name', 'cnpj', 'active', 'action']
    # columns[params[:iSortCol_0].to_i]
  end

  def sort_direction
    params[:sSortDir_0] == "desc" ? "desc" : "asc"
  end

  def url_helpers
    Rails.application.routes.url_helpers
  end
end
