class DebatesController < InheritedResources::Base

  private

    def debate_params
      params.require(:debate).permit(:date, :length, :topic, :completed, :initiator_id, :joiner_id)
    end
end

