class GroupsController < ApplicationController 
  before_action :authenticate_user!
  before_action :set_group, only: [:show, :edit, :update, :destroy, :join]
  before_action :admin?, only: [:edit, :destroy, :update]
  def index
    @groups = Group.all
  end

  def show
  end

  def new
    @group = Group.new
  end

  def edit
  end

  def create
    @group = Group.new(group_params)
    @group.users << current_user

    respond_to do |format|
      if @group.save
        format.html { redirect_to @group, notice: 'Group was successfully created.' }
        format.json { render :show, status: :created, location: @group }
      else
        format.html { render :new }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  def join
    current_user.groups << @group
    redirect_to "/groups/#{@group.id}"
  end

  def upvote 
    @group = Group.find(params[:id])
    @group.upvote_by current_user
    redirect_to :back
  end  

  def update
    respond_to do |format|
      if @group.update(group_params)
        format.html { redirect_to @group, notice: 'Group was successfully updated.' }
        format.json { render :show, status: :ok, location: @group }
      else
        format.html { render :edit }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @group.destroy
    respond_to do |format|
      format.html { redirect_to groups_url, notice: 'Group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_group
      @group = Group.find(params[:id])
    end

    def admin?
      redirect_to event_path(@event) unless current_user == @event.creator
    end

    def group_params
      params.require(:group).permit(:title, :location, :description, :group_image)
    end
end
