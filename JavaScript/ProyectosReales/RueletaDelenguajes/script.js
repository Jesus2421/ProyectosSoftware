document.addEventListener('DOMContentLoaded',function(){
    const lenguajes =['JavaScript', 'Python', 'Java', 'C++', 'C', 'PHP', 'JSP', 'Pascal', 'Swift', 'Go'];
    const ruleta = document.querySelector('.ruleta');
    const btn = document.getElementById('start');

    // Función para generar un resultado aleatorio
    function spinRuleta() {
        // Desactivar el botón temporalmente para evitar múltiples clicks
        btn.disabled = true;

        // Elegir un lenguaje aleatorio
        const randomIndex = Math.floor(Math.random() * lenguajes.length);
        const selectedLanguage = lenguajes[randomIndex];

        // Mostrar el lenguaje seleccionado en la ruleta
        ruleta.innerHTML = `<span>${selectedLanguage}</span>`;

        // Rehabilitar el botón después de unos segundos
        setTimeout(() => {
            btn.disabled = false;
        }, 2000); // 2 segundos de espera
    }

    // Evento al hacer clic en el botón
    btn.addEventListener('click', spinRuleta);
});