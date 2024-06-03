# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     SimpleProductsJb.Repo.insert!(%SimpleProductsJb.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias SimpleProductsJb.Users
alias SimpleProductsJb.Categories.Category
alias SimpleProductsJb.Repo
alias SimpleProductsJb.Products.Product

Users.Create.call(%{
  name: "Jeferson Baixo",
  email: "jeferson.baixo@yuzer.com.br",
  password: "Yuzer123"
})

Repo.insert!(
  %Category{
    id: 1,
    name: "Cervejas",
    description: "Categoria de cervejas",
    image_url: "https://cdn.pixabay.com/photo/2016/09/14/11/35/beer-1669273_1280.png"
  },
  on_conflict: :nothing
)

Repo.insert!(
  %Product{
    name: "Cerveja 1",
    price: 8.0,
    description: "Descrição da cerveja 1",
    category_id: 1
  },
  on_conflict: :nothing
)

Repo.insert!(
  %Product{
    name: "Cerveja 2",
    price: 9.0,
    description: "Descrição da cerveja 2",
    category_id: 1
  },
  on_conflict: :nothing
)

Repo.insert!(
  %Product{
    name: "Cerveja 3",
    price: 10.0,
    description: "Descrição da cerveja 3",
    category_id: 1
  },
  on_conflict: :nothing
)
