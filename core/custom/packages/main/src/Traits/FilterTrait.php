<?php

namespace EvolutionCMS\Main\Traits;

use EvolutionCMS\Main\Controllers\Helpers\Helper;

/**
 * Трейт для использования
 * eFilter
 */
trait FilterTrait
{
	/**
	 * Ставим плейсхолдер efilterForm
	 */
	public function makeFilter()
	{
		evo()->runSnippet('eFilter', [
			'ajax' => 1,
			'css' => 0,
			'remove_disabled' => 0,
			'changeState' => 0,
			'cfg' => 'custom',
            'activeBlockClass' => 'show',
    
            
		]);
		$efilterForm = evo()->getPlaceholder('eFilter_form') ??  '';
		$this->data['efilterForm'] = $efilterForm;
	}
	/**
	 * Возвращаем результаты 
	 * в плейсхолдер catalog
	 * а пагинацию в pages
	 */
	public function getFilteredCatalog()
	{
		$json = evo()->runSnippet('eFilterResult', [
			'parents' => evo()->documentObject['id'],
			'api' => 1,
            'tvList' => 'price,product_photo,in_stock,product_brand,product_color',
			'tvPrefix' => '',
			'display' => 10,
			'depth' => '4',
			'paginate' => 'pages',
            'addWhereList' => 'c.template = ' . evo()->getConfig('product_template_id'),    //  only products
			'config' => 'paginate:custom'
		]);

		
		if (!empty($json)) {
			$arr = json_decode($json, 1);
		}
		$this->data['products'] = $arr;
		$this->data['pages'] = evo()->getPlaceholder('pages');
	}

 
}
