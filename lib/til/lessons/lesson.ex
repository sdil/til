defmodule Til.Lessons.Lesson do
  use Ecto.Schema
  import Ecto.Changeset

  schema "lesson" do
    field :content, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(lesson, attrs) do
    lesson
    |> cast(attrs, [:title, :content])
    |> validate_required([:title, :content])
  end
end
