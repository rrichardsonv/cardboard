defmodule Cardboard.Repo.Migrations.CreateGames do
  use Ecto.Migration

  def change do
    create table(:games, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :act_sequence_id, references("act_sequences", type: :uuid)
      add :description, :string
      
      timestamps()
    end
  end
end
