package com.example.tde09

import androidx.appcompat.app.AppCompatActivity

fun AppCompatActivity.configureToolbar(title: String, enableBackButton: Boolean){
        supportActionBar?.apply{
        this.title = title
        setDisplayHomeAsUpEnabled(enableBackButton)
    }
}


