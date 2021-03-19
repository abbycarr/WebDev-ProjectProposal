defmodule ApiTestingWeb.SearchesController do
  use ApiTestingWeb, :controller

  alias ApiTesting.Search
  alias ApiTesting.Search.Searches

  def index(conn, _params) do
    searches = Search.list_searches()
    render(conn, "index.html", searches: searches)
  end

  def new(conn, _params) do
    changeset = Search.change_searches(%Searches{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"searches" => searches_params}) do
    case Search.create_searches(searches_params) do
      {:ok, searches} ->
        conn
        |> redirect(to: Routes.searches_path(conn, :show, searches))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    searches = Search.get_searches!(id)
    render(conn, "show.html", searches: searches)
  end

  def edit(conn, %{"id" => id}) do
    searches = Search.get_searches!(id)
    changeset = Search.change_searches(searches)
    render(conn, "edit.html", searches: searches, changeset: changeset)
  end

  def update(conn, %{"id" => id, "searches" => searches_params}) do
    searches = Search.get_searches!(id)

    case Search.update_searches(searches, searches_params) do
      {:ok, searches} ->
        conn
        |> put_flash(:info, "Searches updated successfully.")
        |> redirect(to: Routes.searches_path(conn, :show, searches))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "edit.html", searches: searches, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    searches = Search.get_searches!(id)
    {:ok, _searches} = Search.delete_searches(searches)

    conn
    |> redirect(to: Routes.searches_path(conn, :index))
  end
end
