html
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>James Olsen | Game Development Portfolio 2025</title>
    <style>
        :root {
            --bg-color: #121212;
            --card-bg: #1e1e1e;
            --text-color: #e0e0e0;
            --accent-color: #4da6ff;
            --border-color: #333;
        }

        body {
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Arial, sans-serif;
            line-height: 1.6;
            background-color: var(--bg-color);
            color: var(--text-color);
            max-width: 800px;
            margin: 40px auto;
            padding: 0 20px;
        }

        h1 {
            border-bottom: 2px solid var(--border-color);
            padding-bottom: 10px;
            text-align: center;
        }

        details {
            background: var(--card-bg);
            margin-bottom: 20px;
            padding: 15px;
            border-radius: 8px;
            border: 1px solid var(--border-color);
            transition: all 0.3s ease;
        }

        summary {
            font-size: 1.4rem;
            font-weight: bold;
            cursor: pointer;
            outline: none;
            color: var(--accent-color);
        }

        details[open] summary {
            margin-bottom: 15px;
            border-bottom: 1px solid var(--border-color);
            padding-bottom: 10px;
        }

        .gallery {
            display: flex;
            gap: 10px;
            flex-wrap: wrap;
            margin: 15px 0;
        }

        .gallery img {
            max-width: 100%;
            height: auto;
            border-radius: 4px;
            border: 1px solid var(--border-color);
        }

        .links {
            list-style: none;
            padding: 0;
        }

        .links li {
            margin: 8px 0;
        }

        .links a {
            color: var(--accent-color);
            text-decoration: none;
        }

        .links a:hover {
            text-decoration: underline;
        }

        p {
            color: #b0b0b0;
        }
    </style>
</head>
<body>

    <h1>James Olsen Game Development Portfolio 2025</h1>

    <!-- Life Simulation Game -->
    <details>
        <summary>Life Simulation Game</summary>
        <div class="gallery">
            <img src="https://github.com/jameolse/Game-Development-Portfolio/tree/main/images/thumbnail.png">
            <img src="https://github.com" alt="Ecosystem Thumbnail">
        </div>
        <p>
            You have to keep a little ecosystem alive. It's based around soil. Dead creatures make richer soil, meaning more plants; more plants mean more food for creatures. 
            Parasites will be on plants and enter animal hosts when eaten. They will hurt the host and eventually kill it, spreading spores/eggs upon death to reborn in plants. 
            Little flies will eat the exposed spores and eggs. You must choose the population and lifespan of each creature to see how long the ecosystem survives.
        </p>
        <ul class="links">
            <li><strong>Downloads:</strong> 
                <a href="https://github.com/jameolse/Game-Development-Portfolio/blob/main/images/spacegame.png?raw=true">Windows EXE</a> | 
                <a href="https://github.com/jameolse/Game-Development-Portfolio/blob/main/images/spacegame.png?raw=true">Mac App</a> | 
                <a href="https://github.com/jameolse/Game-Development-Portfolio/blob/main/images/spacegame.png?raw=true">Linux Executable</a>
            </li>
            <li><a href="https://github.com/jameolse/Game-Development-Portfolio/tree/77d8cf7b0f2de0555ae99d85837980c3dc181b82/src/SpaceGame">View Source Code</a></li>
        </ul>
    </details>

    <!-- ALBATROSS -->
    <details>
        <summary>ALBATROSS</summary>
        <h3>Alone and hunted on a boat in the middle of a sunken world.</h3>
        <div class="gallery">
            <img src="https://github.com/jameolse/Game-Development-Portfolio/blob/main/images/Albatross1.png">
            <img src="https://github.com/jameolse/Game-Development-Portfolio/blob/main/images/Albatross2.png">
        </div>
    </details>

</body>
</html>
