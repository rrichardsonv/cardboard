defmodule Cardboard.Repo.Migrations.CreatePlayerGames do
  use Ecto.Migration

  def change do
    create table(:player_games, primary_key: false) do
      add :player_id, references("players", type: :uuid, on_delete: :delete_all),
        primary_key: true

      add :game_id, references("games", type: :uuid, on_delete: :delete_all), primary_key: true
    end
  end
end
