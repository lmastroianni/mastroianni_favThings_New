// this is a partially revealing module pattern - just a variation on what we've already done

const myVM = (() => {
    // get the user buttons and fire off an async DB query with Fetch
    let userButtons = document.querySelectorAll('.u-link') , 
    lightbox = document.querySelector('.lightbox');

    function renderFavourites(Favourites) {
        return `<ul class="u-social">
        ${Favourites.map(item => `<li>${item}</li>`).join('')}
        </ul>`
    }

    function parseUserData(person) { // person is database result
        let targetDiv = document.querySelector('.lb-content'),
        targetImg = lightbox.querySelector('img');

        let bioContent = `
            <p>${person.bio}</p>
            <h4>Favourites:</h4>
            ${renderFavourites(person.Favourites)}
        `;

        console.log(bioContent);

        targetDiv.innerHTML = bioContent;
        targetImg.src = person.imgsrc;


        lightbox.classList.add('show-lb');

    }

    function getUserData(event) {
        event.preventDefault(); //kill the default a tag behaviour (don't navigate anywhere)
        //debugger;
        //find the image closest to the anchor tag and get its src property
        let imgSrc = this.previousElementSibling.getAttribute('src');

        let url = `/users/${this.getAttribute('href')}` // will show a 1,2,or 3 - triggers route change so u can do db query

        fetch(url) // go get the data
            .then(res => res.json()) // parse the json result into a plain object
            .then(data => {
                console.log("my database result is: ", data)

                data[0].imgsrc = imgSrc;

                parseUserData(data[0]);
            })
            .catch((err) => {
                console.log(err)
            });
    }

    userButtons.forEach(button => button.addEventListener('click' , getUserData))

    lightbox.querySelector('.close').addEventListener('click', function() {
        lightbox.classList.remove('show-lb');
    });

})();