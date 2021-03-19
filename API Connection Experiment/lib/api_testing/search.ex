defmodule ApiTesting.Search do
  @moduledoc """
  The Search context.
  """

  import Ecto.Query, warn: false
  alias ApiTesting.Repo

  alias ApiTesting.Search.Searches

  @doc """
  Returns the list of searches.

  ## Examples

      iex> list_searches()
      [%Searches{}, ...]

  """
  def list_searches do
    Repo.all(Searches)
  end

  @doc """
  Gets a single searches.

  Raises `Ecto.NoResultsError` if the Searches does not exist.

  ## Examples

      iex> get_searches!(123)
      %Searches{}

      iex> get_searches!(456)
      ** (Ecto.NoResultsError)

  """
  def get_searches!(id), do: Repo.get!(Searches, id)

  @doc """
  Creates a searches.

  ## Examples

      iex> create_searches(%{field: value})
      {:ok, %Searches{}}

      iex> create_searches(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_searches(attrs \\ %{}) do
    %Searches{}
    |> Searches.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a searches.

  ## Examples

      iex> update_searches(searches, %{field: new_value})
      {:ok, %Searches{}}

      iex> update_searches(searches, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_searches(%Searches{} = searches, attrs) do
    searches
    |> Searches.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a searches.

  ## Examples

      iex> delete_searches(searches)
      {:ok, %Searches{}}

      iex> delete_searches(searches)
      {:error, %Ecto.Changeset{}}

  """
  def delete_searches(%Searches{} = searches) do
    Repo.delete(searches)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking searches changes.

  ## Examples

      iex> change_searches(searches)
      %Ecto.Changeset{data: %Searches{}}

  """
  def change_searches(%Searches{} = searches, attrs \\ %{}) do
    Searches.changeset(searches, attrs)
  end
end
