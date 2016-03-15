class ValidarFirmaController < ApplicationController
  def index
    if params[:mensaje] && params[:hash]
      sha256 = Digest::SHA256.new
      hash = sha256.hexdigest params[:mensaje]
      if hash.downcase == (params[:hash].downcase)
        render :json => true
      else
        render :json => false
      end
    else
      render nothing: true
    end
  end
end
