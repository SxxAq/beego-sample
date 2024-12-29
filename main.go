package main

import (
	"beego-sample/controllers"

	"github.com/beego/beego/v2/core/logs"
	beego "github.com/beego/beego/v2/server/web"
)

func main() {
	// Enable detailed logs
	logs.SetLogger(logs.AdapterConsole)
	logs.SetLevel(logs.LevelDebug)

	// Register routes
	beego.Router("/", &controllers.MainController{})
	beego.Router("/api/tasks", &controllers.TaskController{})

	// Set template path
	beego.SetViewsPath("views")

	// Run the application
	logs.Info("Starting Beego application...")
	beego.Run()
}
