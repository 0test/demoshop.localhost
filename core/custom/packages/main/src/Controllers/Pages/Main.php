<?php

namespace EvolutionCMS\Main\Controllers\Pages;

use Carbon\Carbon;
use EvolutionCMS\Main\Controllers\BaseController;
use Illuminate\Support\Facades\Cache;

class Main extends BaseController
{

    public function setPageData()
    {

        $_json  = evo()->runSnippet('DocLister', [
            'parents' => evo()->getConfig('catalog_id'),
            'tvPrefix' => '',
            'tvList' => 'price,product_photo,in_stock',
            'display' => 5,
            'total' => 5,
            'depth' => 1,
            'addWhereList' => "c.template = " . evo()->getConfig('product_template_id'),    //  only products
            'api' => 1,
        ]);
        if (!empty($_json)) {
            $_result = json_decode($_json, 1);
        }
        $this->data['products'] = $_result;


        $_json  = evo()->runSnippet('DocLister', [
            'parents' => evo()->getConfig('articles_id'),
            'tvPrefix' => '',
            'tvList' => 'article_photo',
            'display' => 3,
            'config' => 'paginate:custom',
            'orderBy' => 'menuindex ASC',
            'depth' => 1,
            'addWhereList' => 'c.template = ' . evo()->getConfig('articles_template_id'),    //  only articles
            'api' => 1,
        ]);

        if (!empty($_json)) {
            $_result = json_decode($_json, 1);
        }
        $this->data['articles'] = $_result;
    }
}
