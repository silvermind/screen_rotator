ActiveAdmin.register PlaylistScreen do
  actions :edit, :update, :index
  belongs_to :playlist
  permit_params :interval_sec

  form do |f|
    f.inputs do
      f.input :playlist, input_html: { disabled: true }
      f.input :screen, input_html: { disabled: true }
      f.input :interval_sec
    end
    f.actions
  end

end