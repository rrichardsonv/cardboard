defmodule Cardboard.Repo.Migrations.CreateActs do
  use Ecto.Migration

  def change do
    create table(:acts, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :name, :string
      add :description, :string
  
      timestamps()
    end
  end
end
