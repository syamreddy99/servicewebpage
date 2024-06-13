<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.Example.models.ActiveProducts" %>
<%@ page import="java.util.Iterator" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Product List</title>
    <!-- Include FontAwesome library -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX=" crossorigin="anonymous" />
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: auto;
            padding: 20px;
        }
        .product-container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
        }
        .product {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 15px;
            width: 220px;
            text-align: center;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .product img {
            max-width: 100%;
            height: auto;
        }
        .product-name {
            font-size: 18px;
            font-weight: bold;
            margin: 10px 0;
        }
        .product-price {
            color: green;
            font-size: 16px;
            margin-bottom: 10px;
        }
        .like-dislike-container {
            display: flex;
            justify-content: center;
            margin-top: 10px;
        }
        .like-btn, .dislike-btn {
            background-color: transparent;
            border: none;
            cursor: pointer;
            margin: 0 5px;
            display: flex; /* Ensure icons are properly aligned */
            align-items: center; /* Center icons vertically */
        }
        .like-btn img, .dislike-btn img {
            width: 24px; /* Adjust image size */
            height: 24px;
            margin-right: 5px; /* Space between icon and text */
            vertical-align: middle; /* Align image properly */
        }
        .like-btn:hover img, .dislike-btn:hover img {
            filter: brightness(0.8); /* Darken image on hover */
        }
        .like-btn:hover path, .dislike-btn:hover path {
            fill: #007bff; /* Blue color on hover for thumbs-up */
        }
        .dislike-btn:hover path {
            fill: #FF6347; /* Red color on hover for thumbs-down */
        }
        .btn {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Active Products</h1>
        <div class="product-container">
            <% 
            List<ActiveProducts> products = (List<ActiveProducts>) request.getAttribute("products");
            if (products != null && !products.isEmpty()) {
                Iterator<ActiveProducts> iterator = products.iterator();
                while(iterator.hasNext()) {
                    ActiveProducts product = iterator.next();
            %>
            <div class="product">
                <img src="<%= product.getProductImage() %>" alt="<%= product.getProductName() %>">
                <div class="product-name"><%= product.getProductName() %></div>
                <div class="product-price">Price: <%= product.getProductPrice() %>/-</div>
                <div class="like-dislike-container">
                    <button class="like-btn" onclick="likeProduct('<%= product.getProductName() %>', '<%= product.getProduct_id() %>')">
                        <img src="https://www.svgrepo.com/show/220662/like.svg" alt="Like Icon">
                        Like
                    </button>
                    <button class="dislike-btn" onclick="dislikeProduct('<%= product.getProductName() %>', '<%= product.getProduct_id() %>')">
                        <img src="https://www.svgrepo.com/show/70813/dislike.svg" alt="Dislike Icon">
                        Dislike
                    </button>
                </div>
            </div>
            <% 
                }
            } else {
                // Handle case when products list is null or empty
                %>
                <div>No active products found.</div>
                <% 
            } 
            %>
        </div>
        
        <!-- Form to send request to servlet -->
        <div class="btn-container">
            <form id="viewProductsForm" action="viewProducts" method="get">
                <button type="submit" class="btn">Send Request to Servlet</button>
            </form>
        </div>
    </div>

    <!-- JavaScript to handle like/dislike actions -->
<script>
function likeProduct(productName, productId) {
    fetch('/serviceWebpage/LikeProductServlet?productName=' + encodeURIComponent(productName) + '&productId=' + encodeURIComponent(productId))
        .then(response => response.text())
        .then(data => {
            alert(data); // Alert response from servlet (e.g., "Liked ProductName")
            // Optionally update UI based on response
        })
        .catch(error => {
            console.error('Error liking product:', error);
            // Handle error if AJAX request fails
        });
}

function dislikeProduct(productName, productId) {
    fetch('/serviceWebpage/DislikeProductServlet?productName=' + encodeURIComponent(productName) + '&productId=' + encodeURIComponent(productId))
        .then(response => response.text())
        .then(data => {
            alert(data); // Alert response from servlet (e.g., "Disliked ProductName")
            // Optionally update UI based on response
        })
        .catch(error => {
            console.error('Error disliking product:', error);
            // Handle error if AJAX request fails
        });
}
</script>

</body>
</html>
