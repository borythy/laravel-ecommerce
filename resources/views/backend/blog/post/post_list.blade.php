@extends('admin.admin_master')
@section('admin')

<div class="container-full">
	<section class="content">
		<div class="row">
		    <div class="col-12">
			    <div class="box">
				    <div class="box-header with-border">
				    <h3 class="box-title">Blog Post List <span class="badge badge-pill badge-danger"> {{ count($blogpost) }}</span></h3>
                    <a href="{{ route('add.post') }}" class="btn btn-success" style="float: right;">Add Blog Post</a>
				    </div>
				    <div class="box-body">
                        <div class="table-responsive">
                            <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th>Post Category</th>
                                        <th>Post Image</th>
                                        <th>Post Title English</th>
                                        <th>Post Title Khmer</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($blogpost as $item)
                                        <tr>
                                            <td>{{ $item->category->blog_category_name_en }}</td>
                                            <td><img src="{{ asset($item->post_image) }}" style="width: 60px; height: 60px;"></td>
                                            <td>{{ $item->post_title_en }}</td>
                                            <td>{{ $item->post_title_kh }}</td>
                                            <td width="20%">
                                            <a href="{{ route('blog.category.edit',$item->id) }}" class="btn btn-info" title="Edit Data"><i class="fa fa-pencil"></i></a>
                                            <a href="{{ route('category.delete',$item->id) }}" class="btn btn-danger" title="Delete Data" id="delete">
                                            <i class="fa fa-trash"></i></a>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div> <!-- /.table-responsive end -->
				    </div> <!-- /.box-body end -->
			    </div> <!-- /.box end -->
			</div> <!-- /.col-12 end -->
		</div> <!-- /.row end -->
	</section><!-- /.content end -->
</div> <!-- /.container-full end -->

@endsection
