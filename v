// btnPopup.addEventListener('click', () => {
//     wrapper.classList.toggle('active-popup');
// });




//cara ke 2
// const wrapper = document.querySelector('.wrapper');
// const btnPopup = document.querySelector('.btnlogin-popup')
// const menuPopup = document.querySelector('.menulogin-popup')
// const emailInput = document.querySelector('#emailInput')
// const message = document.querySelector('#message')
// const pwd = document.querySelector('#pwd');

// let database = [
//     {
//         'email': 'maulana@gmail.com',
//         'password': 'lana!!123'
//     },
//     {
//         'email': 'admin@gmail.com',
//         'password': 'admin'
//     },
//     {
//         'email': 'coding@yahoo.com',
//         'password': 'menyenangkan'
//     },
//     {
//         'email': 'tegarganteng@gmail.com',
//         'password': 'tegarbaik'
//     }
// ];


// // Fungsi untuk menyimpan data ke localStorage
// function simpanData(email, password) {
//     localStorage.setItem('savedEmail', email);
//     localStorage.setItem('savedPassword', password);
// }

// // Fungsi untuk mengambil data dari localStorage
// function loadData() {
//     const savedEmail = localStorage.getItem('savedEmail');
//     const savedPassword = localStorage.getItem('savedPassword');
//     if (savedEmail && savedPassword) {
//         emailInput.value = savedEmail;
//         pwd.value = savedPassword;
//     }
// }

// // Memanggil fungsi loadData saat halaman dimuat
// window.addEventListener('load', loadData);

// btnLogin.addEventListener('click', () => {
//     message.innerHTML = '';
//     let email = emailInput.value;
//     let password = pwd.value;
//     let validate = true;

//     if (email === '') {
//         validate = false;
//         message.innerHTML += '<div class="alert alert-danger">Email Tidak Boleh Kosong</div>';
//     }

//     if (password === '') {
//         validate = false;
//         message.innerHTML += '<div class="alert alert-danger">Password Tidak Boleh Kosong</div>';
//     }

//     if (validate) {
//         let success = { 'email': false, 'password': false };
//         for (let i = 0; i < database.length; i++) {
//             if (email == database[i]['email']) {
//                 success.email = true;
//                 if (password == database[i]['password']) {
//                     success.password = true;
//                 }
//             }
//         }
//         if (success.email) {
//             if (success.password) {
//                 // Simpan data ke localStorage saat login berhasil
//                 simpanData(email, password);
//                 document.location.href = 'menu.html';
//             } else {
//                 message.innerHTML = '<div class="alert alert-danger">Password salah</div>';
//             }
//         } else {
//             message.innerHTML = '<div class="alert alert-danger">Email tidak dikenali</div>';
//         }
//     }
// });

// btnPopup.addEventListener('click', () => {
//     wrapper.classList.add('active-popup');
// });




//note 1
// btnLogin.addEventListener('click', () => {
//     message.innerHTML = '';
//     let email = emailInput.value;
//     let password = pwd.value;
//     let validate = true;
//     if (email === '') {
//         validate = false;
//         message.innerHTML += '<div class="alert alert-danger">Email Tidak Boleh Kosong</div>';
//     }
//     if (password === '') {
//         validate = false;
//         message.innerHTML += '<div class="alert alert-danger">Password Tidak Boleh Kosong</div>';
//     }
//     if(validate){
//         let success = {'email':false,'password':false};
//         for(let i=0;i<database.length;i++){
//             if(email == database[i]['email']){
//                 success.email = true;
//                 if(password == database[i]['password']){
//                     success.password = true;
//                 }
//             }
//         }
//         if(success.email){
//             if(success.password){
//                 document.location.href = 'menu.html'
//             }else{
//                 message.innerHTML = '<div class="alert alert-danger">password salah</div>';
//             }
//         }else{
//                 message.innerHTML = '<div class="alert alert-danger">email tidak dikenali</div>';
//         }
//     }
// });

// btnPopup.addEventListener('click', () => {
//     wrapper.classList.add('active-popup');
// });