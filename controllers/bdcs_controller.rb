class BdcsController < ApplicationController
  # GET /bdcs
  # GET /bdcs.json
  def index
    @bdcs = Bdc.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bdcs }
    end
  end

  # GET /bdcs/1
  # GET /bdcs/1.json
  def show
    @bdc = Bdc.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bdc }
    end
  end

  # GET /bdcs/new
  # GET /bdcs/new.json
  def new
    @bdc = Bdc.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bdc }
    end
  end

  # GET /bdcs/1/edit
  def edit
    @bdc = Bdc.find(params[:id])
  end

  # POST /bdcs
  # POST /bdcs.json
  def create
    @bdc = Bdc.new(params[:bdc])

    respond_to do |format|
      if @bdc.save
        format.html { redirect_to @bdc, notice: 'Bdc was successfully created.' }
        format.json { render json: @bdc, status: :created, location: @bdc }
      else
        format.html { render action: "new" }
        format.json { render json: @bdc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bdcs/1
  # PUT /bdcs/1.json
  def update
    @bdc = Bdc.find(params[:id])

    respond_to do |format|
      if @bdc.update_attributes(params[:bdc])
        format.html { redirect_to @bdc, notice: 'Bdc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bdc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bdcs/1
  # DELETE /bdcs/1.json
  def destroy
    @bdc = Bdc.find(params[:id])
    @bdc.destroy

    respond_to do |format|
      format.html { redirect_to bdcs_url }
      format.json { head :no_content }
    end
  end
end
