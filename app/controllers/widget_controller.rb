class WidgetController < ApplicationController
  in_place_edit_for :widget, :name
  in_place_edit_for :widget, :description
  def index
    @widgets = Widget.find(:all)
  end

end
