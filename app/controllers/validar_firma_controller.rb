class ValidarFirmaController < ApplicationController
  def index
    if params[:mensaje] && params[:hash]
      sha256 = Digest::SHA256.new
      unless hash = sha256.hexdigest params[:mensaje]
        render nothing: true, status: 500
      end
      if hash.downcase == (params[:hash].downcase)
        render :json => true
      else
        render :json => false
      end
    else
      render nothing: true, status: 400
    end
  end
end
