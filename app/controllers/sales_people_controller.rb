class SalesPeopleController < ApplicationController
  # GET /sales_people
  # GET /sales_people.xml
  def index
    @sales_people = SalesPerson.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sales_people }
    end
  end

  # GET /sales_people/1
  # GET /sales_people/1.xml
  def show
    @sales_person = SalesPerson.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sales_person }
    end
  end

  # GET /sales_people/new
  # GET /sales_people/new.xml
  def new
    @sales_person = SalesPerson.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sales_person }
    end
  end

  # GET /sales_people/1/edit
  def edit
    @sales_person = SalesPerson.find(params[:id])
  end

  # POST /sales_people
  # POST /sales_people.xml
  def create
    @sales_person = SalesPerson.new(params[:sales_person])

    respond_to do |format|
      if @sales_person.save
        format.html { redirect_to(@sales_person, :notice => 'Sales person was successfully created.') }
        format.xml  { render :xml => @sales_person, :status => :created, :location => @sales_person }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sales_person.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sales_people/1
  # PUT /sales_people/1.xml
  def update
    @sales_person = SalesPerson.find(params[:id])

    respond_to do |format|
      if @sales_person.update_attributes(params[:sales_person])
        format.html { redirect_to(@sales_person, :notice => 'Sales person was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sales_person.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sales_people/1
  # DELETE /sales_people/1.xml
  def destroy
    @sales_person = SalesPerson.find(params[:id])
    @sales_person.destroy

    respond_to do |format|
      format.html { redirect_to(sales_people_url) }
      format.xml  { head :ok }
    end
  end
end
