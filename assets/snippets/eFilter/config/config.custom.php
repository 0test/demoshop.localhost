<?php
if (!defined('MODX_BASE_PATH')) {
    die('What are you doing? Get out of here!');
}

//общая форма фильтра
$tplFilterForm = '<form id="eFiltr" class="flex-column eFiltr eFiltr_form"  action="[+url+]" method="get">[+wrapper+]</form>';
//кнопка "сброса" фильтра
$tplFilterReset = '
<div class="eFiltr_reset row">
    <div class="col-12">
        <a class="btn btn-sm btn-outline-secondary" href="[+reset_url+]">Сбросить фильтр</a>
    </div>
</div>';

//название категории фильтра
$filterCatName = '<div class="fltr_cat_zagol">[+cat_name+]</div>';

$tplOuterCategory = '
    <div class="filter_category pb-4 row row-cols-1 row-cols-lg-4">
        <!-- div class="fltr_name text-body-secondary title">[+cat_name+]</!-->
        [+wrapper+]
    </div>';
//класс категории фильтра
$filterCatClass = '';

//радио - radio 
$tplRowRadio = '
    <div class="form-check mb-2">
         <input class="form-check-input" type="radio" id="f_[+tv_id+]_[+value+]" name="f[[+tv_id+]][]" value="[+value+]" [+selected+] [+disabled+]>
        <label for="f_[+tv_id+]_[+value+]" class="[+disabled+] form-check-label d-flex align-items-center"  >
            [+name+] 
            <span class="ms-2 badge bg-body-tertiary border-1 text-bg-dark">[+count+]</span>
        </label>
    </div>
';
$tplOuterRadio = '
    <div class="filter_block js-filter-block   fltr_block[+tv_id+]   [+active_block_class+]">
        <div class="fltr_name   mb-2 text-body-secondary">
            [+name+]
        </div>
        <div class="js-filter-block-content radios">
            <div id="collapse[+tv_id+]" class="">
                <div class="form-check mb-2">
                    <input id="f_[+tv_id+]_[+value+]" class="form-check-input" checked type="radio" name="f[[+tv_id+]][]" value="0"> 
                    <label for="f_[+tv_id+]_[+value+]" class="form-check-label d-flex align-items-center"  >
                        Все 
                    </label>
                </div>
                [+wrapper+]
            </div>
        </div>
	</div>
';


//чекбоксы
$tplRowCheckbox = '
    <div class="form-check mb-2">
        <input id="f_[+tv_id+]_[+value+]" class="form-check-input" type="checkbox" name="f[[+tv_id+]][]" value="[+value+]" [+selected+] [+disabled+]>
        <label for="f_[+tv_id+]_[+value+]" class="[+disabled+] form-check-label d-flex align-items-center"  >
            [+name+] <span class="ms-2 badge bg-body-tertiary border-1 text-bg-dark">[+count+]</span>
        </label>
    </div>
';
$tplOuterCheckbox = '
    <div class="filter_block js-filter-block   fltr_block[+tv_id+]   [+active_block_class+]">
        <div class="fltr_name   mb-2 text-body-secondary">
            [+name+]
        </div>
        <div class="js-filter-block-content checkboxes">
            <div id="collapse[+tv_id+]" class="" >
                [+wrapper+]
            </div>
        </div>
    </div>
';



//выпадающий список - селект
$tplRowSelect = '<option value="[+value+]" [+selected+] [+disabled+]>[+name+] ([+count+])</option>';
$tplOuterSelect = '
	<div class="filter_block  [+active_block_class+]">
		<div class="fltr_name mb-2 text-body-secondary fltr_name[+tv_id+]">[+name+]</div>
        <div class="js-filter-block-content  ">
            <select class="form-select" name="f[[+tv_id+]][]">
                <option value="0"> - [+name+] - </option>
                [+wrapper+]
            </select>
        </div>
	</div>
';

//диапазон
$tplRowInterval = '
<div class="content slider js-filter-block-content js-slider" data-min="[+minval+]" data-max="[+maxval+]">
	<div class="inputs">
		<input class="js-input js-first-input" type="text" name="f[[+tv_id+]][min]" value="[+minval+]" data-min-val="[+minvalcurr+]" /><span>—</span><input class="js-input js-second-input" type="text" name="f[[+tv_id+]][max]" value="[+maxval+]" data-max-val="[+maxvalcurr+]" />
	</div>
	<div class="slider-input js-slider-element"></div>
</div>
';
$tplOuterInterval = '
	<div class="block js-filter-block [+active_block_class+] fltr_block fltr_block_interval fltr_block[+tv_id+]">
		<span class="title js-filter-block-title fltr_name fltr_name_interval fltr_name[+tv_id+]">[+name+]</span>
		[+wrapper+]
	</div>
';


//выпадающий список - мультиселект
$tplRowMultySelect = '<option value="[+value+]" [+selected+] [+disabled+]>[+name+] ([+count+])</option>';
$tplOuterMultySelect = '
	<div class="fltr_block fltr_block_multy fltr_block[+tv_id+] [+active_block_class+]">
		<span class="fltr_name fltr_name_multy fltr_name[+tv_id+]">[+name+]</span>
		<select name="f[[+tv_id+]][]" multiple size="5">
			<option value="0"> - [+name+] - </option>
			[+wrapper+]
		</select>
	</div>
';
//одиночный чекбокс
$tplRowSingleCheckbox = '
    <label class="[+disabled+]">
        <input type="checkbox" name="f[[+tv_id+]]" value="[+value+]" [+selected+] [+disabled+]> [+name+] <span class="fltr_count">[+count+]</span>
    </label>
';
$tplOuterSingleCheckbox = '
    <div class="filter_block  fltr_block_checkbox fltr_block_single_checkbox fltr_block[+tv_id+] [+active_block_class+]" data-tv-name="[+tv_name+]">
        <div class="fltr_name   mb-2 text-body-secondary">
            [+name+]
        </div>
        <div class="js-filter-block-content checkboxes">
            <div   class="" >
                [+wrapper+]
            </div>
        </div>
 
    </div>
';
//слайдер
$tplRowSlider = '
<div class="align-items-center d-flex mt-4">
    <div class="d-flex me-5 align-items-center">
    от <input class="ms-2 form-control form-control-sm" type="text" id="minCostInp[+tv_id+]" name="f[[+tv_id+]][min]" value="[+minval+]" data-min-val="[+minvalcurr+]">
    </div>
    <div class="d-flex align-items-center ">
    до <input  class="ms-2 form-control form-control-sm" type="text" id="maxCostInp[+tv_id+]" name="f[[+tv_id+]][max]" value="[+maxval+]" data-max-val="[+maxvalcurr+]">
    </div>
</div>';
$tplOuterSlider = '
	<div class="filter_block fltr_block_slider mb-0 mb-5 mb-lg-0 [+active_block_class+]">
		<div class="fltr_name   mb-2 text-body-secondary">[+name+]</div>
		<div class="fltr_inner fltr_inner_slider fltr_inner[+tv_id+]">
            <div class="slider_text slider_text[+tv_id+]">
                от <span class="badge border-1 text-bg-secondary" id="minCost[+tv_id+]"></span> до <span class="badge border-1 text-bg-secondary" id="maxCost[+tv_id+]"></span>
            </div>
		<div id="slider[+tv_id+]" class="mt-4"></div>
		[+wrapper+]
		</div>
	</div>
	<script type="text/javascript">
	
$(document).ready(function(){
var minCost[+tv_id+] = 0;
var maxCost[+tv_id+] = 0;
var minCostCurr[+tv_id+] = 0;
var maxCostCurr[+tv_id+] = 0;
if ($("#minCostInp[+tv_id+]").val() != "") {
	minCostCurr[+tv_id+] = $("#minCostInp[+tv_id+]").val();
} else {
	minCostCurr[+tv_id+] = $("#minCostInp[+tv_id+]").data("minVal");
}
if ($("#maxCostInp[+tv_id+]").val() != "") {
	maxCostCurr[+tv_id+] = $("#maxCostInp[+tv_id+]").val();
} else {
	maxCostCurr[+tv_id+] = $("#maxCostInp[+tv_id+]").data("maxVal");
}
minCost[+tv_id+] = $("#minCostInp[+tv_id+]").data("minVal");
maxCost[+tv_id+] = $("#maxCostInp[+tv_id+]").data("maxVal");
$("#minCost[+tv_id+]").html(minCostCurr[+tv_id+]);
$("#maxCost[+tv_id+]").html(maxCostCurr[+tv_id+]);
$("#slider[+tv_id+]").slider({
	min: minCost[+tv_id+],
	max: maxCost[+tv_id+],
	values: [ minCostCurr[+tv_id+],maxCostCurr[+tv_id+] ],
	range: true,
	stop: function(event, ui) {
		$("input#minCostInp[+tv_id+]").val($("#slider[+tv_id+]").slider("values",0));
		$("input#maxCostInp[+tv_id+]").val($("#slider[+tv_id+]").slider("values",1));
		$("#minCost[+tv_id+]").text($("#slider[+tv_id+]").slider("values",0));
		$("#maxCost[+tv_id+]").text($("#slider[+tv_id+]").slider("values",1));
		$("input#minCostInp[+tv_id+]").change();
    },
    slide: function(event, ui){
		$("input#minCostInp[+tv_id+]").val($("#slider[+tv_id+]").slider("values",0));
		$("input#maxCostInp[+tv_id+]").val($("#slider[+tv_id+]").slider("values",1));
		$("#minCost[+tv_id+]").text(jQuery("#slider[+tv_id+]").slider("values",0));
		$("#maxCost[+tv_id+]").text(jQuery("#slider[+tv_id+]").slider("values",1));
    }
});
});
</script>
';

//цвета
$tplRowColors = '
	<label class="[+disabled+] [+label_selected+]" style="background:[+value+]" title="[+name+] ([+count+])">
		<input type="checkbox" name="f[[+tv_id+]][]" value="[+value+]" [+selected+] [+disabled+]> [+name+] <span class="fltr_count">[+count+]</span>
	</label>
';
$tplOuterColors = '
	<div class="fltr_block fltr_block_checkbox fltr_colors fltr_block[+tv_id+] fltr_colors[+tv_id+] [+active_block_class+]">
		<span class="fltr_name fltr_name_checkbox fltr_name[+tv_id+]">[+name+]</span>
		[+wrapper+]
	</div>
';

//паттерн
$tplRowPattern = '
	<label class="[+disabled+] [+label_selected+]" title="[+name+] ([+count+])">
		<input type="checkbox" name="f[[+tv_id+]][]" value="[+value+]" [+selected+] [+disabled+]> <img src="[+pattern_folder+][+value+]" alt="[+name+]"> [+name+] <span class="fltr_count">[+count+]</span>
	</label>
';
$tplOuterPattern = '
	<div class="fltr_block fltr_block_checkbox fltr_pattern fltr_block[+tv_id+] fltr_pattern[+tv_id+] [+active_block_class+]">
		<span class="fltr_name fltr_name_checkbox fltr_name[+tv_id+]">[+name+]</span>
		[+wrapper+]
	</div>
';
