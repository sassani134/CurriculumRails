class CertificatsController < ApplicationController
    before_action :set_certificat, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_admin!, only: [:edit, :update, :destroy]

    def index
      @certificats = Certificat.all
    end
  
    def show
      
    end
  
    def new
      @certificat = Certificat.new
    end
  
    def edit
  
    end
  
    def create
      @certificat = Certificat.new(certificat_params)
  
      respond_to do |format|
        if @certificat.save
          format.html { redirect_to @certificat, notice: 'Certificat was successfully created.' }
          format.json { render :show, status: :created, location: @certificat }
        else
          format.html { render :new }
          format.json { render json: @certificat.errors, status: :unprocessable_entity }
        end
      end
    end
  
    def update
      respond_to do |format|
        if @certificat.update(certificat_params)
          format.html { redirect_to @certificat.company, notice: 'Certificat was successfully updated.' }
          format.json { render :show, status: :ok, location: @certificat }
        else
          format.html { render :edit }
          format.json { render json: @certificat.errors, status: :unprocessable_entity }
        end
      end
    end
  
    def destroy
      @certificat.destroy
      respond_to do |format|
        format.html { redirect_to certificats_url, notice: 'Certificat was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  
    private
      def set_certificat
        @certificat = Certificat.find(params[:id])
      end
  
      def certificat_params
        params.require(:certificat).permit(:title, :debut, :fin, :wip, :prio)
      end
end
