# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
	$('#sheet_client_name').autocomplete
	  source: $('#sheet_client_name').data('autocomplete-source')
#############
	$('#sheet_activity_name').autocomplete
	  source: $('#sheet_activity_name').data('autocomplete-source')

	$('#sheet_date').datepicker (dateFormat: 'dd/mm/yy')

     
   