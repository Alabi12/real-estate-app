class AgentsController < ApplicationController
  def index
    @agents = Agent.all
  end

  def new
    @agent = Agent.new
  end

  def show
    puts "Params ID: #{params[:id]}"
    @agent = Agent.find(params[:id])
  end

  def create
    @agent = Agent.new(agent_params)
    if @agent.save
      redirect_to agents_path, notice: 'Agent was successfully created.'
    else
      render :new
    end
  end

  private

  def agent_params
    params.require(:agent).permit(:name, :contact_information, :photo)
  end
end
