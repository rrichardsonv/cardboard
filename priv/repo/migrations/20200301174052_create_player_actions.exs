defmodule Cardboard.Repo.Migrations.CreatePlayerActions do
  use Ecto.Migration

  def change do
    create table(:player_actions, primary_key: false) do
      add :game_act_id, references("game_acts", type: :uuid, on_delete: :delete_all),
        primary_key: true

      add :player_id, references("players", type: :uuid, on_delete: :delete_all),
        primary_key: true

      add :action_id, references("actions", type: :uuid, on_delete: :delete_all),
        primary_key: true
    end
  end
end
