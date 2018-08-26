/*----------------------------------
	//------ RANGE SLIDER ------//
	-----------------------------------*/
var min;
var max;
if ($("#from").val())
	min = $("#from").val();
else
	min = 20000000000;
if ($("#to").val())
	max = $("#to").val();
else
	max = 80000000000;

$(".slider-range").slider({
	range: true,
	min: 10000000,
	max: 100000000000,
	step: 10000000,
	values: [min, max],
	slide: function (event, ui) {
		$(".slider_amount").val('Giá từ: ' + ui.values[0].toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,") + "đ - " + ui.values[1].toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,") + 'đ');
		$("#from").val(ui.values[0]);
		$("#to").val(ui.values[1]);
	}
});
$(".slider_amount").val("Giá từ: " + $(".slider-range").slider("values", 0).toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,") + "đ - " + $(".slider-range").slider("values", 1).toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,") + 'đ');
$("#from").val($(".slider-range").slider("values", 0));
$("#to").val($(".slider-range").slider("values", 1));