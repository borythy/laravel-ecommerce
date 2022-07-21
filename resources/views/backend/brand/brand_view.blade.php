@extends('admin.admin_master')
@section('admin')

<div class="container-full">
    <section class="content">
        <div class="row">
            <div class="col-8">
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">Brand List <span class="badge badge-pill badge-danger"> {{ count($brands) }} </span></h3>
                    </div>
                    <div class="box-body">
                        <div class="table-responsive">
                            <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th>Brand English</th>
                                        <th>Brand Khmer</th>
                                        <th>Image</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($brands as $brand )
                                        <tr>
                                            <td>{{ $brand->brand_name_en }}</td>
                                            <td>{{ $brand->brand_name_kh }}</td>
                                            <td><img src="{{ asset($brand->brand_image) }}" style="width: 10%; height:10%;"></td>
                                            <td>
                                            <a href="{{ route('brand.edit', $brand->id) }}" class="btn btn-info" title="Edit Data"><i class="fa fa-pencil"></i></a>
                                            <a href="{{ route('brand.delete', $brand->id) }}" class="btn btn-danger" id="delete" title="Delete Data"><i class="fa fa-trash"></i></a>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div> <!-- /.table-responsive end -->
                    </div> <!-- /.box-body end -->
                </div> <!-- /.box end -->
            </div> <!-- /.col end -->
            <!-- Add new brand -->
            <div class="col-4">
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">Add Brand</h3>
                    </div>
                    <div class="box-body">
                        <div class="table-responsive">
                            <form action="{{ route('brand.store') }}" method="post" enctype="multipart/form-data">
                                @csrf
                                <div class="form-group">
                                    <h5>Brand Name English <span class="text-danger">*</span></h5>
                                    <div class="controls">
                                        <input type="text" name="brand_name_en" class="form-control">
                                        @error('brand_name_en')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="form-group">
                                    <h5>Brand Name Khmer <span class="text-danger">*</span></h5>
                                    <div class="controls">
                                        <input type="text" name="brand_name_kh" class="form-control">
                                        @error('brand_name_kh')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="form-group">
                                    <h5>Brand Image <span class="text-danger">*</span></h5>
                                    <div class="controls">
                                        <input type="file" name="brand_image" class="form-control">
                                        @error('brand_image')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="text-xs-right">
                                    <input type="submit" class="btn btn-rounded btn-primary mb-5" value="Add New">
                                </div>
                            </form>
                        </div> <!-- /.table-responsive end -->
                    </div> <!-- /.box-body end -->
                </div> <!-- /.box end -->
            </div> <!-- /.col-4 end -->
        </div> <!-- /.row end -->
    </section>  <!-- /.content end -->
</div> <!-- /.container-full end -->

@endsection
