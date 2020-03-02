defmodule Cardboard.Repo.Migrations.CreatePhaseSequences do
  use Ecto.Migration

  def change do
    create table(:phase_sequences, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :name, :string
      add :description, :string

      timestamps()
    end
  end
end
