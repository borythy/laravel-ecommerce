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
                 <h3 class="box-title">Edit Sub Category</h3>
               </div>
               <div class="box-body">
                   <div class="table-responsive">
                    <form action="{{ route('subcategory.update', $subcategory->id) }}" method="post">
                        @csrf
                        <input type="hidden" name="id" value="{{ $subcategory->id }}">
                        <div class="form-group">
                            <h5>Sub Category Name English <span class="text-danger">*</span></h5>
                            <div class="controls">
                                <input type="text" name="subcategory_name_en" value="{{ $subcategory->subcategory_name_en }}" class="form-control">
                                @error('subcategory_name_en')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group">
                            <h5>Sub Category Name Khmer <span class="text-danger">*</span></h5>
                            <div class="controls">
                                <input type="text" name="subcategory_name_kh" value="{{ $subcategory->subcategory_name_kh }}" class="form-control">
                                @error('subcategory_name_kh')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group">
                            <h5>Category <span class="text-danger">*</span></h5>
                            <div class="controls">
                                <select name="category_id" class="form-control">
                                    <option value="" selected="" disabled="">Select Category</option>
                                    @foreach ($categories as $category)
                                    <option value="{{ $category->id }}"
                                        {{ $category->id == $subcategory->category_id ? 'selected' : '' }}>
                                        {{ $category->category_name_en }}</option>
                                    @endforeach
                                </select>
                                @error('category_id')
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
