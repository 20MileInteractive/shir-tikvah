$ ->
	$(document).foundation()
	# Write scripts here
	

	# Mobile Search Toggle
	mobileSearchToggle = (evnt)->
		evnt.preventDefault()
		$("#mobile-search-field").toggleClass "hide"

	$("#search-button").on "click", mobileSearchToggle