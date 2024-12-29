<!DOCTYPE html>
<html>
<head>
    <title>{{.Title}}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background: #f5f5f5;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        h1 {
            color: #333;
        }
        .task-list {
            margin-top: 20px;
        }
        .task-item {
            padding: 15px;
            border-bottom: 1px solid #eee;
            transition: background-color 0.2s;
        }
        .task-item:hover {
            background-color: #f8f8f8;
        }
        .status {
            display: inline-block;
            padding: 4px 8px;
            border-radius: 4px;
            font-size: 0.85em;
            background: #e0e0e0;
        }
        .status.in-progress { background: #fff3cd; }
        .status.pending { background: #cfe2ff; }
        .status.not-started { background: #f8d7da; }
    </style>
</head>
<body>
    <div class="container">
        <h1>{{.Title}}</h1>
        <div class="task-list">
            <h2>Tasks</h2>
            <div id="tasks"></div>
        </div>
    </div>
    <script>
        fetch('/api/tasks')
            .then(response => response.json())
            .then(tasks => {
                const tasksDiv = document.getElementById('tasks');
                tasks.forEach(task => {
                    const statusClass = task.status.toLowerCase().replace(' ', '-');
                    tasksDiv.innerHTML += `
                        <div class="task-item">
                            <h3>${task.title}</h3>
                            <p>${task.description}</p>
                            <span class="status ${statusClass}">${task.status}</span>
                        </div>
                    `;
                });
            });
    </script>
</body>
</html>
