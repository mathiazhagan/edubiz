/*
 
	Awkward Check - jQuery plugin 
	http://www.jquery.com
	http://www.awkwardgroup.com/sandbox/awkward-check-a-jquery-plugin
	http://demo.awkwardgroup.com/check
	Version: 1.3.1

	Copyright (C) 2011 Awkward Group (http://www.awkwardgroup.com)
	Licensed under Attribution-ShareAlike 3.0 Unported
	http://creativecommons.org/licenses/by-sa/3.0/
	
*/

var aw_check_custom_validation = new Array();

function aw_check( field ) {

	var checkpassed = new Array();
	
	jQuery(field + ' .input-box').each(function() {
	
		var checkfield = jQuery(this).attr('checkfield');
		var checkrule = jQuery(this).attr('checkerror');
		
		// Since v.1.3 we also check if the checkerror is set to be able to use other functions then just validation on checkfields
		if ( ( checkfield != '' && checkfield != undefined ) || ( checkrule != '' && checkrule != undefined ) ) {
			
			// Check the field
 			//checkpassed.push( aw_check_field( checkfield ) );
 			aw_check_field( checkfield, checkpassed )
		}
	});
	
	return ( jQuery.inArray( false, checkpassed ) == -1 ) ? true : false;

}

function aw_check_init( field, autocheck ) {
	
	if ( !autocheck ) { autocheck = true };
	
	jQuery(field + ' .input-box').each(function() {
	
		var checkfield = jQuery( this ).attr('checkfield');
		var checklabel = jQuery( this ).attr('checklabel');
		
		if ( checkfield != '' && checkfield != undefined ) {
			
			// Make checkbox labels clickable
			if ( jQuery( this ).hasClass('check') ) {
				
				jQuery( this ).find('label').click(function() {
					
					if ( jQuery( checkfield ).is( ':checked' ) ) {
					
						jQuery( checkfield ).attr('checked', false);
					}
					else {
					
						jQuery( checkfield ).attr('checked', true);
					}
					
					// Autocheck for checkboxes needs to be added to labels
					if ( autocheck ) aw_check_init_auto_check( this );
				})
			}
			
			// Ovelay labels
			if ( checklabel != '' && checklabel != undefined ) {
				
				// Insert value field
				jQuery( checkfield ).parent().prepend( '<span class="label">' +  checklabel + '</span>' );
				
				// Set focus on field on label click
				jQuery( checkfield ).parent().find( '.label' ).click( function() {
					
					checkfield = jQuery( this ).parent().attr( 'checkfield' );
					jQuery( checkfield ).focus();
				});
				
				// Toggle on key up
				jQuery( checkfield ).keyup( function() {
				
					aw_check_toggle_overlay_labels( this );
				});
				
				// Toggle on change (for auto complete)
				jQuery( checkfield ).change(function() {
					
					aw_check_toggle_overlay_labels( this );
				});
			}
			
			// Auto check (real-time validation)
			if ( autocheck ) {

				jQuery( checkfield ).change(function() {
				
					aw_check_init_auto_check( this );
				});
			}
		}
	});
}

function aw_check_toggle_overlay_labels( referer ) {

	// Create all variables
	var checkfield = jQuery( referer ).parent().attr( 'checkfield' );
	var label = jQuery( referer ).parent().find( '.label' );

	if ( jQuery( checkfield ).val() != '' ) {
		
		// Hide the value field
		jQuery( label ).hide(0);
	}
	else {
		
		// Show the value field
		jQuery( label ).fadeIn(100);
	}
}

function aw_check_init_auto_check( referer ) {

	// Create all variables
	var checkparent = jQuery( referer ).parent();
	var checkfield = jQuery( referer ).parent().attr( 'checkfield' );
	var checkrule = jQuery( referer ).parent().attr( 'checkrule' );
	
	// Split the checkrule into an array
	var checkrule_array = checkrule.split( ':' );
	
	if ( jQuery( checkfield ).val() == '' && checkrule_array[1] == 'empty' ) {
		
		// If a field can be empty, check the field
		aw_check_field( referer );
	}
	else if ( jQuery( checkfield ).val() != '' ) {
		
		// Otherwise only check field if it's not empty, otherwise it's annoying
		aw_check_field( referer );
	}
	else {
	
		aw_check_hide_check( checkparent );
	}
}

function aw_check_field( referer, checkpassed ) {
	
	// Create all variables
	var checkparent = jQuery( referer ).parent();
	var checkfield = jQuery( referer ).parent().attr('checkfield');
	var checkrule = jQuery( referer ).parent().attr('checkrule');
	var checkerror = jQuery( referer ).parent().attr('checkerror');
	var value = jQuery( checkfield ).val();
	if ( checkpassed == undefined ) checkpassed = new Array();
	
	// Split the checkrule into an array
	var checkrule_array = checkrule.split( ':' );
	checkrule = checkrule_array[0];
	
	if ( checkrule_array[1] == 'empty' &&  ( value == '' ) ) {
		
		// Just remove the message classes
		aw_check_hide_check( checkparent );
		checkpassed.push( true );
	}
	else {
		
		if ( checkrule == 'email' ) {
			
			// Check if it's a valid e-mail address	
			var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
			
			if ( value == '' || !emailReg.test( value ) ) {
			
				aw_check_print_error( checkparent, checkerror );
				checkpassed.push( false );
			}
			else {
			
				aw_check_hide_error( checkparent );
				checkpassed.push( true );
			}
		}
		else if ( checkrule == 'number' ) {
		
			// Check if the field only contain numbers
			var numberRegex = /^[\d]+$/;
		
			if ( !numberRegex.test( value ) ) {
			
				aw_check_print_error( checkparent, checkerror );
				checkpassed.push( false );
			}
			else {
			
				aw_check_hide_error( checkparent );
				checkpassed.push( true );
			}
		}
		else if ( checkrule == 'phone' ) {
		
			// Check if the field only contain numbers, whitespace or + (not that secure =)
			var numberRegex = /^[\d\s\+]+$/;
		
			if ( !numberRegex.test( value ) ) {
			
				aw_check_print_error( checkparent, checkerror );
				checkpassed.push( false );
			}
			else {
			
				aw_check_hide_error( checkparent );
				checkpassed.push( true );
			}
		}
		else if ( checkrule == 'check' ) {
		
			// If checked
			if ( !jQuery( checkfield ).is( ':checked' ) ) {
			
				aw_check_print_error( checkparent, checkerror );
				checkpassed.push( false );
			}
			else {
			
				aw_check_hide_error( checkparent );
				checkpassed.push( true );
			}
		}
		else if ( checkrule == 'text' ) {
			
			// Check if not just empty
			if ( value == '' ) {
				
				aw_check_print_error( checkparent, checkerror );
				checkpassed.push( false );
			}
			else {
			
				aw_check_hide_error( checkparent );
				checkpassed.push( true );
			}
		}
		else {
		
			// Get custom validation
			var custom_validation = aw_check_custom_validation[ checkrule ];
			
			try {
					
				// Custom regular expression
				if ( !custom_validation.test( value ) ) {

					aw_check_print_error( checkparent, checkerror );
					checkpassed.push( false );
				}
				else {
				
					aw_check_hide_error( checkparent );
					checkpassed.push( true );
				}
			}
			catch ( err ) {
			
				if ( typeof custom_validation == 'function' ) {
			
					custom_validation( checkparent, value, checkpassed );
				}
				else {
				
					checkpassed.push( false );
					alert(err);	
				}
			}
		}
	}
}

function aw_check_print_error( checkparent, checkerror ) {
	
	if ( checkerror != '' || checkerror != undefined ) {
		
		// Print error message if it's provided
		jQuery( checkparent ).find( '.error' ).text( checkerror );
		jQuery( checkparent ).find( '.check' ).attr( 'title', checkerror );
	}
	
	// Change CSS class to invalid
	jQuery( checkparent ).removeClass( 'valid' );
	jQuery( checkparent ).addClass( 'invalid' );
}

function aw_check_hide_error( checkparent ) {

	// Change CSS class to valid
	jQuery( checkparent ).removeClass( 'invalid' );
	jQuery( checkparent ).addClass( 'valid' );
}

function aw_check_hide_check( checkparent ) {

	// Just remove the message classes
	jQuery( checkparent ).removeClass( 'invalid' );
	jQuery( checkparent ).removeClass( 'valid' );
}