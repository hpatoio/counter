defmodule CounterWeb.CounterLive do
  use CounterWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :count, 0)}
  end

  def render(assigns) do
   ~L"""
    <h1>Count: <%= @count %></h1>
    <button>+</button>
    <button>-</button>
   """
  end
end
