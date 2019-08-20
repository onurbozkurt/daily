ActiveAdmin.register Note do
  permit_params :title, :body

  index do
    column "Title" do |note|
      link_to note.title, admin_note_path(note)
    end
  end
  
  show do
    h3 note.title
    div do
      raw note.body
    end
  end

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :title
      f.input :body, as: :quill_editor
    end
    f.actions
  end
end
