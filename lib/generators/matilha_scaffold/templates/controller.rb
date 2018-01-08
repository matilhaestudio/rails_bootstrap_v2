class <%= name.pluralize.capitalize %>Controller < ApplicationController
  before_action :set_<%= singular_table_name %>, only: [:show, :edit, :update, :destroy]

  def index
    respond_to do |f|
      f.html
      f.json {render json: <%= name.capitalize %>Datatable.new(view_context)}
    end
  end

  def show
  end

  def new
    @<%= singular_table_name %> = <%= name.capitalize %>.new
  end

  def create
    @<%= singular_table_name %> = <%= name.capitalize %>.new(<%= singular_table_name %>_params)

    if @<%= singular_table_name %>.save
      redirect_to <%= index_helper %>_path, notice: 'Criado com sucesso'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @<%= singular_table_name %>.update(<%= singular_table_name %>_params)
      redirect_to <%= index_helper %>_path, notice: 'Atualizado com sucesso'
    else
      render :edit
    end
  end

  def destroy
    @<%= singular_table_name %>.destroy

    redirect_to <%= index_helper %>_path, notice: 'Deletado com sucesso'
  end

  private

  def set_<%= singular_table_name %>
    @<%= singular_table_name %> = <%= name %>.find(params[:id])
  end

  def <%= singular_table_name %>_params
    params.require(:<%= singular_table_name %>).permit(<%= attributes.map {|a| ":#{a.name}" }.join(', ') %>)
  end
end
