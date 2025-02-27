document.addEventListener("DOMContentLoaded", function() {
    const gameContainer = document.getElementById('game-container');
    const bat = document.getElementById('bat');
    const ball = document.getElementById('ball');
    const scoreboard = document.getElementById('scoreboard');
    let runs = 0;

    gameContainer.addEventListener('click', function() {
        if (!ball.style.display || ball.style.display === 'none') {
            startGame();
        }
    });

    function startGame() {
        ball.style.display = 'block';
        let position = 0;
        let interval = setInterval(function() {
            position += 10;
            ball.style.left = position + 'px';
            if (position >= 580) {
                clearInterval(interval);
                ball.style.display = 'none';
                if (position >= 570 && position <= 600) {
                    updateScore();
                }
            }
        }, 50);
    }

    function updateScore() {
        runs += Math.floor(Math.random() * 4) + 0; // Random runs between 1 and 5
        scoreboard.textContent = 'Runs: ' + runs;
    }
});
