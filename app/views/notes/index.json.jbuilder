json.array!(@notes) do |note|
  json.extract! note, :id, :title, :text, :notbook_id
  json.url note_url(note, format: :json)
end
