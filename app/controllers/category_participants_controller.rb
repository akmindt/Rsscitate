class CategoryParticipantsController < ApplicationController
  # GET /category_participants
  # GET /category_participants.json
  def index
    @category_participants = CategoryParticipant.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @category_participants }
    end
  end

  # GET /category_participants/1
  # GET /category_participants/1.json
  def show
    @category_participant = CategoryParticipant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @category_participant }
    end
  end

  # GET /category_participants/new
  # GET /category_participants/new.json
  def new
    @category_participant = CategoryParticipant.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @category_participant }
    end
  end

  # GET /category_participants/1/edit
  def edit
    @category_participant = CategoryParticipant.find(params[:id])
  end

  # POST /category_participants
  # POST /category_participants.json
  def create
    @category_participant = CategoryParticipant.new(params[:category_participant])

    respond_to do |format|
      if @category_participant.save
        format.html { redirect_to @category_participant, notice: 'Category participant was successfully created.' }
        format.json { render json: @category_participant, status: :created, location: @category_participant }
      else
        format.html { render action: "new" }
        format.json { render json: @category_participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /category_participants/1
  # PUT /category_participants/1.json
  def update
    @category_participant = CategoryParticipant.find(params[:id])

    respond_to do |format|
      if @category_participant.update_attributes(params[:category_participant])
        format.html { redirect_to @category_participant, notice: 'Category participant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @category_participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_participants/1
  # DELETE /category_participants/1.json
  def destroy
    @category_participant = CategoryParticipant.find(params[:id])
    @category_participant.destroy

    respond_to do |format|
      format.html { redirect_to category_participants_url }
      format.json { head :no_content }
    end
  end
end
