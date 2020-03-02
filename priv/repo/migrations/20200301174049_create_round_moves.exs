defmodule Cardboard.Repo.Migrations.CreateRoundMoves do
  use Ecto.Migration

  def change do
    create table(:round_moves, primary_key: false) do
      add :round_id, references("rounds", type: :uuid, on_delete: :delete_all), primary_key: true

      add :action_id, references("actions", type: :uuid, on_delete: :delete_all),
        primary_key: true

      add :phase_id, references("phases", type: :uuid, on_delete: :delete_all), primary_key: true
    end
  end
end
