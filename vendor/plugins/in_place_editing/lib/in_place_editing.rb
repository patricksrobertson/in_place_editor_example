module InPlaceEditing
  
 def self.included(base)
    base.extend(ClassMethods)
  end

  # Example:
  #
  #   # Controller
  #   class BlogController < ApplicationController
  #     in_place_edit_for :post, :title
  #   end
  #
  #   # View
  #   <%= in_place_editor_field :post, 'title' %>
  #
  module ClassMethods
    def in_place_edit_for(object, attribute, options = {})
      define_method("set_#{object}_#{attribute}") do
        unless [:post, :put].include?(request.method) then
          return render(:text => 'Method not allowed', :status => 405)
        end
        @item = object.to_s.camelize.constantize.find(params[:id])
        if @item.update_attributes(attribute => params[:value])
          ret_val = CGI::escapeHTML(@item.send(attribute).to_s)
        else
          ret_val = @item.errors.full_messages.join(". <br />n") || "Uh-oh"
          return (render :update do |page|
                    page.alert(ret_val)
                    page.reload
                  end)
        end
          render :text=> ret_val
      end
    end
  end
end
