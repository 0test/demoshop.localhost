<h1>Репорт админу</h1>
<p>Новый заказ #{{ $data['order']['id'] }} на сайте {{ evo()->getConfig('site_url') }}</p>

<h4>Данные покупателя:</h4>


<ul>
    <li>Имя: {{ $data['order']['name'] }}</li>
    <li>Почта: {{ $data['order']['email'] }}</li>
    <li>Телефон: {{ $data['order']['phone'] }}</li>
</ul>
<p>
	Способ доставки: {{ $data['order']['fields']['delivery_method_title'] ?? ''}}<br>
	Способ оплаты: {{ $data['order']['fields']['payment_method_title'] ?? ''}}
</p>

<h4>Состав заказа:</h4>

{!! evo()->runSnippet('Cart',[
	'instance'=>'order',
	'templatePath'=>'views/',
	'tpl'=>'@B_FILE:cart.sendpage.reports.order_report_items_row',
	'ownerTPL'=>'@B_FILE:cart.sendpage.reports..order_report_items',
	'subtotalsTpl' => '@B_FILE:cart.sendpage.reports.order_report_subtotals',
	'subtotalsRowTpl'=>'@B_FILE:cart.sendpage.reports.order_report_subtotals_row',
    'optionsTpl' => '@B_FILE:cart.sendpage.reports.optionsTpl',
	'urlScheme'=>'full'
]) !!}