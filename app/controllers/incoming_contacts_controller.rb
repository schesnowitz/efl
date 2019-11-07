class IncomingContactsController < ApplicationController
  before_action :set_incoming_contact, only: [:show, :edit, :update, :destroy]

  # GET /incoming_contacts
  # GET /incoming_contacts.json
  def index
    @incoming_contacts = IncomingContact.all
  end

  # GET /incoming_contacts/1
  # GET /incoming_contacts/1.json
  def show
  end

  # GET /incoming_contacts/new
  def new
    @incoming_contact = IncomingContact.new
  end

  # GET /incoming_contacts/1/edit
  def edit
  end

  # POST /incoming_contacts
  # POST /incoming_contacts.json
  def create
    @incoming_contact = IncomingContact.new(incoming_contact_params)

    respond_to do |format|
      if @incoming_contact.save
        format.html { IncomingContactMailer.incoming_contact(@incoming_contact).deliver_now
        flash[:success] = "Your message has been sent."
        redirect_to root_path}
        format.json { render :show, status: :created, location: @incoming_contact }
      else
        format.html { flash[:danger] = "Sorry, there was a problem! " + @incoming_contact.errors.full_messages.to_sentence 
        redirect_to root_path }
        format.json { render json: @incoming_contact.errors, status: :unprocessable_entity }
      end
    end
  end
  # IncomingContactMailer.new_incoming_contact(@incoming_contact).deliver_now

  # PATCH/PUT /incoming_contacts/1
  # PATCH/PUT /incoming_contacts/1.json
  def update
    respond_to do |format|
      if @incoming_contact.update(incoming_contact_params)
        format.html { redirect_to @incoming_contact, notice: 'Incoming contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @incoming_contact }
      else
        format.html { render :edit }
        format.json { render json: @incoming_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incoming_contacts/1
  # DELETE /incoming_contacts/1.json
  def destroy
    @incoming_contact.destroy
    respond_to do |format|
      format.html { redirect_to incoming_contacts_url, notice: 'Incoming contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incoming_contact
      @incoming_contact = IncomingContact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def incoming_contact_params
      params.require(:incoming_contact).permit(:name, :email, :message)
    end
end
