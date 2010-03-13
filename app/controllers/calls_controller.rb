class CallsController < ApplicationController

  before_filter :find_call

  CALLS_PER_PAGE = 20

  def create
    @call = Call.new(params[:call])
    respond_to do |format|
      if @call.save
        flash[:notice] = 'Call was successfully created.'
        format.html { redirect_to @call }
        format.xml  { render :xml => @call, :status => :created, :location => @call }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @call.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @call.destroy
        flash[:notice] = 'Call was successfully destroyed.'        
        format.html { redirect_to calls_path }
        format.xml  { head :ok }
      else
        flash[:error] = 'Call could not be destroyed.'
        format.html { redirect_to @call }
        format.xml  { head :unprocessable_entity }
      end
    end
  end

  def index
    @calls = Call.paginate(:page => params[:page], :per_page => CALLS_PER_PAGE)
    respond_to do |format|
      format.html
      format.xml  { render :xml => @calls }
    end
  end

  def edit
  end

  def new
    @call = Call.new
    respond_to do |format|
      format.html
      format.xml  { render :xml => @call }
    end
  end

  def show
    respond_to do |format|
      format.html
      format.xml  { render :xml => @call }
    end
  end

  def update
    respond_to do |format|
      if @call.update_attributes(params[:call])
        flash[:notice] = 'Call was successfully updated.'
        format.html { redirect_to @call }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @call.errors, :status => :unprocessable_entity }
      end
    end
  end

  private

  def find_call
    @call = Call.find(params[:id]) if params[:id]
  end

end