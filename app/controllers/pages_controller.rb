class PagesController < ApplicationController                                   
  before_action :set_page, only: [:show]
  before_action :set_stat, only: [:show]
  before_action :set_header, only: [:show]
  before_action :set_contact, only: [:show]
  before_action :set_about, only: [:show]
  before_action :set_footer, only: [:show]
  before_action :set_service, only: [:show]
  before_action :set_performance, only: [:show]
  before_action :set_take_action, only: [:show]

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




  # def edit_contact
  #   @incoming_contact = IncomingContact.new
  # end

  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.find(1)
    end

    def set_stat
      @stat = Stat.find(1)
    end

    def set_header
      @header = Header.find(1)
    end

    def set_contact
      @contact = Contact.find(1)
    end

    def set_about
      @about = About.find(1)
    end

    def set_footer
      @footer= Footer.find(1)
    end

    def set_performance
      @performance= Performance.find(1)
    end

    def set_service
      @service= Service.find(1)
    end

    def set_take_action
      @take_action= TakeAction.find(1)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
      params.require(:page).permit(
                                  :mailer_send_to_email1,
                                  :mailer_send_to_email1,
                                  :logo_image
                                
                                  )
    end
end
