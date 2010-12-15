class SubsubtopicsController < ApplicationController
  
  before_filter :authenticate, :except => [:index, :show]
  
  # GET /subsubtopics
  # GET /subsubtopics.xml
  def index
    @subsubtopics = Subsubtopic.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @subsubtopics }
    end
  end

  # GET /subsubtopics/1
  # GET /subsubtopics/1.xml
  def show
    @subsubtopic = Subsubtopic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @subsubtopic }
    end
  end

  # GET /subsubtopics/new
  # GET /subsubtopics/new.xml
  def new
    @subsubtopic = Subsubtopic.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @subsubtopic }
    end
  end

  # GET /subsubtopics/1/edit
  def edit
    @subsubtopic = Subsubtopic.find(params[:id])
  end

  # POST /subsubtopics
  # POST /subsubtopics.xml
  def create
    begin
      @subtopic=Subtopic.find(params[:subtopic_id])
      @subsubtopic = @subtopic.subsubtopics.create(params[:subsubtopic])
    rescue
      @subsubtopic = Subsubtopic.new(params[:subsubtopic])
    end

    respond_to do |format|
      if @subsubtopic.save
        format.html { redirect_to(@subtopic) }
        format.xml  { render :xml => @subsubtopic, :status => :created, :location => @subsubtopic }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @subsubtopic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /subsubtopics/1
  # PUT /subsubtopics/1.xml
  def update
    @subsubtopic = Subsubtopic.find(params[:id])

    respond_to do |format|
      if @subsubtopic.update_attributes(params[:subsubtopic])
        format.html { redirect_to(@subsubtopic, :notice => 'Subsubtopic was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @subsubtopic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /subsubtopics/1
  # DELETE /subsubtopics/1.xml
  def destroy
    @subsubtopic = Subsubtopic.find(params[:id])
    @subsubtopic.destroy

    respond_to do |format|
      format.html { redirect_to(subsubtopics_url) }
      format.xml  { head :ok }
    end
  end

 private
 
  def authenticate
    authenticate_or_request_with_http_basic do |name, password|
      name == "admin" && password == "admin"
    end
  end

end
