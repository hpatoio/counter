defmodule CounterWeb.CounterLive do
  use CounterWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :count, 0)}
  end

  def render(assigns) do
   ~L"""
    <h1>Count: <%= @count %></h1>
    <button phx-click="increment">+</button>
    <button phx-click="decrement">-</button>
   """
  end

  def handle_event("increment", _, socket) do
    count = socket.assigns.count + 1
    {:noreply, assign(socket, :count, count)}
  end

  def handle_event("decrement", _, socket) do
    count = socket.assigns.count - 1
    {:noreply, assign(socket, :count, count)}
  end

end
