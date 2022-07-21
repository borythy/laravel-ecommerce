<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Brand;
use Intervention\Image\Facades\Image;

class BrandController extends Controller
{
    public function BrandView()
    {
        $brands = Brand::latest()->get();
        return view('backend.brand.brand_view', compact('brands'));
    }

    public function BrandStore(Request $request)
    {
        $request->validate([
            'brand_name_en' => 'required',
            'brand_name_kh' => 'required',
            'brand_image' => 'required',
        ], [
            'brand_name_en.required' => 'Input Brand English Name',
            'brand_name_kh.required' => 'Input Brand Khmer Name',
        ]);

        $image = $request->file('brand_image');
        $name_en = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
        Image::make($image)->resize(300, 300)->save('upload/brand/' . $name_en);
        $save_url = 'upload/brand/' . $name_en;

        Brand::insert([
            'brand_name_en' => $request->brand_name_en,
            'brand_name_kh' => $request->brand_name_kh,
            'brand_slug_en' => strtolower(str_replace(' ', '-', $request->brand_name_en)),
            'brand_slug_kh' => strtolower(str_replace(' ', '-', $request->brand_name_kh)),
            'brand_image' => $save_url,
        ]);

        $notification = array(
            'message' => 'Brand Inserted successfully',
            'alert-type' => 'success',
        );

        return redirect()->back()->with($notification);
    }

    public function BrandEdit($id)
    {
        $brand = Brand::findOrFail($id);
        return view('backend.brand.brand_edit', compact('brand'));
    }

    public function BrandUpdate(Request $request)
    {
        $brand_id = $request->id;
        $old_image = $request->old_image;

        if ($request->file('brand_image')) {

            unlink($old_image);
            $image = $request->file('brand_image');
            $name_en = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
            Image::make($image)->resize(300, 300)->save('upload/brand/' . $name_en);
            $save_url = 'upload/brand/' . $name_en;

            Brand::findOrFail($brand_id)->update([
                'brand_name_en' => $request->brand_name_en,
                'brand_name_kh' => $request->brand_name_kh,
                'brand_slug_en' => strtolower(str_replace(' ', '-', $request->brand_name_en)),
                'brand_slug_kh' => strtolower(str_replace(' ', '-', $request->brand_name_kh)),
                'brand_image' => $save_url,
            ]);

            $notification = array(
                'message' => 'Brand Updated successfully',
                'alert-type' => 'info',
            );

            return redirect()->route('all.brand')->with($notification);
        } else {
            Brand::findOrFail($brand_id)->update([
                'brand_name_en' => $request->brand_name_en,
                'brand_name_kh' => $request->brand_name_kh,
                'brand_slug_en' => strtolower(str_replace(' ', '-', $request->brand_name_en)),
                'brand_slug_kh' => strtolower(str_replace(' ', '-', $request->brand_name_kh)),
            ]);

            $notification = array(
                'message' => 'Brand Updated successfully',
                'alert-type' => 'info',
            );

            return redirect()->route('all.brand')->with($notification);
        }
    }

    public function BrandDelete($id)
    {
        $brand = Brand::findOrFail($id);
        $img = $brand->brand_image;
        unlink($img);
        Brand::findOrFail($id)->delete();

        $notification = array(
            'message' => 'Brand Deleted successfully',
            'alert-type' => 'info',
        );

        return redirect()->back()->with($notification);
    }
}
