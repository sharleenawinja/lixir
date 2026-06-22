defmodule Discuss.AuthController do
  use Discuss.Web, :controller
  plug Ueberauth

  def callback(conn, params) do
    IO.puts "conn.assigns  ++++"
    IO.inspect(conn.assigns)
    IO.puts "params   ++++"
    IO.inspect(params)
    IO.puts "end  ++++"
  end
end
