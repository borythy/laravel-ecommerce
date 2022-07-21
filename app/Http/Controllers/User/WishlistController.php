<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Wishlist;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;

class WishlistController extends Controller
{
    public function ViewWishlist()
    {
        return view('frontend.wishlist.view_wishlist');
    }

    public function GetWishlistProduct()
    {
        $wishlist = Wishlist::with('product')
            ->where('user_id', Auth::id())->latest()->get();
        return response()->json($wishlist);
    }

    public function RemoveWishlistProduct($id)
    {
        Wishlist::where('user_id', Auth::id())->where('id', $id)->delete();
        return response()->json(['success' => 'Product Removed, Successfully.']);
    }
}
