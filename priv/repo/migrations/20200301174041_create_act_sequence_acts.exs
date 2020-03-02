defmodule Cardboard.Repo.Migrations.CreateActSequenceActs do
  use Ecto.Migration

  def change do
    create table(:act_sequences_acts, primary_key: false) do
      add :act_seq_id, references("act_sequences", type: :uuid, on_delete: :delete_all),
        primary_key: true

      add :act_id, references("acts", type: :uuid, on_delete: :delete_all), primary_key: true
      add :priority, :integer
    end
  end
end
