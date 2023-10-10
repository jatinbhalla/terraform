

resource "null_resource" "run_powershell_script" {
  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "local-exec" {
    command = "powershell.exe -File //home//jatin//user.ps1"
  }
}
