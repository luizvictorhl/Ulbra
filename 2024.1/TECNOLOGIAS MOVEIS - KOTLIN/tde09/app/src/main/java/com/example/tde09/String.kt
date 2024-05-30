package com.example.tde09

fun String.convertToMoneyWithSynbol() = "R$ ".plus(this.replace(".",","))