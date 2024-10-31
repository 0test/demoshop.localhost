<li data-id="{{ $data['id'] }}" data-commerce-row="{{ $data['row'] }}">
    <div class="d-flex justify-content-between align-items-start mb-2">
        <div class="me-auto">
            <div class="fw-bold"><a href="{{ $data['url'] }}"> {{ $data['name'] }}</a></div>
            <div class="modal_item_price">
                @price($data['price'])
                x  {{$data['count']}}
                =
                @price($data['total'])
            </div>
        </div>
        <span class="badge bg-primary rounded-pill">
            {{$data['count']}}
            <input type="hidden" name="count" class="form-control" value="{{$data['count']}}" data-commerce-action="recount">
        </span>
    </div>

    <div class="small text-muted mb-2">
        {!! $data['options'] !!}
    </div>
    <div class="align-items-center d-flex mb-2 mt-3">
        <div class="input-group flex-nowrap">
            <input data-commerce-action="decrease" type="button" value=" - " class=" btn btn-outline-primary btn-sm "
                data-field="quantity">
            <input data-commerce-action="increase" type="button" value=" + " class=" btn btn-outline-primary  btn-sm "
                data-field="quantity">
        </div>
        <button class="btn btn-close btn-sm " type="button" data-commerce-action="remove">
        </button>
    </div>
</li>