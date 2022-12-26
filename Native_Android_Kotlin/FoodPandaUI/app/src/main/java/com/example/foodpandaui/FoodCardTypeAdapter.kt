package com.example.foodpandaui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.ImageView
import android.widget.TextView
import androidx.core.content.ContextCompat.startActivity
import androidx.recyclerview.widget.RecyclerView

class FoodCardTypeAdapter(private val foodCardTypeLists: List<FoodCardType>) : RecyclerView.Adapter<FoodCardTypeAdapter.FoodCardTypeViewHolder>() {
    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): FoodCardTypeViewHolder {
        val inflater : LayoutInflater = LayoutInflater.from(parent.context)
        val view = inflater.inflate(R.layout.card_food_list_view,parent,false)



        return FoodCardTypeViewHolder(view, parent.context)
    }

    override fun onBindViewHolder(holder: FoodCardTypeViewHolder, position: Int) {

        holder.bindView(foodCardTypeLists,position)
    }

    override fun getItemCount() = foodCardTypeLists.size

    class FoodCardTypeViewHolder(itemView: View, private val context: Context) : RecyclerView.ViewHolder(itemView) {
        var FoodCardImages: ImageView = itemView.findViewById<ImageView>(R.id.card_food_img_IV)
        var FoodCardNames: TextView = itemView.findViewById<TextView>(R.id.card_food_title_TV)
        var FoodCardTime: TextView = itemView.findViewById<TextView>(R.id.card_food_time_TV)
        var FoodCardRating: TextView = itemView.findViewById<TextView>(R.id.card_food_rating_TV)
        var FoodCardPrice: TextView = itemView.findViewById<TextView>(R.id.card_food_price_TV)
        var btn: Button = itemView.findViewById(R.id.view_item_btn)

        fun bindView(list: List<FoodCardType>, position: Int) {
            val foodCardTypeBinder = list[position]
            FoodCardNames.text = foodCardTypeBinder.foodCardTypeName
            FoodCardTime.text = foodCardTypeBinder.foodCardTypeTime
            FoodCardRating.text = foodCardTypeBinder.foodCardTypeRating.toString()
            FoodCardPrice.text = foodCardTypeBinder.foodCardTypePrice.toString()
            FoodCardImages.setImageDrawable(context.getDrawable(foodCardTypeBinder.foodCardTypeImg))
            btn.setOnClickListener{
                var intent = Intent(context,Item::class.java)
                startActivity(context, intent, Bundle())
            }
        }
    }
}