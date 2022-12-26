package com.example.foodpandaui

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.TextView
import androidx.core.content.ContextCompat
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView

class Item : AppCompatActivity() {
    lateinit var quantity: TextView
    lateinit var price: TextView
    var initialFoodPrice:Double = 240.0
    var minimumOrder:Int = 1
    var maximumOrder:Int = 10

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_item)
        window.statusBarColor = ContextCompat.getColor(this,R.color.yellow_background)
        quantity = findViewById(R.id.foodQuantity_TV)
        price = findViewById(R.id.foodPrice_TV)
        val images : List<Int> = listOf(
            R.drawable.in_shrimp,
            R.drawable.in_avocado,
            R.drawable.in_guava,
            R.drawable.in_leaf,
            R.drawable.in_tomato,
        )
        val ingredients:RecyclerView = findViewById(R.id.ingredients_RV)
        ingredients.adapter = IngredientsAdapter(images)
        ingredients.layoutManager = LinearLayoutManager(this,LinearLayoutManager.HORIZONTAL,false)
    }

    fun backToMenu(view: View) {
        val toMenu = Intent(this,Menu::class.java)
        startActivity(toMenu)
        finish()
    }

    fun increaseQuantity(view: View) {
            minimumOrder+=1
            initialFoodPrice+=240
            quantity.text = minimumOrder.toString()
            price.text = initialFoodPrice.toString()
    }

    fun decreaseQuantity(view: View) {
        if(minimumOrder == 1){
            quantity.text = "1"

            price.text = "240.0"
        }else {
            minimumOrder -= 1
            initialFoodPrice -= 240
            quantity.text = minimumOrder.toString()
            price.text = initialFoodPrice.toString()
        }
    }

}