class Api::V1::RecipesController < ApplicationController
  before_action :set_user
  before_action :ensure_user, only: [:create, :update, :destroy]
  before_action :set_recipe, only: [:show, :update, :destroy]

  # GET /recipes
  # GET /users/:user_id/recipes
  def index
    @recipes = if @user
      @user.recipes.all
    else
      Recipe.all
    end

    render json: @recipes
  end

  # GET /recipes/:id
  # GET /users/:user_id/recipes
  def show
    render json: @recipe
  end

  # POST /users/:user_id/recipes
  def create
    @recipe = @user.recipes.build(recipe_params)

    if @recipe.save
      render json: @recipe, status: :created, location: api_v1_recipe_url(@recipe)
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/:user_id/recipes/:id
  def update
    if @recipe.update(recipe_params)
      render json: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/:user_id/recipes/:id
  def destroy
    @recipe.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.

  def set_user
    if params.fetch(:user_id, nil)
      @user = User.find(params[:user_id])
    else
      @user = nil
    end
  end

  def ensure_user
    unless @user.present?
      raise "User must be provided"
    end
  end

  def set_recipe
    @recipe = if @user.present?
      @user.recipes.find_by(id: params[:id])
    else
      Recipe.find(params[:id])
    end
  end

  # Only allow a trusted parameter "white list" through.
  def recipe_params
    params.require(:recipe).permit(
      :name, :description, :notes,
      ingredients_attributes: [:name, :quantity, :measure_id, :prep_notes],
      steps_attributes: [:description, :sequence]
    )
  end
end
