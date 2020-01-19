ActiveAdmin.register Occurrence do
  belongs_to :event

  permit_params :event_id, :date, :beginners

  config.sort_order = 'date_desc'
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

  config.create_another = true
  form do |f|
    f.inputs do
      f.input :event
      f.input :date, as: :datepicker, datepicker_options: { firstDay: 1 }
      f.input :beginners, required: false
    end
    f.actions
  end

end
