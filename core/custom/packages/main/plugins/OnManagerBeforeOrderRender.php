<?php

use EvolutionCMS\Main\Models\PrivateFile;
use EvolutionCMS\Models\User;
use EvolutionCMS\UserManager\Facades\UserManager;
use Illuminate\Support\Facades\Event;

/**
 * Админка коммерс
 * Правим внешку, добавляем файлы
 */

Event::listen(['evolution.OnManagerBeforeOrderRender'], function ($params) {

    $user = User::find($params['order']['customer_id']) ? User::find($params['order']['customer_id']) : 0;


    $params['config']['tvList'] = 'product_photo';
    $params['config']['imageField'] = 'tv.product_photo';
    $order_id = (int) $params['order']['id'];

    $params['groups']['contact']['fields']['phone'] = [
        'title'   => 'Телефон',
        'content' => function ($data) {
            return $data['phone'];
        },
        'sort'    => 40,
    ];
    $params['groups']['contact']['fields']['name'] = [
        'title'   => 'Имя',
        'content' => function ($data) {
            return $data['name'];
        },
        'sort'    => 50,
    ];

    $params['columns']['options'] = [
        'title' => 'Опции товара',
        'content' => function ($data, $DL, $eDL) {

            $res = '';
            foreach ($data['options'] as $key => $value) {
                $res .= '<div class="badge bg-secondary p-1 m-1 text-white">';
                $res .=    $value;
                $res .= "</div>";
            }
            return $res;
        },
        'sort' => 40,
    ];
});
