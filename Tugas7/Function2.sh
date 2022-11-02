#!/bin/bash

# Mendeklarasikan Fungsi
function nama {
    echo "Siapa Namamu?"
    read nama
}

function npm {
    echo "Sebutkan NPM-mu"
    read npm
    echo -e "Hai $nama dengan $npm, selamat datang \n di praktikum sistem operasi yang seru ini ya!"
}

# Memanggil Fungsi
nama
npm
