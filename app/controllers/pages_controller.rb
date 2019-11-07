class PagesController < ApplicationController                                   
  before_action :set_page, only: [:show, :edit, :update, :destroy, :edit_count, :edit_performance, :edit_top, :edit_footer, :edit_contact, :edit_about, :edit_services, :edit_start, :edit_settings]

  # GET /pages
  # GET /pages.json
  def index
    @pages = Page.all
  end

  # GET /pages/1
  # GET /pages/1.json
  def show
    @incoming_contact = IncomingContact.new
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

  def edit_top
  end

  def edit_footer
  end

  def edit_contact
    @incoming_contact = IncomingContact.new
  end

  def edit_about
  end

  def edit_services
  end

  def edit_start
  end

  def edit_settings
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.find(1)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
      params.require(:page).permit(
                                  :mailer_send_to_email1,
                                  :mailer_send_to_email1,
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
                                  :performance_num4,
                                  :top_image,
                                  :top_text1,
                                  :top_text2,
                                  :top_text3,
                                  :top_text4,
                                  :foot_text1,
                                  :foot_text2,
                                  :foot_text3,
                                  :foot_text4,
                                  :foot_text5,
                                  :contact_text1,
                                  :contact_text2,
                                  :contact_text3,
                                  :contact_text4,
                                  :contact_text5,
                                  :contact_text6,
                                  :contact_text7,
                                  :contact_text8,
                                  :contact_text9,
                                  :contact_text10,
                                  :contact_text11,
                                  :contact_text12,
                                  :contact_text13,
                                  :contact_text14,
                                  :contact_text15,
                                  :about_text1,
                                  :about_text2,
                                  :about_text3,
                                  :about_text4,
                                  :about_text5,
                                  :about_text6,
                                  :about_text7,
                                  :about_text8,
                                  :about_text9,
                                  :about_text10,
                                  :about_text11,
                                  :about_text12,
                                  :about_text13,
                                  :about_text14,
                                  :about_text15,
                                  :about_image,
                                  :services_text1,
                                  :services_text2,
                                  :services_text3,
                                  :services_text4,
                                  :services_text5,
                                  :services_text6,
                                  :services_text7,
                                  :services_text8,
                                  :services_text9,
                                  :services_text10,
                                  :services_text11,
                                  :services_text12,
                                  :services_text13,
                                  :services_text14,
                                  :services_text15,
                                  :services_text16,
                                  :services_text17,
                                  :services_text18,
                                  :services_text19,
                                  :services_text20,
                                  :services_text21,
                                  :services_text22,
                                  :services_text23,
                                  :services_text24,
                                  :services_text25,
                                  :services_text26,
                                  :services_text27,
                                  :services_text28,
                                  :services_text29,
                                  :services_text30,
                                  :start_text1,
                                  :start_text2,
                                  :start_text3,     
                                  :start_button_text,
                                  :show_home,
                                  :show_about,
                                  :show_stats,
                                  :show_services,
                                  :show_performance,
                                  :show_get_started,
                                  :show_contact,
                                  :show_logo_image,
                                  :show_logo_text,
                                  :logo_image,
                                  :logo_text1,
                                  :logo_text2, 
                                  :logo_text3
                                  )
    end
end
