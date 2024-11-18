<?php

namespace EvolutionCMS\Main\Controllers\Pages;

use Carbon\Carbon;
use EvolutionCMS\Main\Controllers\BaseController;
use EvolutionCMS\Main\Traits\CatalogTrait;
use EvolutionCMS\Main\Traits\FilterTrait;

class Catalog extends BaseController
{

    use CatalogTrait, FilterTrait;
    public function setPageData()
    {
        /*
        Если без фильтров
        $this->getCatalogSections();
        $this->getCatalogItems();
        */

        /**
         * Если нужны фильтры
         */
        $this->makeFilter();
        $this->getFilteredCatalog();

        $this->data['count'] = evo()->getPlaceholder('eFilter_ids_cnt');
        $this->data['current'] = evo()->getPlaceholder('current');
        $this->data['from'] = evo()->getPlaceholder('from');
        $this->data['to'] = evo()->getPlaceholder('to');
        $this->data['totalPages'] = evo()->getPlaceholder('totalPages');
 
    }
}
