class ExamplesController < ApplicationController
  before_action :set_example, only: [:show, :edit, :update, :destroy]

  def index
    respond_to do |f|
      f.html
      f.json {render json: ExampleDatatable.new(view_context)}
    end
  end

  def show
  end

  def new
    @example = Example.new
  end

  def create
    @example = Example.new(example_params)

    if @example.save
      redirect_to examples_path, notice: 'Criado com sucesso'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @example.update(example_params)
      redirect_to examples_path, notice: 'Atualizado com sucesso'
    else
      render :edit
    end
  end

  def destroy
    @example.destroy

    redirect_to examples_path, notice: 'Deletado com sucesso'
  end

  private

  def set_example
    @example = Example.find(params[:id])
  end

  def example_params
    params.require(:example).permit(:foo, :bar)
  end
end
