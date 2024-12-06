class ImageExamplesController < ApplicationController
  before_action :set_image_example, only: %i[ show edit update destroy ]
  before_action :authenticate_http_basic, only: %i[ create ]

  def authenticate_http_basic
    return if authenticate_with_http_basic { |un, pw| do_authentication(un, pw) }
    request_http_basic_authentication
  end

  def do_authentication(username, password)
    username == 'devpix' && password == ENV['IMAGE_UPLOAD_PASSWORD']
  end
  # GET /image_examples or /image_examples.json
  def index
    @image_examples = ImageExample.all
  end

  # GET /image_examples/1 or /image_examples/1.json
  def show
  end

  # GET /image_examples/new
  def new
    @image_example = ImageExample.new
  end

  # GET /image_examples/1/edit
  def edit
  end

  # POST /image_examples or /image_examples.json
  def create
    @image_example = ImageExample.new(image_example_params)

    respond_to do |format|
      if @image_example.save
        format.html { redirect_to @image_example, notice: "Image example was successfully created." }
        format.json { render :show, status: :created, location: @image_example }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @image_example.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /image_examples/1 or /image_examples/1.json
  def update
    respond_to do |format|
      if @image_example.update(image_example_params)
        format.html { redirect_to @image_example, notice: "Image example was successfully updated." }
        format.json { render :show, status: :ok, location: @image_example }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @image_example.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /image_examples/1 or /image_examples/1.json
  def destroy
    @image_example.destroy!

    respond_to do |format|
      format.html { redirect_to image_examples_path, status: :see_other, notice: "Image example was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_example
      @image_example = ImageExample.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def image_example_params
      params.expect(image_example: [ :body, :image ])
    end
end
