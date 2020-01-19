ActiveAdmin.register Event do
  permit_params :name

  index do
    selectable_column
    id_column
    column :name
    column "Occurrences" do |event|
      link_to "#{event.occurrences.count} von #{event.occurrences.minimum("date")} bis #{event.occurrences.maximum("date")}", admin_event_occurrences_path(event)
    end
    actions
  end

  filter :name

  form do |f|
    f.inputs do
      f.input :name
    end
    f.actions
  end

end
