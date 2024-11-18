@extends('layout.app')

@section('content')
<div class="container my-5">
    <section class="col-lg-12 col-12 px-0">
        <h1>Товары</h1>
        @if ($products)
        <section class="row mt-2 row-cols-lg-5  row-cols-sm-3 row-cols-1">
            @foreach ($products as $product)
            @include('parts.product_in_feed')
            @endforeach
        </section>
        @endif
    </section>
    <section class="col-lg-12 col-12 px-0">
        <h1>Обзоры</h1>
        <div class="row mt-3">
            @foreach ($articles as $article)
            @include('parts.article_in_feed')
            @endforeach
        </div>
    </section>
</div>
@endsection