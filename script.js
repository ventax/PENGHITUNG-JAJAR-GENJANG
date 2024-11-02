const wrapper = document.querySelector('.wrapper');
const btnPopup = document.querySelector('.btnlogin-popup')
const menuPopup = document.querySelector('.menulogin-popup')
const emailInput = document.querySelector('#emailInput')
const message = document.querySelector('#message')
const tampilkan = document.getElementById('tampilkan');
const tombolHitung = document.getElementById('hitung');


let database = [
    {
        'email': 'maulana@gmail.com',
        'password': 'lana!!123'
    },
    {
        'email': 'admin@gmail.com',
        'password': 'admin'
    },
    {
        'email': 'coding@yahoo.com',
        'password': 'menyenangkan'
    },
    {
        'email': 'tegarganteng@gmail.com',
        'password': 'tegarbaik'
    }]
btnLogin.addEventListener('click', () => {
    message.innerHTML = '';
    let email = emailInput.value;
    let password = pwd.value;
    let validate = true;
    if (email === '') {
        validate = false;
        message.innerHTML += '<div class="alert alert-danger">Email Tidak Boleh Kosong</div>';
    }
    if (password === '') {
        validate = false;
        message.innerHTML += '<div class="alert alert-danger">Password Tidak Boleh Kosong</div>';
    }
    if(validate){
        let success = {'email':false,'password':false};
        for(let i=0;i<database.length;i++){
            if(email == database[i]['email']){
                success.email = true;
                if(password == database[i]['password']){
                    success.password = true;
                }
            }
        }
        if(success.email){
            if(success.password){
                document.location.href = 'menu.html'
            }else{
                message.innerHTML = '<div class="alert alert-danger">password salah</div>';
            }
        }else{
                message.innerHTML = '<div class="alert alert-danger">email tidak dikenali</div>';
        }
    }
});

btnPopup.addEventListener('click', () => {
    wrapper.classList.add('active-popup');
});

document.addEventListener('DOMContentLoaded', function() {
    const isLoggedIn = localStorage.getItem('isLoggedIn');

    if (isLoggedIn === 'true') {
        // Jika sudah login, cari tombol login di navigasi dan sembunyikan
        const loginButton = document.querySelector('.btnlogin-popup a');
        loginButton.style.display = 'none';
    } else {
        // Jika belum login atau tombol lewati belum diklik, biarkan tombol login terlihat
    }
});
