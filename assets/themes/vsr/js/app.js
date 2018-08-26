$(document).ready(function() {
	$("form").submit(function() {
        $(this).find(":input").filter(function(){ return !this.value; }).attr("disabled", "disabled");
        return true;
    });
    $("form").find(":input").prop("disabled", false);

	$('#category').on('change.select2', function() {
		var category = $(this).val();
		$("#type > option").each(function() {
			$(this).attr('disabled', 'disabled');
		    if ($(this).attr('category') == category)
		    	$(this).removeAttr('disabled');
		});
		$('#type').val('').select2();
	});
	$('#location').on('change.select2', function() {
		var location = $(this).val();
		$("#town > option").each(function() {
			$(this).attr('disabled', 'disabled');
		    if ($(this).attr('location') == location)
		    	$(this).removeAttr('disabled');
		});
		$('#town').val('').select2();
	});

	if ($('#acreage_from').val() && $('#acreage_to').val()) {
		$('#acreage option').remove();
		$('#acreage').append('<option disabled selected class="d-none">Từ ' + addCommas($('#acreage_from').val()) + ' m² đến ' + addCommas($('#acreage_to').val()) + ' m²</option>');
	} else if ($('#acreage_to').val()) {
		$('#acreage option').remove();
		$('#acreage').append('<option disabled selected class="d-none">Dưới ' + addCommas($('#acreage_to').val()) + ' m²</option>');
	} else if ($('#acreage_from').val()) {
		$('#acreage option').remove();
		$('#acreage').append('<option disabled selected class="d-none">Từ ' + addCommas($('#acreage_from').val()) + ' m²</option>');
	}

	if ($('#price_from').val() && $('#price_to').val()) {
		$('#price option').remove();
		$('#price').append('<option disabled selected class="d-none">Từ ' + addCommas($('#price_from').val()) + ' ₫ đến ' + addCommas($('#price_to').val()) + ' ₫</option>');
	} else if ($('#price_to').val()) {
		$('#price option').remove();
		$('#price').append('<option disabled selected class="d-none">Dưới ' + addCommas($('#price_to').val()) + ' ₫</option>');
	} else if ($('#price_from').val()) {
		$('#price option').remove();
		$('#price').append('<option disabled selected class="d-none">Từ ' + addCommas($('#price_from').val()) + ' ₫</option>');
	}

	$('.select2').select2();
	$('.page-link').on('click', function() {
		window.location.href = $(this).find('a').attr('href');
	});

	var flagClickBody = true;
	$('.select-input').on('click', function() {
		$('.select-input').not(this).next().hide();
		$(this).next().show();
		flagClickBody = false;
	});
	$('.for-select').on('click', function() {
		flagClickBody = false;
	});
	$('body').on('click', function() {
		if (flagClickBody)
			$('.select-input').next().hide();
		flagClickBody = true;
	});

});
function addCommas(nStr)
{
    nStr += '';
    x = nStr.split('.');
    x1 = x[0];
    x2 = x.length > 1 ? '.' + x[1] : '';
    var rgx = /(\d+)(\d{3})/;
    while (rgx.test(x1)) {
        x1 = x1.replace(rgx, '$1' + ',' + '$2');
    }
    return x1 + x2;
}
function alert_float(type, message) {
    var aId, el;
    aId = $('body').find('float-alert').length;
    aId++;
    aId = 'alert_float_' + aId;
    el = $('<div id="' + aId + '" class="float-alert animated fadeInRight alert alert-' + type + '"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button><span class="far fa-bell" data-notify="icon"></span><span class="alert-title">' + message + '</span></div>');
    $('body').append(el);

    setTimeout(function() {
        $('#' + aId).hide('fast', function() { $('#' + aId).remove(); });
    }, 5000);
}