defmodule Cardboard.Repo.Migrations.CreateGameActs do
  use Ecto.Migration

  def change do
    create table(:game_acts, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :next_game_act_id, references("game_acts", type: :uuid)
      add :phase_sequence_id, references("phase_sequences", type: :uuid)
      add :act_id, references("acts", type: :uuid)
      add :game_id, references("games", type: :uuid)
      add :player_order_id, references("player_orders", type: :uuid)

      timestamps()
    end
  end
end
