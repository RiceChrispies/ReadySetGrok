class RatingsController < ApplicationController

  def create
    @subject = Subject.find(params[:subject_id])
    @rating = @subject.ratings.create(rating_params)
	@rating.user_id=current_user.id if current_user
	@rating.save
    redirect_to subject_path(@subject)
  end
  
  def destroy
    @subject = Subject.find(params[:subject_id])
    @rating = @subject.ratings.find(params[:id])
    @rating.destroy
    redirect_to subject_path(@subject)
  end
 
  private
    def rating_params
      params.require(:rating).permit(:user, :body)
    end
end

