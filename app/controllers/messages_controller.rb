class MessagesController < ProtectedController
  # GET /messages
  # GET /messages.json
  def index
    @messages = Message.all

    render json: @messages
  end

  # GET /messages/1
  # GET /messages/1.json
  def show
    @message = Message.find(params[:id])
    @conversation = @message.conversation
    if current_user.id == (@conversation.user1 || @conversation.user2)
      render json: @message
    end
  end

  # POST /messages
  # POST /messages.json
  def create
    # @message = Message.new(message_params)
    @message = current_user.messages.build(message_params)

    if @message.save
      render json: @message, status: :created, location: @message
    else
      render json: @message.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /messages/1
  # PATCH/PUT /messages/1.json
  # def update
  #   @message = Message.find(params[:id])
  #
  #   if @message.update(message_params)
  #     head :no_content
  #   else
  #     render json: @message.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /messages/1
  # DELETE /messages/1.json
  def destroy
    @message = current_user.messages.find(params[:id])
    @message.destroy

    head :no_content
  end

  private

  def message_params
    params.require(:message).permit(:body, :conversation_id, :user_id, :read)
  end
end
