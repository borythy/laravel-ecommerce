@extends('frontend.main_master')
@section('content')
@section('title')
Change Password
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
                        Change your password
                    </h3>
                    <div class="card-body">
                        <form action="{{ route('user.update.password') }}" method="POST">
                            @csrf
                            <div class="form-group">
                                <label for="current-password" class="info-title">Current Password<span></span></label>
                                <input type="password" id="old_password" name="old_password" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="new-password" class="info-title">New Password<span></span></label>
                                <input type="password" id="password" name="password" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="confirm-password" class="info-title">Confirm Password<span></span></label>
                                <input type="password" id="password_confirmation" name="password_confirmation" class="form-control">
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
