defmodule Cardboard.Repo.Migrations.CreatePhases do
  use Ecto.Migration

  def change do
    create table(:phases, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :name, :string
      add :description, :string

      timestamps()
    end
  end
end
