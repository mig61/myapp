class NielsenAreasController < ApplicationController
  # GET /nielsen_areas
  # GET /nielsen_areas.xml
  def index
    @nielsen_areas = NielsenArea.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @nielsen_areas }
    end
  end

  # GET /nielsen_areas/1
  # GET /nielsen_areas/1.xml
  def show
    @nielsen_area = NielsenArea.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @nielsen_area }
    end
  end

  # GET /nielsen_areas/new
  # GET /nielsen_areas/new.xml
  def new
    @nielsen_area = NielsenArea.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @nielsen_area }
    end
  end

  # GET /nielsen_areas/1/edit
  def edit
    @nielsen_area = NielsenArea.find(params[:id])
  end

  # POST /nielsen_areas
  # POST /nielsen_areas.xml
  def create
    @nielsen_area = NielsenArea.new(params[:nielsen_area])

    respond_to do |format|
      if @nielsen_area.save
        format.html { redirect_to(@nielsen_area, :notice => 'Nielsen area was successfully created.') }
        format.xml  { render :xml => @nielsen_area, :status => :created, :location => @nielsen_area }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @nielsen_area.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /nielsen_areas/1
  # PUT /nielsen_areas/1.xml
  def update
    @nielsen_area = NielsenArea.find(params[:id])

    respond_to do |format|
      if @nielsen_area.update_attributes(params[:nielsen_area])
        format.html { redirect_to(@nielsen_area, :notice => 'Nielsen area was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @nielsen_area.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /nielsen_areas/1
  # DELETE /nielsen_areas/1.xml
  def destroy
    @nielsen_area = NielsenArea.find(params[:id])
    @nielsen_area.destroy

    respond_to do |format|
      format.html { redirect_to(nielsen_areas_url) }
      format.xml  { head :ok }
    end
  end
end
