require "#{Rails.root}/app/datatables/datatable"

class <%= name.capitalize %>Datatable < Datatable
  def initialize(view)
    super(view, <%= name.capitalize %>.all)
  end

  private

  def data
    records.map do |<%= singular_table_name %>|
      [
        <%= attributes.map {|a| "#{singular_table_name}.#{a.name}" }.join(",\n        ") %>,
        link_to("Editar", edit_<%= singular_table_name %>_path(<%= singular_table_name %>)),
        link_to("Apagar", <%= singular_table_name %>, method: :delete)
      ]
    end
  end

  def sort_column
    columns = <%= attributes.map { |a| a.name.to_sym } %>
    columns[params[:iSortCol_0].to_i]
  end

  def search
    :<%= attributes.map {|a| "#{a.name}"}.join('_or_') %>_cont
  end
end
