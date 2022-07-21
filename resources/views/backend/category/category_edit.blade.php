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
                 <h3 class="box-title">Edit Category</h3>
               </div>
               <div class="box-body">
                   <div class="table-responsive">
                    <form action="{{ route('category.update', $category->id) }}" method="post">
                        @csrf
                        <input type="hidden" name="id" value="{{ $category->id }}">
                        <div class="form-group">
                            <h5>Category Name English <span class="text-danger">*</span></h5>
                            <div class="controls">
                                <input type="text" name="category_name_en" value="{{ $category->category_name_en }}" class="form-control">
                                @error('category_name_en')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group">
                            <h5>Category Name Khmer <span class="text-danger">*</span></h5>
                            <div class="controls">
                                <input type="text" name="category_name_kh" value="{{ $category->category_name_kh }}" class="form-control">
                                @error('category_name_kh')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group">
                            <h5>Category Icon <span class="text-danger">*</span></h5>
                            <div class="controls">
                                <input type="text" name="category_icon" value="{{ $category->category_icon }}" class="form-control">
                                @error('category_icon')
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
          <!-- end new brand -->
        </div>
        <!-- /.row -->
      </section>
      <!-- /.content -->
</div>
@endsection
