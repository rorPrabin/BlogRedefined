class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update]#, :destroy,:show ]
  before_action :correct_user, only: [:edit, :update]
  # GET /users 
  # GET /users.json
  def index
    # @users = User.all
    @users = User.paginate(page: params[:page])
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
# It stops the browser's process and prompts Debugs in console.
    # debugger
    #@users = User.all
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end
#  Returns the Gravatar (http://gravatar.com/) for the given user.
def gravatar_for(user, options = { size: 50 })
  gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
  size = options[:size]
  gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
  image_tag(gravatar_url, alt: user.name, class: "gravatar")
end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params) 

    respond_to do |format|
      if @user.save
        log_in @user
        flash[:success] = "Welcome to the Rails!!"
        format.html { redirect_to @user} #,notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }

        # redirect_to @user
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        flash[:success] = "Profile updated"
        format.html { redirect_to @user}#, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url}#, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end
    private
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
#  Confirm a logged-in user.
def logged_in_user
  unless logged_in?
    store_location
    flash[:danger] = "Please log in."
    redirect_to login_url
  end
end
def correct_user
  @user = User.find(params[:id])
  redirect_to(root_url) unless current_user?(@user)
end
end
