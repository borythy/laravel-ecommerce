@extends('frontend.main_master')
@section('content')
@section('title')
My Profile
@endsection
<div class="body-container">
    <div class="container">
        <div class="row">

            @include('frontend.common.user_sidebar')

            <div class="col-md-2">
            </div><!-- /.col-md-2 end -->
            <div class="col-md-6">
                <div class="card">
                    <h3 class="text-center">
                        <span class="text-danger">Hi...,</span>
                        <strong>{{ Auth::user()->name }}</strong>
                        Welcome to Easy Online Shop
                    </h3>
                </div>
            </div> <!-- /.col-md-6 end -->
        </div> <!-- /. row end -->
    </div> <!-- /.container end -->
</div> <!-- /.body-container end -->

@endsection
