defmodule ApiTesting.Search.Searches do
  use Ecto.Schema
  import Ecto.Changeset

  schema "searches" do
    field :letter, :string

    timestamps()
  end

  @doc false
  def changeset(searches, attrs) do
    searches
    |> cast(attrs, [:letter])
    |> validate_required([:letter])
    |> validate_length(:letter, min: 1, max: 1)
  end
end
