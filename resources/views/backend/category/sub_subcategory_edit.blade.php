@extends('admin.admin_master')
@section('admin')

<div class="container-full">
      <!-- Main content -->
      <section class="content">
        <div class="row">

          <!-- Add edit category -->
          <div class="col-12">
            <div class="box">
               <div class="box-header with-border">
                 <h3 class="box-title">Edit Sub-SubCategory</h3>
               </div>
               <div class="box-body">
                   <div class="table-responsive">
                    <form action="{{ route('subsubcategory.update') }}" method="POST">
                        @csrf
                        <input type="hidden" name="id" value="{{ $subsubcategories->id }}">
                        <div class="form-group">
                            <h5>Category <span class="text-danger">*</span></h5>
                            <div class="controls">
                                <select name="category_id" class="form-control">
                                    <option value="" selected="" disabled="">Select Category</option>
                                    @foreach ($categories as $category)
                                    <option value="{{ $category->id }}"
                                        {{ $category->id == $subsubcategories->category_id ? 'selected' : '' }}>
                                        {{ $category->category_name_en }}</option>
                                    @endforeach
                                </select>
                                @error('category_id')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group">
                            <h5>Sub Category <span class="text-danger">*</span></h5>
                            <div class="controls">
                                <select name="subcategory_id" class="form-control">
                                    <option value="" selected="" disabled="">Select Sub Category</option>
                                    @foreach ($subcategories as $subsubcate)
                                    <option value="{{ $subsubcate->id }}"
                                        {{ $subsubcate->id == $subsubcategories->subcategory_id ? 'selected' : '' }}>
                                        {{ $subsubcate->subcategory_name_en }}</option>
                                    @endforeach
                                </select>
                                @error('subcategory_id')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group">
                            <h5>Sub-SubCategory English Name <span class="text-danger">*</span></h5>
                            <div class="controls">
                                <input type="text" name="subsubcategory_name_en" value="{{ $subsubcategories->subsubcategory_name_en }}" class="form-control">
                                @error('subsubcategory_name_en')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group">
                            <h5>Sub-SubCategory Khmer Name <span class="text-danger">*</span></h5>
                            <div class="controls">
                                <input type="text" name="subsubcategory_name_kh" value="{{ $subsubcategories->subsubcategory_name_kh }}" class="form-control">
                                @error('subsubcategory_name_kh')
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
