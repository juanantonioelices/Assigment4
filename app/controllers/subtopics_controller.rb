class SubtopicsController < ApplicationController
  
  before_filter :authenticate, :except => [:index, :show]
  
  # GET /subtopics
  # GET /subtopics.xml
  def index
    @subtopics = Subtopic.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @subtopics }
    end
  end

  # GET /subtopics/1
  # GET /subtopics/1.xml
  def show
    @subtopic = Subtopic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @subtopic }
    end
  end

  # GET /subtopics/new
  # GET /subtopics/new.xml
  def new
    @subtopic = Subtopic.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @subtopic }
    end
  end

  # GET /subtopics/1/edit
  def edit
    @subtopic = Subtopic.find(params[:id])
  end

  # POST /subtopics
  # POST /subtopics.xml
  def create
    begin
      @topic=Topic.find(params[:topic_id])
      @subtopic = @topic.subtopics.create(params[:subtopic])
    rescue
      @subtopic = Subtopic.new(params[:subtopic])
    end

    
    respond_to do |format|
      if @subtopic.save
        format.html { redirect_to(@topic) }
        format.xml  { render :xml => @subtopic, :status => :created, :location => @subtopic }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @subtopic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /subtopics/1
  # PUT /subtopics/1.xml
  def update
    @subtopic = Subtopic.find(params[:id])

    respond_to do |format|
      if @subtopic.update_attributes(params[:subtopic])
        format.html { redirect_to(@subtopic, :notice => 'Subtopic was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @subtopic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /subtopics/1
  # DELETE /subtopics/1.xml
  def destroy
    @subtopic = Subtopic.find(params[:id])
    @subtopic.destroy

    respond_to do |format|
      format.html { redirect_to(subtopics_url) }
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
