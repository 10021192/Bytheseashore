async function getPlayersonTiles() {
    try {
        const response = await fetch(`/api/playertotile`);
        if (response.status == 200) {
           var playerpositions = await response.json();
           return playerpositions;
        } else {
            // Treat errors like 404 here
            console.log(response);
        }
    } catch (err) {
        // Treat 500 errors here
        console.log(err);
    }
}
