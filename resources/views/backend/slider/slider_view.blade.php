@extends('admin.admin_master')
@section('admin')

<div class="container-full">
      <!-- Main content -->
      <section class="content">
        <div class="row">
          <div class="col-8">
           <div class="box">
              <div class="box-header with-border">
                <h3 class="box-title">Slider List</h3>
              </div>
              <!-- /.box-header -->
              <div class="box-body">
                  <div class="table-responsive">
                    <table id="example1" class="table table-bordered table-striped">
                      <thead>
                          <tr>
                              <th>Slider Title</th>
                              <th>Slider Image</th>
                              <th>Description</th>
                              <th>Status</th>
                              <th>Action</th>
                          </tr>
                      </thead>
                      <tbody>
                          @foreach ($sliders as $slider )
                          <tr>
                                <td>
                                    @if($slider->title == NULL)
                                        <span class="badge badge-pill badge-danger">No Title</span>
                                    @else
                                        {{ $slider->title }}
                                    @endif
                                </td>
                                <td><img src="{{ asset($slider->slider_img) }}" style="width: 70px; height: 40px;"></td>
                                <td>{{ $slider->description }}</td>
                                <td>
                                    @if($slider->status == 1)
                                        <span class="badge badge-pill badge-success">Active</span>
                                    @else
                                        <span class="badge badge-pill badge-danger">Inactive</span>
                                    @endif
                                </td>
                                <td>
                                    <a href="{{ route('slider.edit', $slider->id) }}" class="btn btn-info" title="Edit Data"><i class="fa fa-pencil"></i></a>
                                    @if($slider->status == 1)
                                    <a href="{{ route('slider.inactive',$slider->id) }}" class="btn btn-danger" title="Inactive Now"><i class="fa fa-arrow-down"></i></a>
                                    @else
                                    <a href="{{ route('slider.active',$slider->id) }}" class="btn btn-success" title="Active Now"><i class="fa fa-arrow-up"></i></a>
                                    @endif
                                    <a href="{{ route('slider.delete', $slider->id) }}" class="btn btn-danger" id="delete" title="Delete Data"><i class="fa fa-trash"></i></a>
                                </td>
                          </tr>
                          @endforeach
                      </tbody>
                    </table>
                  </div>
              </div>
              <!-- /.box-body -->
            </div>
            <!-- /.box -->
          </div>
          <!-- /.col -->

          <!-- Add new slider -->
          <div class="col-4">
            <div class="box">
               <div class="box-header with-border">
                 <h3 class="box-title">Add Slider</h3>
               </div>
               <div class="box-body">
                   <div class="table-responsive">
                    <form action="{{ route('slider.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <h5>Slider Title <span class="text-danger">*</span></h5>
                            <div class="controls">
                                <input type="text" name="title" class="form-control">
                                @error('title')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
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
                        <div class="form-group">
                            <h5>Description <span class="text-danger">*</span></h5>
                            <div class="controls">
                                <input type="text" name="description" class="form-control">
                                @error('description')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="text-xs-right">
                            <input type="submit" class="btn btn-rounded btn-primary mb-5" value="Add New">
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
