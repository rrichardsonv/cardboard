defmodule Cardboard.Repo.Migrations.CreateRounds do
  use Ecto.Migration

  def change do
    create table(:rounds, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :player_id, references("players", type: :uuid)
      add :game_act_id, references("game_acts", type: :uuid)
      add :next_round_id, references("rounds", type: :uuid)
    end
  end
end
