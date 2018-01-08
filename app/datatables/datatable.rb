class Datatable
  include Rails.application.routes.url_helpers
  include ActionView::Helpers::AssetTagHelper
  include ApplicationHelper

  delegate :params, :link_to, to: :@view
  attr_reader :model, :search

  def initialize(view, model, search = nil)
    @view = view
    @model = model
    @search = search
  end

  def as_json(_options = {})
    {
      iTotalRecords: model.count,
      iTotalDisplayRecords: records.try(:total_count) || records.count,
      aaData: data
    }
  end

  def data
    raise NotImplementedError,
      "data should be implemented by classes inheriting from Datatable"
  end

  private

  def records
    @results ||= fetch_records
  end

  def fetch_records
    fetched_records = model.order("#{sort_column} #{sort_direction}")

    fetched_records = fetched_records.page(page).per(per_page)

    if params[:sSearch].present? && search.present?
      fetched_records = model.search("#{search}": params[:sSearch]).result
    end

    fetched_records
  end

  def page
    params[:iDisplayStart].to_i/per_page + 1
  end

  def per_page
    params[:iDisplayLength].to_i > 0 ? params[:iDisplayLength].to_i : 10
  end

  def sort_column
    columns = ['id']
    columns[params[:iSortCol_0].to_i]
  end

  def sort_direction
    params[:sSortDir_0] == "desc" ? "desc" : "asc"
  end
end
