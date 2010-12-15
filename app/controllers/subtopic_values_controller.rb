class SubtopicValuesController < ApplicationController
  # GET /subtopic_values
  # GET /subtopic_values.xml
  def index
    @subtopic_values = SubtopicValue.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @subtopic_values }
    end
  end

  # GET /subtopic_values/1
  # GET /subtopic_values/1.xml
  def show
    @subtopic_value = SubtopicValue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @subtopic_value }
    end
  end

  # GET /subtopic_values/new
  # GET /subtopic_values/new.xml
  def new
    @subtopic_value = SubtopicValue.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @subtopic_value }
    end
  end

  # GET /subtopic_values/1/edit
  def edit
    @subtopic_value = SubtopicValue.find(params[:id])
  end

  # POST /subtopic_values
  # POST /subtopic_values.xml
  def create
    @subtopic_value = SubtopicValue.new(params[:subtopic_value])

    respond_to do |format|
      if @subtopic_value.save
        format.html { redirect_to(@subtopic_value, :notice => 'Subtopic value was successfully created.') }
        format.xml  { render :xml => @subtopic_value, :status => :created, :location => @subtopic_value }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @subtopic_value.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /subtopic_values/1
  # PUT /subtopic_values/1.xml
  def update
    @subtopic_value = SubtopicValue.find(params[:id])

    respond_to do |format|
      if @subtopic_value.update_attributes(params[:subtopic_value])
        format.html { redirect_to(@subtopic_value, :notice => 'Subtopic value was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @subtopic_value.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /subtopic_values/1
  # DELETE /subtopic_values/1.xml
  def destroy
    @subtopic_value = SubtopicValue.find(params[:id])
    @subtopic_value.destroy

    respond_to do |format|
      format.html { redirect_to(subtopic_values_url) }
      format.xml  { head :ok }
    end
  end
end
