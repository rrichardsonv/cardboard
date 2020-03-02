defmodule Cardboard.Repo do
  use Ecto.Repo,
    otp_app: :cardboard,
    adapter: Ecto.Adapters.Postgres
end
