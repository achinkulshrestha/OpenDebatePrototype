class FriendablesController < InheritedResources::Base

  def friend_request
    from_id = current_user.id
    to_id = params[:id] 

    existing_friendable = Friendable.where(to_id: to_id)

    if existing_friendable
      Friendable.create(from_id: from_id,
                        to_id: to_id, accepted: false)
    else
      existing_friendable = Friendable.where(from_id: to_id)
      if existing_friendable
        #request already exists
      else
        Friendable.create(from_id: from_id,
                            to_id: to_id, accepted: false)
      end
    end
  end

  def friend_request_accept
    friendable = Friendable.where(to_id: current_user.id,
                                  from_id: params[:id]).first
    friendable.update_attributes(accepted: true)
  end

  def friend_request_reject
    friendable = Friendable.where(to_id: current_user.id,
                                  from_id: params[:id]).first
    friendable.destroy
  end

  private

    def friendable_params
      params.require(:friendable).permit(:from_id, :to_id, :accepted)
    end
end

