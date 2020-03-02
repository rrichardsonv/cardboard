defmodule Cardboard.Repo.Migrations.CreateActSequences do
  use Ecto.Migration

  def change do
    create table(:act_sequences, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :name, :string
      add :description, :string

      timestamps()
    end
  end
end
