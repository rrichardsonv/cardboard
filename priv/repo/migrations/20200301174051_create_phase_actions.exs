defmodule Cardboard.Repo.Migrations.CreatePhaseActions do
  use Ecto.Migration

  def change do
    create table(:phase_actions, primary_key: false) do
      add :phase_id, references("phases", type: :uuid, on_delete: :delete_all), primary_key: true

      add :action_id, references("actions", type: :uuid, on_delete: :delete_all),
        primary_key: true
    end
  end
end
