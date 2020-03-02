defmodule Cardboard.Repo.Migrations.CreateActPhases do
  use Ecto.Migration

  def change do
    create table(:act_phases, primary_key: false) do
      add :act_id, references("acts", type: :uuid, on_delete: :delete_all), primary_key: true
      add :phase_id, references("phases", type: :uuid, on_delete: :delete_all), primary_key: true
    end
  end
end
