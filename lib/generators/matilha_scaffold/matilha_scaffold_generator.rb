class MatilhaScaffoldGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)
  argument :attributes, type: :array, default: [], banner: "field:type field:type"
  # include Devise::Generators::OrmHelpers

  def generate_model_and_migrations
    system "rails generate model #{name} #{attributes_and_types} --force"
  end

  def generate_controller
    template "controller.rb", File.join("app/controllers", "#{plural_table_name}_controller.rb")
  end

  def generate_datatables
    template "datatable.rb", File.join("app/datatables", "#{singular_table_name}_datatables.rb")
  end

  def generate_views
    [:index, :new, :edit, :show, :_form].each do |view|
      template "#{view}.html.erb", File.join("app/views/#{plural_table_name}", "#{view}.html.erb")
    end
  end

  def append_route
    route "resources :#{plural_table_name}"
  end

  private

  def attributes_and_types
    attributes.map do |attribute|
      "#{attribute.name}:#{attribute.type}"
    end.join(' ')
  end
end
