<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cuisines</title>
    <link rel="stylesheet" href="cuisines.css"></link>
</head>
<body>
<?php include 'navbar.php'?>
<div class="container">
    <?php

    include "intermediaryClass.php";
    $result; //stores the result of the query.
    $intermediaryClass = new IntermediaryClass();
    $cuisines = $intermediaryClass->GetDishes();
    $selectedCountry = isset($_GET['country']) ? $_GET['country'] : null;

    foreach ($cuisines as $index => $cuisine) {
        if (!$selectedCountry || $cuisine['country'] === $selectedCountry) {

        echo '<div class="card" onclick="openModal(' . $index . ')">';
        echo '<img src="' . htmlspecialchars($cuisine['image']) . '" alt="Cuisine Image">';
        echo '<h4>' . htmlspecialchars($cuisine['name']) . '</h4>';
        echo '<p>' . htmlspecialchars($cuisine['description']) . '</p>';
        echo '<svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="25" height="25" viewBox="0 0 50 50">
        <path d="M 25 2 C 12.309295 2 2 12.309295 2 25 C 2 37.690705 12.309295 48 25 48 C 37.690705 48 48 37.690705 48 25 C 48 12.309295 37.690705 2 25 2 z M 25 4 C 36.609824 4 46 13.390176 46 25 C 46 36.609824 36.609824 46 25 46 C 13.390176 46 4 36.609824 4 25 C 4 13.390176 13.390176 4 25 4 z M 37.039062 10.990234 A 1.0001 1.0001 0 0 0 36.265625 11.322266 L 26.183594 22.244141 A 3 3 0 0 0 25 22 A 3 3 0 0 0 22 25 A 3 3 0 0 0 25 28 A 3 3 0 0 0 25.5 27.958984 L 29.125 34.486328 A 1.0010694 1.0010694 0 1 0 30.875 33.513672 L 27.246094 26.984375 A 3 3 0 0 0 28 25 A 3 3 0 0 0 27.652344 23.599609 L 37.734375 12.677734 A 1.0001 1.0001 0 0 0 37.039062 10.990234 z"></path>
        </svg>' .htmlspecialchars($cuisine['time']);
        echo '</div>';

        echo '<div id="myModal' . $index . '" class="modal">';
        echo '<div class="modal-content">';
        echo '<span class="close" onclick="closeModal(' . $index . ')">&times;</span>';
        echo '<h2>' . htmlspecialchars($cuisine['name']) . '</h2>';
        echo '<p>' . htmlspecialchars($cuisine['ingredients']) . '</h2>';
        echo '<p>' . htmlspecialchars($cuisine['recipe']) . '</p>';
        echo '</div>';
        echo '</div>';
    }
}
    ?>
    
</div>
<script>
function openModal(index) {
    document.getElementById('myModal' + index).style.display = "block";
}

function closeModal(index) {
    document.getElementById('myModal' + index).style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target.className === "modal") {
        event.target.style.display = "none";
    }
}
</script>

</body>
</html>
