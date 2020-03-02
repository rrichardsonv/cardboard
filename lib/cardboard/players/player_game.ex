defmodule Cardboard.Players.PlayerGame do
  @moduledoc false
  use Ecto.Schema
  alias Ecto.Changeset
  alias Ecto.UUID

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "player_games" do
  end
end
