<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple eCommerce Website</title>
    <link rel="stylesheet" href="E_css/Ehome.css">
</head>
<body>
    <header>
        <div class="container">
            <h1>My eCommerce Site</h1>
            <nav>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Products</a></li>
                    <li><a href="#">Cart</a></li>
                    <li><a href="#">Checkout</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <main>
        <div class="container">
            <h2>Our Products</h2>
            
            <form method="post"
			action="cart.jsp"> 
            
            <div class="product-list">
                <div class="product">
                    <img src="product1.jpg" alt="Product 1">
                    <h3>Product 1</h3>
                    <p>$10.00</p>
                    <button>Add to Cart</button>
                </div>
                
                <div class="product">
                    <img src="product2.jpg" alt="Product 2">
                    <h3>Product 2</h3>
                    <p>$20.00</p>
                    <button>Add to Cart</button>
                </div>
               </form>
                <!-- Add more products as needed -->
            </div>
        </div>
    </main>

    <footer>
        <div class="container">
            <p>&copy; 2024 My eCommerce Site. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
