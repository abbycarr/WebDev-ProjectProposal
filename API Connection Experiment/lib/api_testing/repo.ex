defmodule ApiTesting.Repo do
  use Ecto.Repo,
    otp_app: :api_testing,
    adapter: Ecto.Adapters.Postgres
end
