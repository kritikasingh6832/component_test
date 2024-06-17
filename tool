import React from "react";
import {Form, Select} from "antd";
import {MESSAGE_CATEGORY} from "../../../constants";

const Category = () => {
    return (
        <Form.Item label='Category'
                   name='category'
                   rules={[
                       {
                           validator(rule: any, value: string[]) {
                               if ( !value || value?.length <= 3) {
                                   return Promise.resolve();
                               } else {
                                   return Promise.reject(new Error('Category multi-select is limited to three values'));
                               }
                           },
                       }
                   ]}
        >
            <Select allowClear mode='multiple' options={MESSAGE_CATEGORY.asList()}/>
        </Form.Item>
    );
}

export default Category;
