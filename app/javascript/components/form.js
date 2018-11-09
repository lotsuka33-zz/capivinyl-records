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

artist_field.addEventListener("blur", (event) => {
  event.preventDefault();
  let artist = document.getElementById("vinyl_artist").value;
  // console.log(input)
});

album_field.addEventListener("blur", (event) => {
  event.preventDefault();
  let artist = document.getElementById("vinyl_artist").value;
  let album = document.getElementById("vinyl_album").value;
  let url = `http://ws.audioscrobbler.com/2.0/?method=album.getInfo&api_key=${api_key}&artist=${artist}&album=${album}&format=json&autocorrect1`
  console.log(url)
  // fetch(url)
  //   .then(response => response.json())
  //   .then((data) => {
  //     const albums = document.getElementById("albums-container");
  //     albums.innerHTML = "";
  //     data.topalbums.album.forEach((album) => {
  //       albums.insertAdjacentHTML("beforeend", row_html(album));
  //     });
  //   });
});


