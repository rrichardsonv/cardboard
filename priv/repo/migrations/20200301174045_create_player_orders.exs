defmodule Cardboard.Repo.Migrations.CreatePlayerOrders do
  use Ecto.Migration

  def change do
    create table(:player_orders, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :player_id, references("players", type: :uuid)
    end
  end
end
