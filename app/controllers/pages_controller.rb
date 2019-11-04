class PagesController < ApplicationController
  before_action :set_page, only: [:show, :edit, :update, :destroy, :edit_count, :edit_performance]

  # GET /pages
  # GET /pages.json
  def index
    @pages = Page.all
  end

  # GET /pages/1
  # GET /pages/1.json
  def show
  end

  # GET /pages/new
  def new
    @page = Page.new
  end

  # GET /pages/1/edit
  def edit
  end

  # POST /pages
  # POST /pages.json
  def create
    @page = Page.new(page_params)

    respond_to do |format|
      if @page.save
        format.html { redirect_to @page, notice: 'Page was successfully created.' }
        format.json { render :show, status: :created, location: @page }
      else
        format.html { render :new }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pages/1
  # PATCH/PUT /pages/1.json
  def update
    respond_to do |format|
      if @page.update(page_params)
        flash[:success] = "Page Updated"
        format.html { redirect_back(fallback_location: root_path) }
        format.json { render :show, status: :ok, location: @page }
      else
        flash[:danger] = @page.errors.full_messages.to_sentence
        format.html { redirect_back(fallback_location: root_path) }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pages/1
  # DELETE /pages/1.json
  def destroy
    @page.destroy
    respond_to do |format|
      format.html { redirect_to pages_url, notice: 'Page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  def edit_count
  end

  def edit_performance
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.find(1)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
      params.require(:page).permit(
                                  :name, 
                                  :count_image,
                                  :count_text1,
                                  :count_text2,
                                  :count_text3,
                                  :count_text4,
                                  :count_text5,
                                  :count_text6,
                                  :count_num1,
                                  :count_num2,
                                  :count_num3,
                                  :performance_image,
                                  :performance_text1,
                                  :performance_text2,
                                  :performance_text3,
                                  :performance_text4,
                                  :performance_text5,
                                  :performance_text6,
                                  :performance_text7,
                                  :performance_text8,
                                  :performance_text9,
                                  :performance_text10,
                                  :performance_text11,
                                  :performance_text12,
                                  :performance_text13,
                                  :performance_text14,
                                  :performance_text15,
                                  :performance_num1,
                                  :performance_num2,
                                  :performance_num3,
                                  :performance_num4
                                  )
    end
end

