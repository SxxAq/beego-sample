package controllers

import (
	"github.com/beego/beego/v2/server/web"
)

type Task struct {
	ID          int    `json:"id"`
	Title       string `json:"title"`
	Description string `json:"description"`
	Status      string `json:"status"`
}

type TaskController struct {
	web.Controller
}

func (c *TaskController) Get() {
	tasks := []Task{
		{1, "Learn Beego", "Study the Beego framework", "In Progress"},
		{2, "Build API", "Create REST endpoints", "Pending"},
		{3, "Write Documentation", "Document the API endpoints", "Not Started"},
	}
	c.Data["json"] = tasks
	c.ServeJSON()
}
