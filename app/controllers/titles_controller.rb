class TitlesController < ApplicationController 
  before_action :authenticate_user!
  before_action :set_title, only: [:show, :edit, :update, :destroy]
  before_action :admin?, only: [:edit, :destroy, :update]
  before_action :me?, only: [:index, :new]
  # GET /titles
  # GET /titles.json
  def index
    @titles = Title.all
  end

  # GET /titles/1
  # GET /titles/1.json
  def show
  end

  # GET /titles/new
  def new
    @title = Title.new
  end

  # GET /titles/1/edit
  def edit
    @event = Event.find(@title[:event_id])
  end

  # POST /titles
  # POST /titles.json
  def create
    @title = Title.new(title_params)
    @event = Event.find(title_params[:event_id])
    @event.titles << @title

    respond_to do |format|
      if @title.save
        format.html { redirect_to "/events/#{@event.id}", notice: 'Title was successfully created.' }
        format.json { render :show, status: :created, location: @title }
      else
        format.html { render :new }
        format.json { render json: @title.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /titles/1
  # PATCH/PUT /titles/1.json
  def update
    respond_to do |format|
      if @title.update(title_params)
        format.html { redirect_to @title, notice: 'Title was successfully updated.' }
        format.json { render :show, status: :ok, location: @title }
      else
        format.html { render :edit }
        format.json { render json: @title.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /titles/1
  # DELETE /titles/1.json
  def destroy
    @title.destroy
    @event = Event.find(@title[:event_id])
    respond_to do |format|
      format.html { redirect_to event_path(@event), notice: 'Title was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_title
      @title = Title.find(params[:id])
    end

    def admin?
      @event = Event.find(@title[:event_id])
      redirect_to event_path(@event) unless current_user == @event.creator
    end

    def me?
      redirect_to events_path unless current_user.username == "xl5913"
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def title_params
      params.require(:title).permit(:name, :event_id)
    end
end
