<?php

namespace App\Http\Requests\Product;

use Illuminate\Foundation\Http\FormRequest;

class ProductRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => 'required',
            'thumb' => 'required'
        ];
    }

    public function messages()
    {
        return [ 
            'name.required' => 'Tên sản phẩm không để trống',
            'thumb.required' => 'Hình ảnh không để trống'
        ];
    }
}
