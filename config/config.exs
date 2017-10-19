use Mix.Config

config :ex_audit, 
  ecto_repos: [ExAudit.Test.Repo], 
  version_schema: ExAudit.Test.Version, 
  tracked_schemas: [
    ExAudit.Test.User,
    ExAudit.Test.BlogPost,
    ExAudit.Test.BlogPost.Section,
    ExAudit.Test.Comment
  ]

config :ex_audit, ExAudit.Test.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "ex_audit_test",
  hostname: "localhost",
  pool_size: 10

import_config "#{Mix.env}.exs"