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

Users.Create.call(%{
  name: "Mobile Test",
  email: "mobile_test@yuzer.com.br",
  password: "Yuzer@2024"
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
  %Category{
    id: 2,
    name: "Hamburgers",
    description: "Categoria de hamburgers",
    image_url: "https://cdn.pixabay.com/photo/2022/01/04/23/00/fast-food-6916101_1280.png"
  },
  on_conflict: :nothing
)

Repo.insert!(
  %Category{
    id: 3,
    name: "Pizzas",
    description: "Categoria de pizzas",
    image_url: "https://cdn.pixabay.com/photo/2022/06/07/14/15/food-7248455_1280.png"
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

Repo.insert!(
  %Product{
    name: "Hamburger 1",
    price: 15.0,
    description: "Descrição do hamburger 1",
    category_id: 2
  },
  on_conflict: :nothing
)

Repo.insert!(
  %Product{
    name: "Hamburger 2",
    price: 20.0,
    description: "Descrição do hamburger 2",
    category_id: 2
  },
  on_conflict: :nothing
)

Repo.insert!(
  %Product{
    name: "Hamburger 3",
    price: 25.0,
    description: "Descrição do hamburger 3",
    category_id: 2
  },
  on_conflict: :nothing
)

Repo.insert!(
  %Product{
    name: "Pizza 1",
    price: 30.0,
    description: "Descrição da pizza 1",
    category_id: 3
  },
  on_conflict: :nothing
)

Repo.insert!(
  %Product{
    name: "Pizza 2",
    price: 35.0,
    description: "Descrição da pizza 2",
    category_id: 3
  },
  on_conflict: :nothing
)

Repo.insert!(
  %Product{
    name: "Pizza 3",
    price: 40.0,
    description: "Descrição da pizza 3",
    category_id: 3
  },
  on_conflict: :nothing
)
