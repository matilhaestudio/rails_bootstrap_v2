require "#{Rails.root}/app/datatables/datatable"

class ExampleDatatable < Datatable
  def initialize(view)
    super(view, Example.all)
  end

  private

  def data
    records.map do |example|
      [
        example.foo,
        example.bar,
        link_to("Editar", edit_example_path(example)),
        link_to("Apagar", example, method: :delete)
      ]
    end
  end

  def sort_column
    columns = [:foo, :bar]
    columns[params[:iSortCol_0].to_i]
  end

  def search
    :foo_or_bar_cont
  end
end
