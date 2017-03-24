ActiveAdmin.register Post do
  permit_params :title, :body

  show do |t|
    attributes_table do
      row :title
      row :body
    end
  end

  form  do |f|
    f.inputs do
      f.input :title
      f.input :body
    end
    f.actions
  end
end
