defmodule ApiTesting.Repo.Migrations.CreateSearches do
  use Ecto.Migration

  def change do
    create table(:searches) do
      add :letter, :string

      timestamps()
    end

  end
end
