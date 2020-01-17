ActiveAdmin.register Occurrence do
  permit_params :event_id, :date, :beginners

  index do
    selectable_column
    id_column
    column :event
    column :date
    column :beginners
    actions
  end

  filter :name
  filter :date
  filter :beginners

  form do |f|
    f.inputs do
      f.input :event
      f.input :date
      f.input :beginners
    end
    f.actions
  end

end
