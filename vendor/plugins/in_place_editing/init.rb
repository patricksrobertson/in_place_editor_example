ActionController::Base.send :include, InPlaceEditing
ActionView::Base.send :include, InPlaceEditingView
ActionController::Base.helper InPlaceMacrosHelper