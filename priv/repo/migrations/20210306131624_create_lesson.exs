defmodule Til.Repo.Migrations.CreateLesson do
  use Ecto.Migration

  def change do
    create table(:lesson) do
      add :title, :string
      add :content, :text

      timestamps()
    end

  end
end
