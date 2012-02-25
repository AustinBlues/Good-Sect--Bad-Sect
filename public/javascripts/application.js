//= require jquery
//= require jquery_ujs

// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults


// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults


function show_raw_data() {
	$('#raw_data').toggle();
}

$(document).ready(function($) {
	$('#show_raw_data_btn').click(show_raw_data);
});

