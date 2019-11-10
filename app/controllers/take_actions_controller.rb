class TakeActionsController < ApplicationController
  before_action :set_take_action, only: [:show, :edit, :update, :destroy]

  # GET /take_actions
  # GET /take_actions.json
  def index
    @take_actions = TakeAction.all
  end

  # GET /take_actions/1
  # GET /take_actions/1.json
  def show
  end

  # GET /take_actions/new
  def new
    @take_action = TakeAction.new
  end

  # GET /take_actions/1/edit
  def edit
  end

  # POST /take_actions
  # POST /take_actions.json
  def create
    @take_action = TakeAction.new(take_action_params)

    respond_to do |format|
      if @take_action.save
        format.html { redirect_to @take_action, notice: 'Take action was successfully created.' }
        format.json { render :show, status: :created, location: @take_action }
      else
        format.html { render :new }
        format.json { render json: @take_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /take_actions/1
  # PATCH/PUT /take_actions/1.json
  def update
    respond_to do |format|
      if @take_action.update(take_action_params)
        format.html { redirect_to @take_action, notice: 'Take action was successfully updated.' }
        format.json { render :show, status: :ok, location: @take_action }
      else
        format.html { render :edit }
        format.json { render json: @take_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /take_actions/1
  # DELETE /take_actions/1.json
  def destroy
    @take_action.destroy
    respond_to do |format|
      format.html { redirect_to take_actions_url, notice: 'Take action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_take_action
      @take_action = TakeAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def take_action_params
      params.require(:take_action).permit(:hide_take_action, :take_action_string_1, :take_action_string_2, :take_action_string_3, :take_action_string_4)
    end
end
