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
  
  
  def product
    
    @product_living = ProductLiving.find(params[:id])
    @result = Result.new
    @result.status = 1
    @result.msg = ''
    @result.result = @product_living
    render json:@result   
    
  end
  
  def products
    
    #http://lookboard.com/lookboard-test/index.php/services/Product/list?user_id=23023&page=1&category=106&keyword=&view=text
    
    @result = Result.new
    
    @limit = 100;
    
    if params[:page].blank?            
      @page = params[:page]  
    else
      @page = 1
    end
          
    #@start = (@page - 1) * @limit
    @start = 0 * @limit
    
    
    if params[:user_id].blank?   
      #@result.status = 0
      #@result.errmsg = "user not found"              
      #render json:@result
      #return
      @user_id = 0;
    else 
      @user_id  = params[:user_id]  
    end
              
    
    if params[:keyword].blank?               
      @keyword = params[:keyword]  
    else 
      @keyword = ""  
    end
    
    if params[:category].blank?                 
      @category = params[:category]  
    else 
      @category = ""  
    end
         
             
    
    @list_product = ProductLiving.search(@user_id, @keyword, @category, @start, @limit)
    #@products ||= find_products    
     
    if @list_product.blank?
      @result.status = 1
      @result.msg = "The list is empty.";
      @result.result = Array.new
    else
       @result.status = 1 
       @result.msg = ""
       @result.result = @list_product            
    end
    
    render json:@result 
    
  end
  
  
  
  
end
