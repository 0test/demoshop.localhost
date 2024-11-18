<div class="offcanvas-body" data-commerce-cart="{{ $data['hash'] }}" data-instance="{{ $data['instance'] }}">
    <div class="offcanvas-header p-0">
        <div class="d-flex flex-grow-1 justify-content-between">
            <h5 class="offcanvas-title" id="offcanvasExampleLabel">Корзина</h5>
            @if ($data['count'])
                <a href="@makeUrl($data['settings']['cart_page_id'])" class="btn btn-primary btn-sm">К заказу</a>
            @endif
        </div>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>

    </div>
    <div class="mt-3">
        @if ($data['count'])
        <div class="alert alert-success ">
            Товары: <strong><span id="totalitems">{{ $data['count'] }}</span> шт.</strong> на сумму @price($data['total'])
        </div>
        <ul class="list-group">
            {!! $data['dl.wrap'] !!}
        </ul>
        {!! $data['subtotals'] !!}
        @else
        <p>Корзина пуста</p>
        @endif


    </div>
</div>