@extends('layout.app')

@section('content')
<div class="container my-5">
    {!! $crumbs !!}
    <div class="col-lg-12 col-12 px-0">
        <h1>{{$pagetitle}}</h1>
        @if ($products)
        <section class="row mt-2 row-cols-lg-5  row-cols-sm-3 row-cols-1">
            @foreach ($products as $product)
            @include('parts.product_in_feed')
            @endforeach
        </section>
        @endif
        @if($pages)
        <div class="row">
            {!! $pages ?? '' !!}
        </div>
        @endif
    </div>
</div>
@endsection