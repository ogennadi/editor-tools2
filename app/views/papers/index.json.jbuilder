json.array!(@papers) do |paper|
  json.extract! paper, :id, :manuscript_id, :author, :status, :paragon_plus_url, :reviewer_email1, :reviewer_email2, :reviewer_email3
  json.url paper_url(paper, format: :json)
end
