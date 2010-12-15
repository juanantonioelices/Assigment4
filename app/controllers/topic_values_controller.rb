class TopicValuesController < ApplicationController
  # GET /topic_values
  # GET /topic_values.xml
  def index
    @topic_values = TopicValue.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @topic_values }
    end
  end

  # GET /topic_values/1
  # GET /topic_values/1.xml
  def show
    @topic_value = TopicValue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @topic_value }
    end
  end

  # GET /topic_values/new
  # GET /topic_values/new.xml
  def new
    @topic_value = TopicValue.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @topic_value }
    end
  end

  # GET /topic_values/1/edit
  def edit
    @topic_value = TopicValue.find(params[:id])
  end

  # POST /topic_values
  # POST /topic_values.xml
def create
    @evaluation = Evaluation.find(params[:evaluation_id])
    found=false;
    
    topics = @evaluation.topic_values
    topics.each do |t|
      if t.topic_id == params[:topic_id]
        found=true;
        @topic_value=t;
      end
    end

    if not found
      @topic_value = @evaluation.topic_values.create!(params[:topic_value])
      respond_to do |format|
        if @topic_value.save
          format.html { redirect_to(@evaluation) }
          format.xml  { render :xml => @topic_value, :status => :created, :location => @topic_value }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @topic_value.errors, :status => :unprocessable_entity }
        end
      end
    else
      respond_to do |format|
        if @topic_value.update_attributes(params[:topic_value])
          format.html { redirect_to(@evaluation) }
          format.xml  { head :ok }
        else
          format.html { render :action => "edit" }
          format.xml  { render :xml => @topic_value.errors, :status => :unprocessable_entity }
        end
      end
    end
    
  end

  # PUT /topic_values/1
  # PUT /topic_values/1.xml
  def update
    @topic_value = TopicValue.find(params[:id])

    respond_to do |format|
      if @topic_value.update_attributes(params[:topic_value])
        format.html { redirect_to(@topic_value, :notice => 'Topic value was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @topic_value.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /topic_values/1
  # DELETE /topic_values/1.xml
  def destroy
    @topic_value = TopicValue.find(params[:id])
    @topic_value.destroy

    respond_to do |format|
      format.html { redirect_to(topic_values_url) }
      format.xml  { head :ok }
    end
  end
end
