@extends('layout.app')

@section('content')

<div class="container my-5">
    {!! $crumbs !!}
    <div class="col">
        <article class="row mt-5" itemscope itemtype="https://schema.org/Product">
            <div class="col-lg-4 col-md-6 col-12">
                <figure>
                    <img id="main_image" data-src="@phpthumb($product_photo,'w=500,h=400,zc=1')"
                        src="@phpthumb($product_photo,'w=500')" loading="lazy" class="img-thumbnail"
                        alt="{{$pagetitle}}" itemprop="image" width="500" height="400">
                </figure>
            </div>
            <div class="col-lg-8 col-md-6 col-12">
                <form data-commerce-action="add" data-instance="{{ $cart_instance }}" itemprop="offers" itemscope
                    itemtype="https://schema.org/Offer">
                    <input type="hidden" name="id" value="{{$id}}">
                    <input type="hidden" name="count" value="1">
                    <header>
                        <h1 itemprop="name">{{$pagetitle}}</h1>
                    </header>
                    <div class="fs-4 mt-3">
                        Цена: <span id="price" itemprop="price" content="{{ $price }}">@price($price)</span>
                        <meta itemprop="priceCurrency" content="RUB" />
                    </div>
                    <!-- options -->
                    <div class="mt-3">
                        <div class=" ">
                            <div class="align-content-center d-flex">
                                <div class="me-1 p-1">Марка:</div>
                                <div class="bg-body-tertiary border p-1 rounded-2">{{$brand_value}}</div>
                                <input type="hidden" name="options[product_brand]" value="{{$brand_value}}">
                            </div>
                        </div>
                        <div class=" mt-2">
                            <div class="align-content-center d-flex">
                                <div class="me-1 p-1">Цвет:</div>
                                @foreach ($color_values as $color_value)
                                <div class="form-check form-check-inline">
                                    <input {{$loop->iteration == 1 ? 'checked' : ''}} class="form-check-input" type="radio" name="options[product_color]"
                                        id="color{{$loop->iteration}}" value="{{$color_value}}">
                                    <label class="form-check-label" for="color{{$loop->iteration}}">{{$color_value}}</label>
                                </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                    <!-- /END options -->
                    <div class="mt-3">



                        <!-- в наличии или нет: InStock / OutOfStock -->
                        @if ($in_stock)
                        <meta itemprop="availability" content="https://schema.org/InStock">
                        <button type="submit" class="btn btn-primary">Купить</button>
                        @else
                        <button data-bs-toggle="modal" data-bs-target="#callmeModal" type="button"
                            class="btn btn-secondary">Узнать о поступлении</button>
                        <meta itemprop="availability" content="https://schema.org/OutOfStock">
                        @endif

                    </div>
                    <div class=" mt-3" itemprop="description">
                        @evoParser($content)
                    </div>
                </form>
            </div>
        </article>
    </div>
</div>

<div class="container my-5">
    <div class="col-lg-12 col-12 px-0">
        <h2>Похожие товары:</h2>
        @if ($relative)
        <section class="row mt-2 row-cols-lg-5  row-cols-sm-3 row-cols-1">
            @foreach ($relative as $product)
            @include('parts.product_in_feed')
            @endforeach
        </section>
        <div class="row">
            {!! $pages ?? '' !!}
        </div>
        @endif
    </div>
</div>
@endsection