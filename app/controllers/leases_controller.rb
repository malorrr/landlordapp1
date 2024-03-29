class LeasesController < ApplicationController

before_filter :authenticate_user!
  # GET /leases
  # GET /leases.json
  def index
    @leases = Lease.all
    @properties = Property.all
    @tenants = Tenant.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @leases }
    end
  end

  # GET /leases/1
  # GET /leases/1.json
  def show
    @lease = Lease.find(params[:id])
    @properties = Property.all
    @tenants = Tenant.all
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lease }
    end
  end

  # GET /leases/new
  # GET /leases/new.json
  def new
    @lease = Lease.new
    @properties = Property.all
    @tenants = Tenant.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lease }
    end
  end

  # GET /leases/1/edit
  def edit
    @lease = Lease.find(params[:id])
    @properties = Property.all
    @tenants = Tenant.all
  end

  # POST /leases
  # POST /leases.json
  def create
    @lease = Lease.new(params[:lease])

    respond_to do |format|
      if @lease.save
        format.html { redirect_to @lease, notice: 'Lease was successfully created.' }
        format.json { render json: @lease, status: :created, location: @lease }
      else
        format.html { render action: "new" }
        format.json { render json: @lease.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /leases/1
  # PUT /leases/1.json
  def update
    @lease = Lease.find(params[:id])

    respond_to do |format|
      if @lease.update_attributes(params[:lease])
        format.html { redirect_to @lease, notice: 'Lease was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lease.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leases/1
  # DELETE /leases/1.json
  def destroy
    @lease = Lease.find(params[:id])
    @lease.destroy

    respond_to do |format|
      format.html { redirect_to leases_url }
      format.json { head :no_content }
    end
  end
end
