$ ->
	$(document).foundation()
	# Write scripts here
	

	##
	# Mobile Search Toggle
	##
	mobileSearchToggle = (evnt)->
		evnt.preventDefault()
		$("#mobile-search-field").toggleClass "hide"

	$("#search-button").on "click", mobileSearchToggle




	##
	# Homepage Panel Toggle
	##
	homePanelToggle = (evnt)->
		evnt.preventDefault()

		activeClass = "active"

		thisButton = $(@)

		if thisButton.hasClass( activeClass )
			thisButton.removeClass activeClass
			$(".home-panel").addClass "hide"
			$("#panel-0").removeClass "hide"
		else
			$(".home-bar a").removeClass activeClass
			thisButton.addClass activeClass
			$(".home-panel").addClass "hide"
			$( thisButton.attr("href") ).removeClass "hide"

	$(".home-bar a").on "click", homePanelToggle


	closeButton = (evnt)->
		evnt.preventDefault()
		$(@).parent().parent().addClass "hide"
		
		if $(".home-panel").hasClass "hide"
			$(".home-panel").removeClass "hide"
	$(".closeButton").on "click", closeButton