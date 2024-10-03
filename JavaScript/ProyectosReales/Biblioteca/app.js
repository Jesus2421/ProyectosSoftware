// Agregamos un evento de click al botón de búsqueda
document.getElementById('searchButton').addEventListener('click', function() {
    const query = document.getElementById('searchInput').value;
    
    if (query) {
        // Llamar a la función para buscar libros
        searchBooks(query);
    }
});

// Función que hace la solicitud a la API de Google Books
function searchBooks(query) {
    const apiUrl = `https://www.googleapis.com/books/v1/volumes?q=${query}`;

    fetch(apiUrl)
        .then(response => response.json())
        .then(data => {
            // Limpiar resultados anteriores
            const resultsDiv = document.getElementById('bookResults');
            resultsDiv.innerHTML = '';

            if (data.items) {
                // Mostrar los libros encontrados
                data.items.forEach(item => {
                    const book = item.volumeInfo;
                    const bookDiv = document.createElement('div');
                    bookDiv.classList.add('book');

                    const bookTitle = document.createElement('h3');
                    bookTitle.textContent = book.title;
                    bookDiv.appendChild(bookTitle);

                    const bookAuthors = document.createElement('p');
                    bookAuthors.textContent = `Autor(es): ${book.authors ? book.authors.join(', ') : 'No disponible'}`;
                    bookDiv.appendChild(bookAuthors);

                    const bookDescription = document.createElement('p');
                    bookDescription.textContent = book.description ? book.description : 'No hay descripción disponible';
                    bookDiv.appendChild(bookDescription);

                    resultsDiv.appendChild(bookDiv);
                });
            } else {
                // No se encontraron libros
                resultsDiv.innerHTML = '<p>No se encontraron resultados.</p>';
            }
        })
        .catch(error => {
            console.error('Error al buscar libros:', error);
            document.getElementById('bookResults').innerHTML = '<p>Ocurrió un error al buscar los libros.</p>';
        });
}
