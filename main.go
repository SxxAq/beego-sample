package main

import (
	"github.com/beego/beego/v2/core/logs"
	"github.com/beego/beego/v2/server/web"
)

func main() {
	// Enable detailed logs
	logs.SetLogger(logs.AdapterConsole)
	logs.SetLevel(logs.LevelDebug)

	// Register routes
	web.Router("/", &controllers.MainController{})
	web.Router("/api/tasks", &controllers.TaskController{})

	web.Run()
}
