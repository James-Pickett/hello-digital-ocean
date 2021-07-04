# hello-digital-ocean

Just messing around with provisioning Digital Ocean app with terraform.

Repo includes files need to run project in a VS Code Dev Container. It will install terraform (via tfswitch), the DO cli, & mount the nessessary dirs from your home dir. It expects a `~/.digitalocean` directory present with a file namd `token` which contains your Digital Ocean access token. Running [terraform.sh](terraform/terraform.sh) plan/apply/etc will pass your DO token to your terraform command.

