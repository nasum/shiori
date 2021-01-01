defmodule Shiori.Repo do
  use Ecto.Repo,
    otp_app: :shiori,
    adapter: Ecto.Adapters.Postgres
end
