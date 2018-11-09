const api_key = '3e672b014e7ced3c05f793acf81413b2'

// function fill(album) {
//   return `<div class="row m-t-1">
//       <div class="col-xs-12">
//         <img src="${album.image[2]['#text']}" class='pull-left m-r-1'>
//         <h2>${album.name}</h2>
//         <p>${album.artist.name}</p>
//       </div>
//     </div>`
// }


// let search_box = document.getElementById("new_vinyl");
let artist_field = document.getElementById("vinyl_artist");
let album_field = document.getElementById("vinyl_album");

// artist_field.addEventListener("blur", (event) => {
//   event.preventDefault();
//   let artist = document.getElementById("vinyl_artist").value;
//   // console.log(input)
// });

artist_field.addEventListener("blur", (event) => {
  event.preventDefault();
  let artist = document.getElementById("vinyl_artist").value;
  let url = `http://ws.audioscrobbler.com/2.0/?method=artist.search&api_key=${api_key}&artist=${artist}&format=json&limit=5`
  fetch(url)
    .then(response => response.json())
    .then((data) => {
      // console.log(data.results.artistmatches)
      artist_field.value = data.results.artistmatches.artist[0].name
    });
});

album_field.addEventListener("blur", (event) => {
  event.preventDefault();
  let artist = document.getElementById("vinyl_artist").value;
  let album = document.getElementById("vinyl_album").value;
  let url = `http://ws.audioscrobbler.com/2.0/?method=album.search&api_key=${api_key}&artist=${artist}&album=${album}&format=json&limit=10`
  fetch(url)
    .then(response => response.json())
    .then((data) => {
      console.log(data.results.albummatches.album)
      data.results.albummatches.album.forEach ((album) => {
        if (album.artist === artist) {
          album_field.value = album.name
        }
      });
      // artist_field.value = data.results.artistmatches.artist[0].name
    });
});


