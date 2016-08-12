class ActivitiesController < ApplicationController 
  before_action :authenticate_user!
  before_action :set_activity, only: [:show, :edit, :update, :destroy]
  before_action :admin?, only: [:edit, :destroy, :update]
  before_action :me?, only: [:index, :new]
  # GET /activities
  # GET /activities.json
  def index
    @activities = Activity.all
  end
 
  # GET /activities/1
  # GET /activities/1.json
  def show
  end

  # GET /activities/new
  def new
    @activity = Activity.new
  end

  # GET /activities/1/edit
  def edit
    @event = Event.find(@title[:event_id])
  end

  # POST /activities
  # POST /activities.json
  def create

    @title = Title.find(activity_params[:title_id])
    @event = Event.find(@title[:event_id])
    @activity = Activity.new(activity_params)
    @title.activities << @activity

    respond_to do |format|
      if @activity.save
        format.html { redirect_to "/events/#{@event.id}", notice: 'Activity was successfully created.' }
        format.json { render :show, status: :created, location: @activity }
      else
        format.html { render :new }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activities/1
  # PATCH/PUT /activities/1.json
  def update

    @title = Title.find(activity_params[:title_id])
    @event = Event.find(@title[:event_id])
    @activity = Activity.new(activity_params)
    @title.activities << @activity
    
    respond_to do |format|
      if @activity.update(activity_params)
        format.html { redirect_to "/events/#{@event.id}", notice: 'Activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity }
      else
        format.html { render :edit }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activities/1
  # DELETE /activities/1.json
  def destroy
    @activity.destroy
    @title = Title.find(@activity[:title_id])
    @event = Event.find(@title[:event_id])
    respond_to do |format|
      format.html { redirect_to event_path(@event), notice: 'Activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity
      @activity = Activity.find(params[:id])
    end

    def admin?
      @title = Title.find(@activity[:title_id])
      @event = Event.find(@title[:event_id])
      redirect_to event_path(@event) unless current_user == @event.creator
    end

    def me?
      redirect_to events_path unless current_user.username == "xl5913"
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_params
      params.require(:activity).permit(:content, :start, :title, :title_id)
    end
end
