@extends('layout.app')

@section('content')
<div class="container my-5">
    {!! $crumbs !!}
    <div class="col-lg-12 col-12 px-0">
        <h1>{{$pagetitle}}</h1>

        <div>
            {!! $efilterForm !!}
        </div>
        <div class="mt-3 position-relative" id="eFiltr_results_wrapper">
            <div class="eFiltr_loader spinner-border text-body-emphasis" style="background: none;"></div>
            <div class="catalog  " id="eFiltr_results">
                <div class="row mt-2 mb-4">
                    <div class="col-12">
                        Всего найдено: <div class="badge text-bg-secondary">{{$count}}</div>, страница <div
                            class="badge text-bg-secondary">{{$current}}</div> из <div class="badge text-bg-secondary">
                            {{$totalPages}}</div>
                    </div>
                </div>
                @if (!@empty($products))
                <div class="row mt-2 row-cols-lg-5  row-cols-sm-3 row-cols-1">
                    @foreach ($products as $product)
                    @include('parts.product_in_feed', $product)
                    @endforeach
                </div>
                @endif
                @if($pages)
                    <div class="row">
                        {!! $pages ?? '' !!}
                    </div>
                @endif
            </div>
        </div>
    </div>
</div>
@endsection