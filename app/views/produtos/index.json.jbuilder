json.array!(@produtos) do |produto|
  json.extract! produto, :id, :foto, :descricao, :preco
  json.url produto_url(produto, format: :json)
end
