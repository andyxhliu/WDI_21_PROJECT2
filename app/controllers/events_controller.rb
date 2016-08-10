class EventsController < ApplicationController 
  before_action :authenticate_user!
  before_action :set_event, only: [:show, :edit, :update, :destroy, :join, :comment]
  before_action :admin?, only: [:edit, :destroy, :update]
  def index
    @events = Event.all
  end

  def show
    @comment = Comment.new
    @activity = Activity.new
    @title = Title.new
    @titles = @event.titles
  end

  def new
    @event = Event.new
    @groups = Group.all
    @tags = Tag.all
  end

  def edit
  end

  def create
    @event = Event.new(event_params)

    current_user.created_events << @event
    @event.attendees << current_user

    respond_to do |format|
      if @event.save
        format.html { redirect_to "/events/#{@event.id}", notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def join
    current_user.events_attending << @event
    redirect_to "/events/#{@event.id}"
  end


  def update
    if event_params[:user_id]
      @event.creator = User.find(event_params[:user_id])
    end
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def upvote 
    @event = Event.find(params[:id])
    @event.upvote_by current_user
    redirect_to :back
  end  

  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_event
      @event = Event.find(params[:id])
    end
 
    def admin?
      redirect_to event_path(@event) unless current_user == @event.creator
    end

    def event_params
      params.require(:event).permit(:title, :start_date, :end_date, :location, :description, :event_image, :group_id, :user_id, :tag_ids => [])
    end
end
