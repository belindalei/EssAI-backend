class Api::V1::EssaysController < ApplicationController
  def create
      essay = Essay.new(essay_params)
      if essay.save
          render json: {essay: essay}
      else
          render json: {errors: essay.errors.full_messages}
      end
  end

  def destroy 
      essay = Essay.find(params[:id])
      essay.destroy
      render json: essay
  end

  private

  def essay_params
      params.require(:essay).permit(:title)
  end
end
