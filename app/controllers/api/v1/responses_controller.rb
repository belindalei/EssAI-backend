class Api::V1::ResponsesController < ApplicationController
    def create
      response = Response.new(response_params)
      if response.save
          render json: {response: ResponseSerializer.new(response)}
      else
          render json: {errors: response.errors.full_messages}
      end
    end

    def destroy 
        response = Response.find(params[:id])
        response.destroy
        render json: response
    end

    private

    def response_params
        params.require(:response).permit(:paragraph, :user_id, :essay_id)
    end
end
