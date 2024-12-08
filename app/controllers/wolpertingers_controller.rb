class WolpertingersController < ApplicationController
  before_action :set_wolpertinger, only: %i[ show edit update destroy ]

  # GET /wolpertingers or /wolpertingers.json
  def index
    @wolpertingers = Wolpertinger.all
  end

  # GET /wolpertingers/1 or /wolpertingers/1.json
  def show
  end

  # GET /wolpertingers/new
  def new
    @wolpertinger = Wolpertinger.new
  end

  # GET /wolpertingers/1/edit
  def edit
  end

  # POST /wolpertingers or /wolpertingers.json
  def create
    @wolpertinger = Wolpertinger.new(wolpertinger_params)

    respond_to do |format|
      if @wolpertinger.save
        format.html { redirect_to @wolpertinger, notice: "Wolpertinger was successfully created." }
        format.json { render :show, status: :created, location: @wolpertinger }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @wolpertinger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wolpertingers/1 or /wolpertingers/1.json
  def update
    respond_to do |format|
      if @wolpertinger.update(wolpertinger_params)
        format.html { redirect_to @wolpertinger, notice: "Wolpertinger was successfully updated." }
        format.json { render :show, status: :ok, location: @wolpertinger }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @wolpertinger.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wolpertingers/1 or /wolpertingers/1.json
  def destroy
    @wolpertinger.destroy!

    respond_to do |format|
      format.html { redirect_to wolpertingers_path, status: :see_other, notice: "Wolpertinger was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wolpertinger
      @wolpertinger = Wolpertinger.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def wolpertinger_params
      params.expect(wolpertinger: [ :state, :is_walking, :color, :age, :mood ])
    end
end
