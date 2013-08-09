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
  
  
  #http://localhost:3000/product_livings/product?id=333247
  def product
    
    @result = Result.new
    
    if params[:id].blank?            
      @result.status = 1
      @result.msg = 'Id is invalid'
      @result.errmsg = 'Id is invalid'
      render json:@result
      return
    else
      @id = params[:id].to_i 
    end
    
    @product_living = ProductLiving.find(@id) if ProductLiving.exists?(@id)   
    
    # hoac su dung cach sau:
    
    #begin
    #  @product_living = ProductLiving.find(@id)
    #rescue ActiveRecord::RecordNotFound => e
    #  @product_living = nil
    #end
    
    if @product_living.blank?
      @result.status = 1      
      @result.msg = "Couldn't find product with id = #{@id}"    
      @result.item = nil  
      render json:@result
    else
      @result.status = 1
      @result.msg = ''
      @result.item = @product_living
      render json:@result  
    end       
     
       
    
  end
  
  #http://localhost:3000/product_livings/products
  def products
    
    #http://lookboard.com/lookboard-test/index.php/services/Product/list?user_id=23023&page=1&category=106&keyword=&view=text
    
    @result = Result.new
    
    @limit = 100
    @max_limit = 100
    
    if params[:page].blank?            
      @page = 1
    else
      @page = params[:page].to_i 
    end
          
    @start = (@page - 1) * @limit
    #@start = 0 * @limit
    
    if params[:limit].blank?               
      @limit = 100;  
    else 
      @limit = params[:limit].to_i 
    end
    
    if @limit > @max_limit
       @limit = @max_limit
    end
    
    
    if params[:user_id].blank?   
      #@result.status = 0
      #@result.errmsg = "user not found"              
      #render json:@result
      #return
      @user_id = 0;
    else 
      @user_id  = params[:user_id].to_i   
    end
              
    
    if params[:keyword].blank?               
        @keyword = ""
    else 
        @keyword = params[:keyword]  
    end
    
    if params[:category].blank?                 
      @category = ""   
    else 
      @category = params[:category].to_i   
    end
         
             
    
    @list_product = ProductLiving.search(@user_id, @keyword, @category, @start, @limit)        
     
    if @list_product.blank?
      @result.status = 1
      @result.msg = "The list is empty.";
      list
      @result.listitem = Array.new
    else
       @result.status = 1 
       @result.msg = ""
       
       @result.listitem = @list_product            
    end
    
    render json:@result 
    
  end
  
  
  
  
end
