// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery.ui.widget.min.js
//= require turbolinks
//= require bootstrap
//= require masonry.pkgd.min.js
//= require jquery.flip.min.js
//= require_tree

$(function (){
        $('.carousel').carousel({
            interval:5000
        });
    });

jQuery(document).ready(function () {
    var container = document.querySelector('#container');
    var msnry = new Masonry( container, {
        // options
        columnWidth: 200,
        itemSelector: '.item'
    });
})

function scoreUp(new_points, total_points) {
    $("#profile_link").html("Profile ("+total_points+")").effect("pulsate", {}, 500);
    $("#scoreUp").html("+"+new_points).show().effect("fade", {}, 1500);
}

$(document).ready(function() {
    //if (typeof new_points === "undefined") {
    //} else {
    //    scoreUp(new_points, total_points);
    //}




	var availableTags = [
      "test",
    ];
    /*$("#tagsBox").tagit().autocomplete({
    	delay: 0,
    	minLength: 2,
		source: availableTags
	});*/



    $('.flipbox').bind("click",function(){

        // $(this) point to the clicked .sponsorFlip element (caching it in elem for speed):

        var elem = $(this);

        // data('flipped') is a flag we set when we flip the element:

        if(elem.data('flipped'))
        {
            // If the element has already been flipped, use the revertFlip method
            // defined by the plug-in to revert to the default state automatically:

            elem.revertFlip();

            // Unsetting the flag:
            elem.data('flipped',false)
        }
        else
        {
            // Using the flip method defined by the plugin:

            elem.flip({
                direction:'lr',
                speed: 350,
                onBefore: function(){

                    elem.html(elem.siblings('.flipback').html());
                }
            });

            // Setting the flag:
            elem.data('flipped',true);
        }

    });

});


