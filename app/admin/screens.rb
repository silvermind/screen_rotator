ActiveAdmin.register Screen do

  permit_params :link, :name

  index do
    # selectable_column
    id_column
    column :name
    column :link
    column :preview do |i|
      link_to 'Screen Page', [i]
    end
    actions
  end
end
