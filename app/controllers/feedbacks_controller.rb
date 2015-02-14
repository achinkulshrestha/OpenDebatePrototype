class FeedbacksController < InheritedResources::Base

  private

    def feedback_params
      params.require(:feedback).permit(:debate_id, :rator_id, :rated_id, :explain, :listen, :interest, :comments)
    end
end

