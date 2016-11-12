class ConversationsController < ProtectedController
  before_action :set_conversation, only: [:show, :update, :destroy]

  # GET /conversations
  # GET /conversations.json
  def index
    # @conversations = Conversation.all
    @conversations = Conversation.where("user1=#{current_user.id} OR user2=#{current_user.id}")

    render json: @conversations
  end

  # GET /conversations/1
  # GET /conversations/1.json
  def show
    if current_user.id == (@conversation.user1 || @conversation.user2)
      render json: @conversation
    end
  end

  # POST /conversations
  # POST /conversations.json
  def create
    @conversation = Conversation.new(conversation_params)

    if @conversation.save
      render json: @conversation, status: :created, location: @conversation
    else
      render json: @conversation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /conversations/1
  # PATCH/PUT /conversations/1.json
  def update
    if current_user.id == (@conversation.user1 || @conversation.user2)
      if @conversation.update(conversation_params)
        head :no_content
      else
        render json: @conversation.errors, status: :unprocessable_entity
      end
    end
  end

  # DELETE /conversations/1
  # DELETE /conversations/1.json
  # def destroy
  #   @conversation.destroy
  #
  #   head :no_content
  # end

  private

  def set_conversation
    @conversation = Conversation.find(params[:id])
  end

  def conversation_params
    params.require(:conversation).permit(:user1, :user2, :name)
  end
end
