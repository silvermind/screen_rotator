ActiveAdmin.register Screen do

  permit_params :link, :name

  index do
    # selectable_column
    id_column
    column :name
    column :link do |i|
      link_to i.link, [i], target: '_blank'
    end
    column :preview do |i|
      link_to 'Screen Page', [i], target: '_blank'
    end
    actions
  end
end
