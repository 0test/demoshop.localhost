<?php

namespace EvolutionCMS\Main\Traits;

/**
 * Трейт для использования 
 * в каталоге и разделах
 */
trait CatalogTrait
{

    /**
     * разделы в каталоге
     */
    public function getCatalogSections($parent = null)
    {
        /**
         * @var Object
         */
        $result = evo()->runSnippet('DocLister', [
            'parents' => empty($parent) ? 2 : $parent,
            'depth' => 0,
            'tvPrefix' => '',
            'tvList' => '',
            'returnDLObject' => 1,
            'display' => 0,
            'addWhereList' => 'c.template = ' . evo()->getConfig('catalog_section_template_id'),    //  only section
            'orderBy' => 'menuindex ASC'
        ]);
        $this->data['sections'] = $result->getDocs();
    }

    /**
     * товары
     */
    public function getCatalogItems($parent = null)
    {
        /**
         * @var Object
         */
        $result = evo()->runSnippet('DocLister', [
            'parents' => empty($parent) ? evo()->getConfig('catalog_id') : $parent,
            'depth' => 3,
            'tvPrefix' => '',
            'tvList' => 'price,product_photo,in_stock',
            'returnDLObject' => 1,
            'addWhereList' => 'c.template = ' . evo()->getConfig('product_template_id'),    //  only products
            'paginate' => 'pages',
            'config' => 'paginate:custom',
            'display' => 10,
        ]);
        $this->data['products'] = $result->getDocs();
        $this->data['pages'] = evolutionCMS()->getPlaceholder('pages');
    }
}
