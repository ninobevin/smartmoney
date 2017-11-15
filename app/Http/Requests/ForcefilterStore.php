<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ForcefilterStore extends FormRequest
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

            'amount' => 'required',
            'ref_no' => 'required',
            //
        ];
    }
    public function messages()
    {
        return [
            'amount.required' => 'Amount must have a value',
            'ref_no.required'  => 'Reference number is required',
        ];
    }
}
