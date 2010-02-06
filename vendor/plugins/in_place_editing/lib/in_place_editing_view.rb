module InPlaceEditingView
  def include_in_place_editing(*args)
    content = javascript_include_tag('in_place_editor/inPlaceEditWithText.js')                             
  end
end