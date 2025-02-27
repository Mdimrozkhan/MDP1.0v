document.addEventListener("DOMContentLoaded", function() {
    const board = document.getElementById('board');
    const cells = document.querySelectorAll('.cell');

    let currentPlayer = 'X';
    let moves = 0;
    let winner = null;

    cells.forEach(cell => {
        cell.addEventListener('click', function() {
            if (!cell.textContent && !winner) {
                cell.textContent = currentPlayer;
                moves++;

                if (checkWinner(currentPlayer)) {
                    winner = currentPlayer;
                    alert(`${winner} wins!`);
                } else if (moves === 9) {
                    alert("It's a draw!");
                } else {
                    currentPlayer = currentPlayer === 'X' ? 'O' : 'X';
                }
            }
        });
    });

    function checkWinner(player) {
        const winningConditions = [
            [0, 1, 2], [3, 4, 5], [6, 7, 8], // rows
            [0, 3, 6], [1, 4, 7], [2, 5, 8], // columns
            [0, 4, 8], [2, 4, 6]             // diagonals
        ];

        return winningConditions.some(condition => {
            return condition.every(index => cells[index].textContent === player);
        });
    }
});
