class ClientsController < ApplicationController

  before_action :set_client, only: [:show, :edit, :update, :destroy]

  # GET /client/new
  # GET /client/new.xml
  def new
    @client = Client.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @client }
    end

  end

  # POST /clients
  # POST /clients.xml
  def create
    @client = Client.new(client_params)

    respond_to do |format|
      if @client.save
        format.html { redirect_to(@client, :notice => 'Le client a bien été créé.') }
        format.xml  { render :xml => @client, :status => :created, :location => @client }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @client.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /clients/1
  # PUT /clients/1.xml
  def update
    @client = Client.find(params[:id])

    respond_to do |format|
      if @client.update_attributes(client_params)
        format.html { redirect_to(@client, :notice => 'Les informations du client ont été mises à jour.') }
        format.xml { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml { render :xml => @client.errors, :status => :unprocessable_entity }
      end
    end
  end

  # GET /clients/1/edit
  def edit
    @client = Client.find(params[:id])
  end

  # DELETE /clients/1
  # DELETE /clients/1.xml
  def destroy
    @client = Client.find(params[:id])
    @client.destroy

    respond_to do |format|
        format.html { redirect_to(clients_url) }
        format.xml { head :ok }
    end
  end

  # GET /clients
  # GET /clients.xml
  def index
    @clients = Client.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @client }
    end
  end

  # GET /clients/1
  # GET /clients/1.xml
  def show
    @client = Client.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :xml => @client }
    end
  end

  private

  def set_client
    @client = Client.find(params[:id])
  end

  def client_params
    params.require(:client).permit(
      :prenom, :nom, :datenaissance, :nas, :adresse_id, :nombreenfants, :comptetaxesproprietaire,
      adresses_attributes: [:id, :numerocivique, :rue, :codepostal, :ville, :province, :_destroy],
      studies_attributes: [:id, :_destroy, :secteuretudes, :niveau, :datedebut, :datecompletion, :institution_id],
      institutions_attributes: [:id, :nom, :_destroy],
      employeurs_attributes: [:id, :nom, :_destroy],
      etat_civils_attributes: [:id, :type, :_destroy],
      enfants_attributes: [:id, :_destroy, :client_id, :nom, :prenom, :datenaissance]
    )
  end
end
