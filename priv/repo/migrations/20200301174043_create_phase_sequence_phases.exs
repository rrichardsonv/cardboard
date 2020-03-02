defmodule Cardboard.Repo.Migrations.CreatePhaseSequencePhases do
  use Ecto.Migration

  def change do
    create table(:phase_sequences_phases, primary_key: false) do
      add :phase_seq_id, references("phase_sequences", type: :uuid, on_delete: :delete_all),
        primary_key: true

      add :phase_id, references("phases", type: :uuid, on_delete: :delete_all), primary_key: true
      add :priority, :integer
    end
  end
end
