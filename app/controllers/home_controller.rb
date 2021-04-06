class HomeController < ApplicationController
  
  def index
    @employmentsPrio = Employment.where("prio = true")
    @certificatsPrio = Certificat.where("prio = true")
    @contactsPrio = Contact.where("prio = true")
    @competencesPrio = Competence.where("prio = true")
    @interetsPrio = Interet.where("prio = true")
    @allModel = @employmentsPrio.as_json(root:true) + @certificatsPrio.as_json(root:true) + @contactsPrio.as_json(root:true) + @competencesPrio.as_json(root:true) + @interetsPrio.as_json(root:true)
        
    respond_to do |format|
      format.html
      format.json {render json: @allModel}
    end
  end

  private
  def set_employment
    @employment = Employment.find(params[:id])
  end

  def set_certificat
    @certificat = Certificat.find(params[:id])
  end

  def set_contact
    @contact = Contact.find(params[:id])
  end

  def set_competence
    @competence = Competence.find(params[:id])
  end

  def set_interet
    @interet = Interet.find(params[:id])
  end
end
