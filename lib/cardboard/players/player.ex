defmodule Cardboard.Players.Player do
  @moduledoc false
  use Ecto.Schema
  alias Ecto.Changeset
  alias Ecto.UUID

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "players" do
  end
end
