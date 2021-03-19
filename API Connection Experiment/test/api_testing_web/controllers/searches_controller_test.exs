defmodule ApiTestingWeb.SearchesControllerTest do
  use ApiTestingWeb.ConnCase

  alias ApiTesting.Search

  @create_attrs %{letter: "some letter"}
  @update_attrs %{letter: "some updated letter"}
  @invalid_attrs %{letter: nil}

  def fixture(:searches) do
    {:ok, searches} = Search.create_searches(@create_attrs)
    searches
  end

  describe "index" do
    test "lists all searches", %{conn: conn} do
      conn = get(conn, Routes.searches_path(conn, :index))
      assert html_response(conn, 200) =~ "Listing Searches"
    end
  end

  describe "new searches" do
    test "renders form", %{conn: conn} do
      conn = get(conn, Routes.searches_path(conn, :new))
      assert html_response(conn, 200) =~ "New Searches"
    end
  end

  describe "create searches" do
    test "redirects to show when data is valid", %{conn: conn} do
      conn = post(conn, Routes.searches_path(conn, :create), searches: @create_attrs)

      assert %{id: id} = redirected_params(conn)
      assert redirected_to(conn) == Routes.searches_path(conn, :show, id)

      conn = get(conn, Routes.searches_path(conn, :show, id))
      assert html_response(conn, 200) =~ "Show Searches"
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.searches_path(conn, :create), searches: @invalid_attrs)
      assert html_response(conn, 200) =~ "New Searches"
    end
  end

  describe "edit searches" do
    setup [:create_searches]

    test "renders form for editing chosen searches", %{conn: conn, searches: searches} do
      conn = get(conn, Routes.searches_path(conn, :edit, searches))
      assert html_response(conn, 200) =~ "Edit Searches"
    end
  end

  describe "update searches" do
    setup [:create_searches]

    test "redirects when data is valid", %{conn: conn, searches: searches} do
      conn = put(conn, Routes.searches_path(conn, :update, searches), searches: @update_attrs)
      assert redirected_to(conn) == Routes.searches_path(conn, :show, searches)

      conn = get(conn, Routes.searches_path(conn, :show, searches))
      assert html_response(conn, 200) =~ "some updated letter"
    end

    test "renders errors when data is invalid", %{conn: conn, searches: searches} do
      conn = put(conn, Routes.searches_path(conn, :update, searches), searches: @invalid_attrs)
      assert html_response(conn, 200) =~ "Edit Searches"
    end
  end

  describe "delete searches" do
    setup [:create_searches]

    test "deletes chosen searches", %{conn: conn, searches: searches} do
      conn = delete(conn, Routes.searches_path(conn, :delete, searches))
      assert redirected_to(conn) == Routes.searches_path(conn, :index)
      assert_error_sent 404, fn ->
        get(conn, Routes.searches_path(conn, :show, searches))
      end
    end
  end

  defp create_searches(_) do
    searches = fixture(:searches)
    %{searches: searches}
  end
end
