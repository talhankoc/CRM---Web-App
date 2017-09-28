class PropDocsController < ApplicationController
  before_action :set_prop_doc, only: [:show, :edit, :update, :destroy]

  # GET /prop_docs
  # GET /prop_docs.json
  def index
    @prop_docs = PropDoc.all
  end

  # GET /prop_docs/1
  # GET /prop_docs/1.json
  def show
  end

  # GET /prop_docs/new
  def new
    @prop_doc = PropDoc.new
  end

  # GET /prop_docs/1/edit
  def edit
  end

  # POST /prop_docs
  # POST /prop_docs.json
  def create
    @prop_doc = PropDoc.new(prop_doc_params)

    respond_to do |format|
      if @prop_doc.save
        format.html { redirect_to @prop_doc, notice: 'Prop doc was successfully created.' }
        format.json { render :show, status: :created, location: @prop_doc }
      else
        format.html { render :new }
        format.json { render json: @prop_doc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prop_docs/1
  # PATCH/PUT /prop_docs/1.json
  def update
    respond_to do |format|
      if @prop_doc.update(prop_doc_params)
        format.html { redirect_to @prop_doc, notice: 'Prop doc was successfully updated.' }
        format.json { render :show, status: :ok, location: @prop_doc }
      else
        format.html { render :edit }
        format.json { render json: @prop_doc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prop_docs/1
  # DELETE /prop_docs/1.json
  def destroy
    @prop_doc.destroy
    respond_to do |format|
      format.html { redirect_to prop_docs_url, notice: 'Prop doc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prop_doc
      @prop_doc = PropDoc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prop_doc_params
      params.require(:prop_doc).permit(:prop_doc_id, :property_id, :content, :mime_type, :file_name, :file_type, :upload_date)
    end
end