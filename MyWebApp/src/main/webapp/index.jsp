<!DOCTYPE html>
<html lang="en" xml:lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Security-Policy" content="default-src 'self'; script-src 'self'; style-src 'self';">
    <title>AgriEnergy Hub 🌱⚡</title>
    <style>
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(45deg, #4CAF50, #8BC34A);
            background-size: cover;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 20px;
            transition: background 0.5s ease-in-out;
        }

        .dark-mode {
            background: linear-gradient(45deg, #2E3B2F, #1B261E);
            color: white;
        }

        .container {
            width: 50%;
            padding: 20px;
            background: white;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
            text-align: center;
            animation: fadeIn 1s ease-in-out;
        }

        .dark-mode .container {
            background: #2E3B2F;
            color: white;
        }

        h2 {
            color: #333;
        }

        input, button, textarea {
            padding: 10px;
            margin: 10px 0;
            width: 80%;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        button {
            background: #28A745;
            color: white;
            border: none;
            cursor: pointer;
            transition: background 0.3s ease-in-out;
        }

        button:hover {
            background: #1E7E34;
        }

        .message, .news-item {
            margin-top: 20px;
            font-size: 18px;
            color: #28a745;
            display: none;
            animation: fadeIn 0.5s ease-in-out;
        }

        .news-container {
            margin-top: 20px;
            padding: 15px;
            background: #f8f9fa;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        .feedback-section {
            margin-top: 20px;
            padding: 15px;
            background: #f1f1f1;
            border-radius: 5px;
        }

        .feedback {
            color: #333;
            font-size: 14px;
            padding: 5px;
            border-bottom: 1px solid #ccc;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
    <script>
        function showMessage(event) {
            event.preventDefault();
            const username = document.getElementById("username").value;
            if (username.trim() !== "") {
                const messageDiv = document.getElementById("message");
                messageDiv.style.display = "block";
                messageDiv.textContent = `Hello, Farmer ${username}! 🌾 Welcome to AgriEnergy Hub!`;
            }
        }

        function updateNews() {
            const news = [
                "🌽 Biofuel Innovations: Corn is now powering vehicles in more regions!",
                "🚜 Smart Farming: AI helps farmers predict crop yield with 95% accuracy.",
                "🌱 Sustainable Energy: Sugarcane waste is now generating clean electricity!",
                "💡 Solar-Powered Irrigation: Farmers reduce costs and boost production.",
                "🍠 Cassava-based bioethanol project launched in West Africa!"
            ];
            let index = 0;
            setInterval(() => {
                document.getElementById("news").textContent = news[index];
                document.getElementById("news").style.display = "block";
                index = (index + 1) % news.length;
            }, 3000);
        }

        function submitFeedback(event) {
            event.preventDefault();
            const feedbackInput = document.getElementById("feedback-input").value;
            if (feedbackInput.trim() !== "") {
                const feedbackList = document.getElementById("feedback-list");
                const newFeedback = document.createElement("div");
                newFeedback.className = "feedback";
                newFeedback.textContent = feedbackInput;
                feedbackList.appendChild(newFeedback);
                document.getElementById("feedback-input").value = "";
            }
        }

        function toggleDarkMode() {
            document.body.classList.toggle("dark-mode");
        }

        function showFunFact() {
            const facts = [
                "🌽 Corn ethanol reduces carbon emissions by up to 43% compared to gasoline!",
                "🍠 Sweet potatoes are a rising biofuel crop with high energy output!",
                "🌾 90% of Brazil’s vehicles can run on sugarcane-based ethanol!",
                "🌍 Farming algae for biofuel could yield 10-30 times more energy than soybeans!",
                "💡 A single acre of switchgrass can produce up to 1,000 gallons of ethanol!"
            ];
            const factDiv = document.getElementById("fun-fact");
            factDiv.textContent = facts[Math.floor(Math.random() * facts.length)];
            factDiv.style.display = "block";
        }

        window.onload = updateNews;
    </script>
</head>
<body>
    <button onclick="toggleDarkMode()">🌙 Toggle Eco-Friendly Mode</button>

    <div class="container">
        <h2>Welcome to AgriEnergy Hub 🌾⚡</h2>
        <form onsubmit="showMessage(event)">
            <label for="username">Enter Your Name:</label>
            <input type="text" id="username" name="username" required>
            <button type="submit">Join the Farming Revolution</button>
        </form>
        <div id="message" class="message"></div>
    </div>

    <div class="news-container">
        <h3>Latest AgriEnergy News</h3>
        <div id="news" class="news-item"></div>
    </div>

    <button onclick="showFunFact()">🌾 Discover a Fun Agri-Energy Fact!</button>
    <div id="fun-fact" class="message" style="display: none;"></div>

    <div class="feedback-section">
        <h3>Share Your Thoughts 🌱</h3>
        <form onsubmit="submitFeedback(event)">
            <textarea id="feedback-input" placeholder="How is biofuel or sustainable farming helping your business?" required></textarea>
            <button type="submit">Submit Feedback</button>
        </form>
        <div id="feedback-list"></div>
    </div>
</body>
</html>
