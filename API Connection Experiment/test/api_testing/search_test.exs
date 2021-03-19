defmodule ApiTesting.SearchTest do
  use ApiTesting.DataCase

  alias ApiTesting.Search

  describe "searches" do
    alias ApiTesting.Search.Searches

    @valid_attrs %{letter: "some letter"}
    @update_attrs %{letter: "some updated letter"}
    @invalid_attrs %{letter: nil}

    def searches_fixture(attrs \\ %{}) do
      {:ok, searches} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Search.create_searches()

      searches
    end

    test "list_searches/0 returns all searches" do
      searches = searches_fixture()
      assert Search.list_searches() == [searches]
    end

    test "get_searches!/1 returns the searches with given id" do
      searches = searches_fixture()
      assert Search.get_searches!(searches.id) == searches
    end

    test "create_searches/1 with valid data creates a searches" do
      assert {:ok, %Searches{} = searches} = Search.create_searches(@valid_attrs)
      assert searches.letter == "some letter"
    end

    test "create_searches/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Search.create_searches(@invalid_attrs)
    end

    test "update_searches/2 with valid data updates the searches" do
      searches = searches_fixture()
      assert {:ok, %Searches{} = searches} = Search.update_searches(searches, @update_attrs)
      assert searches.letter == "some updated letter"
    end

    test "update_searches/2 with invalid data returns error changeset" do
      searches = searches_fixture()
      assert {:error, %Ecto.Changeset{}} = Search.update_searches(searches, @invalid_attrs)
      assert searches == Search.get_searches!(searches.id)
    end

    test "delete_searches/1 deletes the searches" do
      searches = searches_fixture()
      assert {:ok, %Searches{}} = Search.delete_searches(searches)
      assert_raise Ecto.NoResultsError, fn -> Search.get_searches!(searches.id) end
    end

    test "change_searches/1 returns a searches changeset" do
      searches = searches_fixture()
      assert %Ecto.Changeset{} = Search.change_searches(searches)
    end
  end
end
