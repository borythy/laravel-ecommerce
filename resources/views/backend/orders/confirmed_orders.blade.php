@extends('admin.admin_master')
@section('admin')

<div class="container-full">
	<section class="content">
		<div class="row">
		    <div class="col-12">
			    <div class="box">
                    <div class="box-header with-border">
                    <h3 class="box-title">Confirmed Orders List</h3>
                    </div>
                    <div class="box-body">
                        <div class="table-responsive">
                            <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th>Date</th>
                                        <th>Invoice</th>
                                        <th>Amount</th>
                                        <th>Payment</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($orders as $item)
                                    <tr>
                                        <td>{{ $item->order_date }}</td>
                                        <td>{{ $item->invoice_no }}</td>
                                        <td>${{ $item->amount }}</td>
                                        <td>{{ $item->payment_method }}</td>
                                        <td><span class="badge badge-pill badge-primary">{{ $item->status }}</span></td>
                                        <td width="25%">
                                        <a href="{{ route('pending.order.details',$item->id) }}" class="btn btn-info" title="Edit Data"><i class="fa fa-eye"></i></a>
                                        <a target="_blank" href="{{ route('invoice.download',$item->id) }}" class="btn btn-danger" title="Invoice Download">
                                            <i class="fa fa-download"></i></a>
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div> <!-- /.table-responsive end -->
                    </div> <!-- /.box-body end -->
			    </div> <!-- /.box end -->
			</div> <!-- /.col end -->
		</div> <!-- /.row end -->
	</section> <!-- /.content end -->
</div> <!-- /.container-full end -->
@endsection
