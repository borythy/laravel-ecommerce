@extends('frontend.main_master')
@section('content')
@section('title')
Update Profile
@endsection
<div class="body-container">
    <div class="container">
        <div class="row">
            @include('frontend.common.user_sidebar')

            <div class="col-md-2"></div>
            <div class="col-md-6">
                <div class="card">
                    <h3 class="text-center">
                        <span class="text-danger">Hi...,</span>
                        <strong>{{ Auth::user()->name }}</strong>
                        Update your profile
                    </h3>
                    <div class="card-body">
                        <form action="{{ route('user.profile.store') }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="form-group">
                                <label for="name" class="info-title">Name<span></span></label>
                                <input type="text" id="name" name="name" value="{{ $user->name }}" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="email" class="info-title">Email<span></span></label>
                                <input type="email" id="email" name="email" value="{{ $user->email }}" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="phone" class="info-title">Phone<span></span></label>
                                <input type="text" id="phone" name="phone" value="{{ $user->phone }}" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="image" class="info-title">Image<span></span></label>
                                <input type="file" id="profile_photo_path" name="profile_photo_path" class="form-control">
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-danger">Update</button>
                            </div>
                        </form>
                    </div> <!-- End card-body -->
                </div> <!-- End card -->
            </div> <!-- End col-md-6 -->

        </div> <!-- End row -->
    </div> <!-- End container -->
</div> <!-- End body-container -->

@endsection
