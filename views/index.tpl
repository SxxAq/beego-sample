<!DOCTYPE html>
<html>
<head>
    <title>{{.Title}}</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
        }
        .task-list {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>{{.Title}}</h1>
        <div class="task-list" id="tasks">
            Loading tasks...
        </div>
    </div>
    <script>
        fetch('/api/tasks')
            .then(response => response.json())
            .then(tasks => {
                const taskList = document.getElementById('tasks');
                taskList.innerHTML = tasks.map(task => `
                    <div class="task">
                        <h3>${task.title}</h3>
                        <p>${task.description}</p>
                        <small>Status: ${task.status}</small>
                    </div>
                `).join('');
            });
    </script>
</body>
</html>
