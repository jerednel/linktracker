class LinksController < ApplicationController
	def index
		@links = current_user.links
	end

	def new
		@link = Link.new
		@user = current_user
	end


	def create
		@user = current_user
		@link = Link.new(link_params)
		@user.links << @link
		respond_to do |format|
		  if @link.save
			  format.html { redirect_to links_path }
			  format.js
		  else
			  render "new"
		  end
		 end
	end

	def edit
		@link = Link.find(params[:id])
		@user = current_user
	end

	def update
    	@link = Link.find(params[:id])

    	respond_to do |format|
     	if @link.update_attributes(link_params)
       	 	format.html { redirect_to links_path, notice: 'Link was successfully updated.' }
       	 	format.json { head :no_content }
    	 else
      	  	format.html { render action: "edit" }
       	 	format.json { render json: @link.errors, status: :unprocessable_entity }
    	 end
    	end
    end

private

	def link_params
    	params.require(:link).permit(:ctyhocn, :linking_site, :status, :anchor_text, :link_type, :pagerank, :date_requested, :date_active, :contact_email, :user_id)
    end
end

