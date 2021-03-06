defmodule Shop do
  use Application

  alias Shop.Endpoint

  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  @spec start(any, any) :: {:error, any} | {:ok, pid} | {:ok , pid, any}
  def start(_type, _args) do
    import Supervisor.Spec

    # Define workers and child supervisors to be supervised
    children = [
      # Start the Ecto repository
      supervisor(Shop.Repo, []),
      # Start the endpoint when the application starts
      supervisor(Shop.Endpoint, []),
      # Start your own worker by calling: Shop.Worker.start_link(arg1, arg2, arg3)
      # worker(Shop.Worker, [arg1, arg2, arg3]),
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Shop.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @spec config_change(keyword, keyword, [atom]) :: :ok
  def config_change(changed, _new, removed) do
    Endpoint.config_change(changed, removed)
    :ok
  end
end
