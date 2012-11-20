class ComplimentsController < ApplicationController
  # GET /compliments
  # GET /compliments.json
  def index
    @compliments = Compliment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @compliments }
    end
  end

  # GET /compliments/1
  # GET /compliments/1.json
  def show
    @compliment = Compliment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @compliment }
    end
  end

  # GET /compliments/new
  # GET /compliments/new.json
  def new
    @compliment = Compliment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @compliment }
    end
  end

  # GET /compliments/1/edit
  def edit
    @compliment = Compliment.find(params[:id])
  end

  # POST /compliments
  # POST /compliments.json
  def create
    @compliment = Compliment.new(params[:compliment])

    respond_to do |format|
      if @compliment.save
        format.html { redirect_to @compliment, notice: 'Compliment was successfully created.' }
        format.json { render json: @compliment, status: :created, location: @compliment }
      else
        format.html { render action: "new" }
        format.json { render json: @compliment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /compliments/1
  # PUT /compliments/1.json
  def update
    @compliment = Compliment.find(params[:id])

    respond_to do |format|
      if @compliment.update_attributes(params[:compliment])
        format.html { redirect_to @compliment, notice: 'Compliment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @compliment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compliments/1
  # DELETE /compliments/1.json
  def destroy
    @compliment = Compliment.find(params[:id])
    @compliment.destroy

    respond_to do |format|
      format.html { redirect_to compliments_url }
      format.json { head :no_content }
    end
  end
end
