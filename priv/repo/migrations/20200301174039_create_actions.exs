defmodule Cardboard.Repo.Migrations.CreateActions do
  use Ecto.Migration

  def change do
    create table(:actions, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :name, :string
      add :description, :string

      timestamp()
    end
  end
end
