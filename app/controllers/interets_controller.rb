class InteretsController < ApplicationController
    before_action :set_interet, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, only: [:edit, :update, :destroy]

    def index
      @interets = Interet.all
    end
  
    def show
      
    end
  
    def new
      @interet = Interet.new
    end
  
    def edit
  
    end
  
    def create
      @interet = Interet.new(interet_params)
  
      respond_to do |format|
        if @interet.save
          format.html { redirect_to @interet, notice: 'Interet was successfully created.' }
          format.json { render :show, status: :created, location: @interet }
        else
          format.html { render :new }
          format.json { render json: @interet.errors, status: :unprocessable_entity }
        end
      end
    end
  
    def update
      respond_to do |format|
        if @interet.update(interet_params)
          format.html { redirect_to @interet.company, notice: 'Interet was successfully updated.' }
          format.json { render :show, status: :ok, location: @interet }
        else
          format.html { render :edit }
          format.json { render json: @interet.errors, status: :unprocessable_entity }
        end
      end
    end
  
    def destroy
      @interet.destroy
      respond_to do |format|
        format.html { redirect_to interets_url, notice: 'Interet was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  
    private
      def set_interet
        @interet = Interet.find(params[:id])
      end
  
      def interet_params
        params.require(:interet).permit(:title, :prio)
      end
end
