InPlaceEditing
--------------
**Homepage**: [http://github.com/patricksrobertson](http://github.com/patricksrobertson/in_place_editing)
**Author**: David Heinmeir Hansson
**Contributor**: [Patrick Robertson](mailto:patricksrobertson@gmail.com)
**Copyright**: 2007-2010
**License**: [MIT License](file:LICENSE)

InPlaceEditing is a rails plugin based heavily off the original rails InPlaceEditing plugin.  It uses the AJAX function InPlaceEditorWithEmptyText [http://gist.github.com/131324](http://gist.github.com/131324) to be able to edit text that hasn't been initilized with a value.  This is based off of a blog post located [here:](http://codetocustomer.com/blog/2008/06/empty-text-for-ajaxinplaceeditor).

This plugin differs from the base version of InPlaceEditing in that it will validate the field being edited and then alert the user that he/she cannot perform the action.  It will then reload the page from before the editing.  This was the most graceful solution I could come up with in terms of in place editing so far.


Installation:
-------------
* run rake in_place_editing:install:all
* somewhere in the head of your page, put <%= include_in_place_editing %>


Example:

	# Controller
	class BlogController < ApplicationController
		in_place_edit_for :post, :title
 	end

	# View
	<%= in_place_editor_field :post, 'title' %>
	
Copyright (c) 2007 David Heinemeier Hansson, released under the MIT license  