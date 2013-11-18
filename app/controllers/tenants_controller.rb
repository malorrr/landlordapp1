class TenantsController < ApplicationController
before_filter :authenticate_user!
  # GET /tenants

  # GET /tenants.json
  def index
    @tenants = Tenant.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tenants }
    end
  end

def sendmail
@useremail = params[:useremail]
@userpassword= params[:userpassword]

@email = params[:email]
@subject = params[:subject]
@message = params[:message]




my = EZsmtp::TEST.new('smtp.gmail.com','gmail.com',587,@useremail,@userpassword)

my.sendMail(@email,@subject,@message)
end

  # GET /tenants/1
  # GET /tenants/1.json
  def show
    @tenant = Tenant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tenant }
    end
  end

def showlease
@lease = Lease.find(params[:id])
@tenant = @lease.tenant
@property = @lease.property


respond_to do |format|
format.html # show.html.erb
format.xml { render :xml => @tenant }
end
end

  # GET /tenants/new
  # GET /tenants/new.json
  def new
    @tenant = Tenant.new
    @property = Property.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tenant }
    end
  end

  # GET /tenants/1/edit
  def edit
    @tenant = Tenant.find(params[:id])
  end

  # POST /tenants
  # POST /tenants.json
  def create
    @tenant = Tenant.new(params[:tenant])

    respond_to do |format|
      if @tenant.save
        format.html { redirect_to @tenant, notice: 'Tenant was successfully created.' }
        format.json { render json: @tenant, status: :created, location: @tenant }
      else
        format.html { render action: "new" }
        format.json { render json: @tenant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tenants/1
  # PUT /tenants/1.json
  def update
    @tenant = Tenant.find(params[:id])

    respond_to do |format|
      if @tenant.update_attributes(params[:tenant])
        format.html { redirect_to @tenant, notice: 'Tenant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tenant.errors, status: :unprocessable_entity }
      end
    end
  end



  # DELETE /tenants/1
  # DELETE /tenants/1.json
  def destroy
    @tenant = Tenant.find(params[:id])
    @tenant.destroy

    respond_to do |format|
      format.html { redirect_to tenants_url }
      format.json { head :no_content }
    end
  end
end
