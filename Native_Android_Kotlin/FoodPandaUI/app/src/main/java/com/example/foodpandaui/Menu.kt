package com.example.foodpandaui

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import androidx.constraintlayout.widget.ConstraintSet.Layout
import androidx.recyclerview.widget.GridLayoutManager
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView

class Menu : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_menu)

        val foodTypes = listOf(
            FoodTypes("Burger",R.drawable.fresh_burger),
            FoodTypes("Pizza",R.drawable.fresh_pizza),
            FoodTypes("ChicPop",R.drawable.fresh_chicken_pops),
            FoodTypes("Hot-Dog",R.drawable.fresh_hot_dog),
            FoodTypes("Fries",R.drawable.fresh_fries),
        )

        val FoodtYpEs : RecyclerView = findViewById(R.id.foodType_RV)
        FoodtYpEs.adapter = FoodTypeAdapter(foodTypes)
        FoodtYpEs.layoutManager = LinearLayoutManager(this,LinearLayoutManager.HORIZONTAL,false)


        val foodCardTypeList = listOf(
            FoodCardType(R.drawable.fresh_pizza,"Beef Pizza","20min",4.5,450.00),
            FoodCardType(R.drawable.fresh_chicken_pops,"Chicken Pop","25min",4.2,250.00),
            FoodCardType(R.drawable.fresh_fries,"Combo Fries","30min",5.0,900.00),
            FoodCardType(R.drawable.fresh_hot_dog,"Hot Dogs","30min",5.0,900.00),
            FoodCardType(R.drawable.fresh_burger,"Beef Burger","25min",5.0,1200.00),
        )
        val numberOfCols = 2
        val FoodCardTypeRecycler:RecyclerView = findViewById(R.id.foodCardType_RV)
        FoodCardTypeRecycler.adapter = FoodCardTypeAdapter(foodCardTypeList)
        FoodCardTypeRecycler.layoutManager = GridLayoutManager(this,numberOfCols)
    }

    fun increase_Quantity(view: View) {}
}