ActiveAdmin.register Playlist do

  permit_params :name, :default_interval_secdefault_interval_sec, screen_ids: []

  index do
    # selectable_column
    id_column
    column :name
    actions
  end
  show do
    attributes_table do
      row :name
    end
    panel "Screens in this Playlist" do
      table_for playlist.playlist_screens do
        column :edit do |ps|
          # link_to 'edit', [:edit, :admin, playlist, ps]
          link_to 'edit', edit_admin_playlist_playlist_screen_path(playlist, ps)
        end
        column :interval_sec
        column :name do |ps|
          ps.screen.name
        end
        column :link do |ps|
          ps.screen.link
        end
        column :rotation do |ps|
          link_to 'Start here', [ps.playlist, ps.screen], target: '_blank'
        end
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      # f.input :default_interval_sec
      f.input :screens, as: :check_boxes
    end
    f.actions
  end

end
