defmodule ApiTesting do
  @moduledoc """
  ApiTesting keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  def alphabet_resp(letter) do
    url = "https://www.themealdb.com/api/json/v1/1/search.php?f=#{letter}"
    resp = HTTPoison.get!(url)
    data = Jason.decode!(resp.body)
    data["meals"]
  end

  def get_titles(letter) do
    list = alphabet_resp(letter)
    Enum.map list, fn x -> x["strMeal"]
    end
  end

end
