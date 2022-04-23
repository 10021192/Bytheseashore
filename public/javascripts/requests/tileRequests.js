async function getTiles() {
    try {
        const response = await fetch(`/api/tile`);
        if (response.status == 200) {
           var tiles = await response.json();
           return tiles;
        } else {
            // Treat errors like 404 here
            console.log(response);
        }
    } catch (err) {
        // Treat 500 errors here
        console.log(err);
    }
}