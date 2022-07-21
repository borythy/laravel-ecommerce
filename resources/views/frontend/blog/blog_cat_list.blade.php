@extends('frontend.main_master')
@section('content')

@section('title')
Blog Category Page
@endsection

<div class="breadcrumb">
	<div class="container">
		<div class="breadcrumb-inner">
			<ul class="list-inline list-unstyled">
				<li><a href="#">Home</a></li>
				<li class='active'>Blog</li>
			</ul>
		</div><!-- /.breadcrumb-inner -->
	</div><!-- /.container -->
</div><!-- /.breadcrumb -->

<div class="body-content">
	<div class="container">
		<div class="row">
			<div class="blog-page">
				<div class="col-md-9">
				    @foreach($blogpost as $blog)
					<div class="blog-post wow fadeInUp">
                        <a href="{{ route('post.details',$blog->id) }}"><img class="img-responsive" src="{{ asset($blog->post_image) }}" alt="{{ $blog->post_title_en }}"></a>
                        <h1><a href="{{ route('post.details',$blog->id) }}"> @if(session()->get('language') == 'khmer') {{ $blog->post_title_kh }} @else {{ $blog->post_title_en }} @endif</a></h1>
                        <span class="date-time"> {{ Carbon\Carbon::parse($blog->created_at)->diffForHumans()  }}</span>
                        <p>@if(session()->get('language') == 'khmer') {!! Str::limit($blog->post_details_kh, 200) !!} @else {!! Str::limit($blog->post_details_en, 200) !!} @endif</p>
                        <a href="{{ route('post.details',$blog->id) }}" class="btn btn-upper btn-primary read-more">read more</a>
                    </div>
                    @endforeach
                    <div class="clearfix blog-pagination filters-container  wow fadeInUp" style="padding:0px; background:none; box-shadow:none; margin-top:15px; border:none">

                    </div><!-- /.filters-container -->
                </div> <!-- /.col-md-9 end -->
				<div class="col-md-3 sidebar">
					<div class="sidebar-module-container">
						<div class="search-area outer-bottom-small">
                            <form>
                                <div class="control-group">
                                    <input placeholder="Type to search" class="search-field">
                                    <a href="#" class="search-button"></a>
                                </div>
                            </form>
                        </div>
                        <div class="home-banner outer-top-n outer-bottom-xs">
                        <img src="{{ asset('frontend/assets/images/banners/LHS-banner.jpg') }} " alt="image">
                        </div>
                        <!-- Category start -->
                        <div class="sidebar-widget outer-bottom-xs wow fadeInUp">
                            <h3 class="section-title">Blog Category</h3>
                            <div class="sidebar-widget-body m-t-10">
                                <div class="accordion">
                                    @foreach($blogcategory as $category)
                                    <ul class="list-group">
                                        <a href="{{ url('blog/category/post/'.$category->id) }}"><li class="list-group-item">@if(session()->get('language') == 'khmer') {{ $category->blog_category_name_kh }} @else {{ $category->blog_category_name_en }} @endif</li></a>
                                    </ul>
                                    @endforeach
                                </div><!-- /.accordion -->
                            </div><!-- /.sidebar-widget-body -->
                        </div><!-- /.sidebar-widget -->
                        <!-- Category end -->
                        <!-- Product tags start -->
                        <div class="sidebar-widget product-tag wow fadeInUp">
                            <h3 class="section-title">Product tags</h3>
                            <div class="sidebar-widget-body outer-top-xs">
                                <div class="tag-list">
                                    <a class="item" title="Phone" href="category.html">Phone</a>
                                    <a class="item active" title="Vest" href="category.html">Vest</a>
                                    <a class="item" title="Smartphone" href="category.html">Smartphone</a>
                                    <a class="item" title="Furniture" href="category.html">Furniture</a>
                                    <a class="item" title="T-shirt" href="category.html">T-shirt</a>
                                    <a class="item" title="Sweatpants" href="category.html">Sweatpants</a>
                                    <a class="item" title="Sneaker" href="category.html">Sneaker</a>
                                    <a class="item" title="Toys" href="category.html">Toys</a>
                                    <a class="item" title="Rose" href="category.html">Rose</a>
                                </div> <!-- /.tag-list -->
                            </div> <!-- /.sidebar-widget-body -->
                        </div><!-- /.sidebar-widget -->
                        <!-- Product tags end -->
                    </div> <!-- /.sidebar-module-container end -->
                </div> <!-- /.col-md-3 sidebar end -->
			</div> <!-- /.blog-page end -->
		</div> <!-- /.row end -->
	</div> <!-- /.container end -->
</div> <!-- /.body-content end -->

@endsection
