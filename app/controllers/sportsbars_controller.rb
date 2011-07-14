class SportsbarsController < ApplicationController
  # GET /sportsbars
  # GET /sportsbars.xml
  def index
    @sportsbars = Sportsbar.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sportsbars }
    end
  end

  # GET /sportsbars/1
  # GET /sportsbars/1.xml
  def show
    @sportsbar = Sportsbar.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sportsbar }
    end
  end

  # GET /sportsbars/new
  # GET /sportsbars/new.xml
  def new
    @sportsbar = Sportsbar.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sportsbar }
    end
  end

  # GET /sportsbars/1/edit
  def edit
    @sportsbar = Sportsbar.find(params[:id])
  end

  # POST /sportsbars
  # POST /sportsbars.xml
  def create
    @sportsbar = Sportsbar.new(params[:sportsbar])

    respond_to do |format|
      if @sportsbar.save
        format.html { redirect_to(@sportsbar, :notice => 'Sportsbar was successfully created.') }
        format.xml  { render :xml => @sportsbar, :status => :created, :location => @sportsbar }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sportsbar.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sportsbars/1
  # PUT /sportsbars/1.xml
  def update
    @sportsbar = Sportsbar.find(params[:id])

    respond_to do |format|
      if @sportsbar.update_attributes(params[:sportsbar])
        format.html { redirect_to(@sportsbar, :notice => 'Sportsbar was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sportsbar.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sportsbars/1
  # DELETE /sportsbars/1.xml
  def destroy
    @sportsbar = Sportsbar.find(params[:id])
    @sportsbar.destroy

    respond_to do |format|
      format.html { redirect_to(sportsbars_url) }
      format.xml  { head :ok }
    end
  end
end
