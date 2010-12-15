class SubsubtopicValuesController < ApplicationController
  # GET /subsubtopic_values
  # GET /subsubtopic_values.xml
  def index
    @subsubtopic_values = SubsubtopicValue.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @subsubtopic_values }
    end
  end

  # GET /subsubtopic_values/1
  # GET /subsubtopic_values/1.xml
  def show
    @subsubtopic_value = SubsubtopicValue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @subsubtopic_value }
    end
  end

  # GET /subsubtopic_values/new
  # GET /subsubtopic_values/new.xml
  def new
    @subsubtopic_value = SubsubtopicValue.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @subsubtopic_value }
    end
  end

  # GET /subsubtopic_values/1/edit
  def edit
    @subsubtopic_value = SubsubtopicValue.find(params[:id])
  end

  # POST /subsubtopic_values
  # POST /subsubtopic_values.xml
  def create
    @subsubtopic_value = SubsubtopicValue.new(params[:subsubtopic_value])

    respond_to do |format|
      if @subsubtopic_value.save
        format.html { redirect_to(@subsubtopic_value, :notice => 'Subsubtopic value was successfully created.') }
        format.xml  { render :xml => @subsubtopic_value, :status => :created, :location => @subsubtopic_value }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @subsubtopic_value.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /subsubtopic_values/1
  # PUT /subsubtopic_values/1.xml
  def update
    @subsubtopic_value = SubsubtopicValue.find(params[:id])

    respond_to do |format|
      if @subsubtopic_value.update_attributes(params[:subsubtopic_value])
        format.html { redirect_to(@subsubtopic_value, :notice => 'Subsubtopic value was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @subsubtopic_value.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /subsubtopic_values/1
  # DELETE /subsubtopic_values/1.xml
  def destroy
    @subsubtopic_value = SubsubtopicValue.find(params[:id])
    @subsubtopic_value.destroy

    respond_to do |format|
      format.html { redirect_to(subsubtopic_values_url) }
      format.xml  { head :ok }
    end
  end
end
