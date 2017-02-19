ActiveAdmin.register FoodItem do

  permit_params :name, :description, :price, :tag_list

  filter :name
  filter :tags
  filter :price

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :price
      f.input :tag_list
    end
    f.actions
  end
end
