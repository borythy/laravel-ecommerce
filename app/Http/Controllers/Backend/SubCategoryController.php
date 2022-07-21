<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\SubCategory;
use App\Models\SubSubCategory;
use Illuminate\Http\Request;

class SubCategoryController extends Controller
{
    public function SubCategoryView()
    {
        $categories = Category::orderBy('category_name_en', 'ASC')->get();
        $subcategory = SubCategory::latest()->get();
        return view(
            'backend.category.subcategory_view',
            compact('subcategory', 'categories')
        );
    }

    public function SubCategoryStore(Request $request)
    {
        $request->validate([
            'subcategory_name_en' => 'required',
            'subcategory_name_kh' => 'required',
            'category_id' => 'required',
        ], [
            'subcategory_name_en.required' => 'Input Sub Category English Name',
            'subcategory_name_kh.required' => 'Input Sub Category Khmer Name',
            'category_id.required' => 'Please select any category option',
        ]);

        SubCategory::insert([
            'subcategory_name_en' => $request->subcategory_name_en,
            'subcategory_name_kh' => $request->subcategory_name_kh,
            'subcategory_slug_en' => strtolower(str_replace(' ', '-', $request->subcategory_name_en)),
            'subcategory_slug_kh' => strtolower(str_replace(' ', '-', $request->subcategory_name_kh)),
            'category_id' => $request->category_id,
        ]);

        $notification = array(
            'message' => 'Sub Category Inserted successfully',
            'alert-type' => 'success',
        );

        return redirect()->back()->with($notification);
    }

    public function SubCategoryEdit($id)
    {
        $categories = Category::orderBy('category_name_en', 'ASC')->get();
        $subcategory = SubCategory::findOrFail($id);
        return view(
            'backend.category.subcategory_edit',
            compact('subcategory', 'categories')
        );
    }

    public function SubCategoryUpdate(Request $request)
    {
        $subcategory_id = $request->id;

        SubCategory::findOrFail($subcategory_id)->update([
            'subcategory_name_en' => $request->subcategory_name_en,
            'subcategory_name_kh' => $request->subcategory_name_kh,
            'subcategory_slug_en' => strtolower(str_replace(' ', '-', $request->subcategory_name_en)),
            'subcategory_slug_kh' => strtolower(str_replace(' ', '-', $request->subcategory_name_kh)),
            'category_id' => $request->category_id,
        ]);

        $notification = array(
            'message' => 'Sub Category Updated successfully',
            'alert-type' => 'info',
        );

        return redirect()
            ->route('all.subcategory')
            ->with($notification);
    }

    public function SubCategoryDelete($id)
    {
        SubCategory::findOrFail($id)->delete();

        $notification = array(
            'message' => 'Sub Category Deleted successfully',
            'alert-type' => 'info',
        );

        return redirect()->back()->with($notification);
    }

    // For Sub->SubCategory
    public function SubSubCategoryView()
    {
        $categories = Category::orderBy('category_name_en', 'ASC')->get();
        $sub_subcategory = SubSubCategory::latest()->get();
        return view(
            'backend.category.sub_subcategory_view',
            compact('sub_subcategory', 'categories')
        );
    }

    public function GetSubCategory($category_id)
    {
        $subcat = SubCategory::where('category_id', $category_id)
            ->orderBy('subcategory_name_en', 'ASC')->get();
        return json_encode($subcat);
    }

    public function GetSubSubCategory($subcategory_id)
    {
        $subsubcat = SubSubCategory::where('subcategory_id', $subcategory_id)
            ->orderBy('subsubcategory_name_en', 'ASC')->get();
        return json_encode($subsubcat);
    }

    public function SubSubCategoryStore(Request $request)
    {
        $request->validate([
            'category_id' => 'required',
            'subcategory_id' => 'required',
            'subsubcategory_name_en' => 'required',
            'subsubcategory_name_kh' => 'required',
        ], [
            'category_id.required' => 'Please select any category option',
            'subsubcategory_name_en.required' => 'Input SubSubCategory English Name',
        ]);

        SubSubCategory::insert([
            'category_id' => $request->category_id,
            'subcategory_id' => $request->subcategory_id,
            'subsubcategory_name_en' => $request->subsubcategory_name_en,
            'subsubcategory_name_kh' => $request->subsubcategory_name_kh,
            'subsubcategory_slug_en' => strtolower(str_replace(' ', '-', $request->subsubcategory_name_en)),
            'subsubcategory_slug_kh' => strtolower(str_replace(' ', '-', $request->subsubcategory_name_kh)),
        ]);

        $notification = array(
            'message' => 'SubSub Category Inserted successfully',
            'alert-type' => 'success',
        );

        return redirect()->back()->with($notification);
    }

    public function SubSubCategoryEdit($id)
    {
        $categories = Category::orderBy('category_name_en', 'ASC')->get();
        $subcategories = SubCategory::orderBy('subcategory_name_en', 'ASC')->get();
        $subsubcategories = SubSubCategory::findOrFail($id);
        return view(
            'backend.category.sub_subcategory_edit',
            compact('categories', 'subcategories', 'subsubcategories')
        );
    }

    public function SubSubCategoryUpdate(Request $request)
    {
        $subsubcate_id = $request->id;

        SubSubCategory::findOrFail($subsubcate_id)->update([
            'category_id' => $request->category_id,
            'subcategory_id' => $request->subcategory_id,
            'subsubcategory_name_en' => $request->subsubcategory_name_en,
            'subsubcategory_name_kh' => $request->subsubcategory_name_kh,
            'subsubcategory_slug_en' => strtolower(str_replace(' ', '-', $request->subsubcategory_name_en)),
            'subsubcategory_slug_kh' => strtolower(str_replace(' ', '-', $request->subsubcategory_name_kh)),
        ]);

        $notification = array(
            'message' => 'Sub SubCategory Updated successfully',
            'alert-type' => 'info',
        );

        return redirect()->route('all.subsubcategory')->with($notification);
    }

    public function SubSubCategoryDelete($id)
    {
        SubSubCategory::findOrFail($id)->delete();
        $notification = array(
            'message' => 'Sub SubCategory Deleted successfully',
            'alert-type' => 'info',
        );

        return redirect()->back()->with($notification);
    }
}
