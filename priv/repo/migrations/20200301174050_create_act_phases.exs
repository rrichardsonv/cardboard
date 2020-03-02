defmodule Cardboard.Repo.Migrations.CreateActPhases do
  use Ecto.Migration

  def change do
    create table(:act_phases, primary_key: false) do
      add :act_id, references("acts", type: :uuid), primary_key: true
      add :phase_id, references("phases", type: :uuid), primary_key: true
    end
  end
end
