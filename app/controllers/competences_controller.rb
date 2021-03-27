class CompetencesController < ApplicationController
    before_action :set_competence, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_admin!, only: [:new, :edit, :update, :destroy]
    
    def index
      @competences = Competence.all
      respond_to do |format|
        format.html
        format.json {render json: @competences}
      end
    end
  
    def show
      
    end
  
    def new
      @competence = Competence.new
    end
  
    def edit
  
    end
  
    def create
      @competence = Competence.new(competence_params)
  
      respond_to do |format|
        if @competence.save
          format.html { redirect_to @competence, notice: 'Competence was successfully created.' }
          format.json { render :show, status: :created, location: @competence }
        else
          format.html { render :new }
          format.json { render json: @competence.errors, status: :unprocessable_entity }
        end
      end
    end
  
    def update
      respond_to do |format|
        if @competence.update(competence_params)
          format.html { redirect_to @competence.company, notice: 'Competence was successfully updated.' }
          format.json { render :show, status: :ok, location: @competence }
        else
          format.html { render :edit }
          format.json { render json: @competence.errors, status: :unprocessable_entity }
        end
      end
    end
  
    def destroy
      @competence.destroy
      respond_to do |format|
        format.html { redirect_to competences_url, notice: 'Competence was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  
    private
      def set_competence
        @competence = Competence.find(params[:id])
      end
  
      def competence_params
        params.require(:competence).permit(:title, :point, :prio)
      end
end
