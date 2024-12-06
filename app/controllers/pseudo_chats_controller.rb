class PseudoChatsController < ApplicationController
  before_action :set_pseudo_chat, only: %i[ destroy ]

  # GET /pseudo_chats or /pseudo_chats.json
  def index
    @pseudo_chats = PseudoChat.all
    @pseudo_chat = PseudoChat.new
  end


  # POST /pseudo_chats or /pseudo_chats.json
  def create
    @pseudo_chat = PseudoChat.new(pseudo_chat_params)

    if PseudoChat.count > 10
      PseudoChat.first.destroy!
    end

    respond_to do |format|
      if @pseudo_chat.save
        format.html { redirect_to pseudo_chats_path }
      else
        format.html { redirect_to pseudo_chats_path }
      end
    end
  end


  # DELETE /pseudo_chats/1 or /pseudo_chats/1.json
  def destroy
    @pseudo_chat.destroy!

    respond_to do |format|
      format.html { redirect_to pseudo_chats_path, status: :see_other, notice: "Pseudo chat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pseudo_chat
      @pseudo_chat = PseudoChat.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def pseudo_chat_params
      params.expect(pseudo_chat: [ :message ])
    end
end
