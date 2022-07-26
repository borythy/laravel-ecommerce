@extends('admin.admin_master')
@section('admin')

<div class="container-full">
    <section class="content">
        <div class="box">
            <div class="box-header with-border">
             <h4 class="box-title">Admin Change Password</h4>
            </div>
            <div class="box-body">
                <div class="row">
                    <div class="col">
                        <form action="{{ route('admin.update.change.password') }}" method="POST">
                            @csrf
                            <div class="row">
                                <div class="col-12">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <h5>Current Password <span class="text-danger">*</span></h5>
                                                <div class="controls">
                                                    <input type="password" id="current_password" name="old_password" class="form-control" required="" value="">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <h5>New Password <span class="text-danger">*</span></h5>
                                                <div class="controls">
                                                    <input type="password" id="password" name="password" class="form-control" required="" value="">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <h5>Confirm Password <span class="text-danger">*</span></h5>
                                                <div class="controls">
                                                    <input type="password" id="password_confirmation" name="password_confirmation" class="form-control" required="" value="">
                                                </div>
                                            </div>
                                        </div>
                                    </div> <!-- /.col-md-6 end -->
                                    <div class="text-xs-right">
                                    <input type="submit" class="btn btn-rounded btn-primary mb-5" value="Update">
                                    </div> <!-- /.text-xs-right end -->
                                </div> <!-- /.col-12 end -->
                            </div> <!-- /.row end -->
                        </form>
                    </div> <!-- /.col -->
                </div> <!-- /.row -->
            </div> <!-- /.box-body -->
        </div> <!-- /.box -->
    </section>
</div> <!-- /.container-full end -->

@endsection
