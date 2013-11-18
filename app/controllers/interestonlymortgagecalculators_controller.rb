class InterestonlymortgagecalculatorsController < ApplicationController
  # GET /interestonlymortgagecalculators
  # GET /interestonlymortgagecalculators.json
  def index
    @interestonlymortgagecalculators = Interestonlymortgagecalculator.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @interestonlymortgagecalculators }
    end
  end



def imcalculate
@amount = params[:amount]
@rate = params[:rate]
@stress = params[:stress]
@monthlyRepayment, @stressTest = Calculator.InterestOnlyMortgageCalculator(@amount.to_i,@rate.to_i,@stress.to_i) 
end

def ricalculate
@amount = params[:amount]
@monthlycashflow= params[:monthlycashflow]

@getmoneyback, @returnoninvestment = Calculator.ReturnOnInvestmentCalculator(@amount.to_i,@monthlycashflow.to_i) 
end


def sdcalculate
@price = params[:price]


@stampduty= Calculator.StampDuty(@price.to_i) 
end
  # GET /interestonlymortgagecalculators/1
  # GET /interestonlymortgagecalculators/1.json
  def show
    @interestonlymortgagecalculator = Interestonlymortgagecalculator.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @interestonlymortgagecalculator }
    end
  end

  # GET /interestonlymortgagecalculators/new
  # GET /interestonlymortgagecalculators/new.json
  def new
    @interestonlymortgagecalculator = Interestonlymortgagecalculator.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @interestonlymortgagecalculator }
    end
  end

  # GET /interestonlymortgagecalculators/1/edit
  def edit
    @interestonlymortgagecalculator = Interestonlymortgagecalculator.find(params[:id])
  end

  # POST /interestonlymortgagecalculators
  # POST /interestonlymortgagecalculators.json
  def create
    @interestonlymortgagecalculator = Interestonlymortgagecalculator.new(params[:interestonlymortgagecalculator])

    respond_to do |format|
      if @interestonlymortgagecalculator.save
        format.html { redirect_to @interestonlymortgagecalculator, notice: 'Interestonlymortgagecalculator was successfully created.' }
        format.json { render json: @interestonlymortgagecalculator, status: :created, location: @interestonlymortgagecalculator }
      else
        format.html { render action: "new" }
        format.json { render json: @interestonlymortgagecalculator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /interestonlymortgagecalculators/1
  # PUT /interestonlymortgagecalculators/1.json
  def update
    @interestonlymortgagecalculator = Interestonlymortgagecalculator.find(params[:id])

    respond_to do |format|
      if @interestonlymortgagecalculator.update_attributes(params[:interestonlymortgagecalculator])
        format.html { redirect_to @interestonlymortgagecalculator, notice: 'Interestonlymortgagecalculator was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @interestonlymortgagecalculator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interestonlymortgagecalculators/1
  # DELETE /interestonlymortgagecalculators/1.json
  def destroy
    @interestonlymortgagecalculator = Interestonlymortgagecalculator.find(params[:id])
    @interestonlymortgagecalculator.destroy

    respond_to do |format|
      format.html { redirect_to interestonlymortgagecalculators_url }
      format.json { head :no_content }
    end
  end
end
