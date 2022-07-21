@extends('admin.admin_master')
@section('admin')

<div class="container-full">
      <!-- Main content -->
      <section class="content">
        <div class="row">
          <!-- Edit brand -->
          <div class="col-12">
            <div class="box">
               <div class="box-header with-border">
                 <h3 class="box-title">Edit Slider</h3>
               </div>
               <div class="box-body">
                   <div class="table-responsive">
                    <form action="{{ route('slider.update', $sliders->id) }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <input type="hidden" name="id" value="{{ $sliders->id }}">
	                    <input type="hidden" name="old_image" value="{{ $sliders->slider_img }}">
                        <div class="form-group">
                            <h5>Slider Tittle <span class="text-danger">*</span></h5>
                            <div class="controls">
                                <input type="text" name="title" value="{{ $sliders->title }}" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <h5>Slider Description <span class="text-danger">*</span></h5>
                            <div class="controls">
                                <input type="text" name="description" value="{{ $sliders->description }}" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <h5>Slider Image <span class="text-danger">*</span></h5>
                            <div class="controls">
                            <input type="file" name="slider_img" class="form-control">
                            @error('slider_img')
                            <span class="text-danger">{{ $message }}</span>
                            @enderror
                            </div>
                        </div>
                        <div class="text-xs-right">
                            <input type="submit" class="btn btn-rounded btn-primary mb-5" value="Update">
                        </div>
                    </form>
               <!-- /.box-body -->
             </div>
             <!-- /.box -->
           </div>
          <!-- end new slider -->
        </div>
        <!-- /.row -->
      </section>
      <!-- /.content -->
</div>
@endsection
