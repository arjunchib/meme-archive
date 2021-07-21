class CommandsController < ApplicationController
  skip_before_action :logged_in_user, only: %i[show index]

  def index
    @commands = Command.search(params[:s]).paginate(page: params[:page])
  end

  def show
    @command = Command.where('lower(name) = ?', params[:id].downcase).first
    if @command.nil?
      render json: { errors: ['404 Not Found'] }, status: :not_found
    end
  end

  def create
    @meme = Meme.find(params[:meme_id])
    @command = @meme.commands.create(command_params)
    redirect_to request.referer
  end

  def destroy
    @meme = Meme.find(params[:meme_id])
    @command = @meme.commands.find(params[:id])
    @command.destroy
    redirect_to request.referer
  end

  private

  def command_params
    params.require(:command).permit(:name)
  end
end
