class ProductLivingsController < ApplicationController
  # GET /product_living
  # GET /product_living.json
  def index
    @product_living = ProductLiving.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @product_living }
    end
  end

  # GET /product_living/1
  # GET /product_living/1.json
  def show
    @product_living = ProductLiving.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product_living }
    end
  end

  # GET /product_living/new
  # GET /product_living/new.json
  def new
    @product_living = ProductLiving.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product_living }
    end
  end

  # GET /product_living/1/edit
  def edit
    @product_living = ProductLiving.find(params[:id])
  end

  # POST /product_living
  # POST /product_living.json
  def create
    @product_living = ProductLiving.new(params[:product_living])

    respond_to do |format|
      if @product_living.save
        format.html { redirect_to @product_living, notice: 'Product living was successfully created.' }
        format.json { render json: @product_living, status: :created, location: @product_living }
      else
        format.html { render action: "new" }
        format.json { render json: @product_living.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /product_living/1
  # PUT /product_living/1.json
  def update
    @product_living = ProductLiving.find(params[:id])

    respond_to do |format|
      if @product_living.update_attributes(params[:product_living])
        format.html { redirect_to @product_living, notice: 'Product living was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product_living.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_living/1
  # DELETE /product_living/1.json
  def destroy
    @product_living = ProductLiving.find(params[:id])
    @product_living.destroy

    respond_to do |format|
      format.html { redirect_to product_living_url }
      format.json { head :no_content }
    end
  end
end
