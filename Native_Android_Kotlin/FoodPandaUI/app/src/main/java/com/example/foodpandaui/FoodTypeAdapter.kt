package com.example.foodpandaui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView

class FoodTypeAdapter(private val foodTypeList: List<FoodTypes>) : RecyclerView.Adapter<FoodTypeAdapter.FoodTypeViewHolder>() {
    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): FoodTypeViewHolder {
        val inflater : LayoutInflater = LayoutInflater.from(parent.context)
        val view = inflater.inflate(R.layout.food_type_list,parent,false)
        return FoodTypeViewHolder(view)
    }

    override fun onBindViewHolder(holder: FoodTypeViewHolder, position: Int) {
        val foodTypeBinder = foodTypeList[position]
        holder.FoodNames.text = foodTypeBinder.foodTypeName
        holder.FoodImages.setImageDrawable(holder.itemView.context.getDrawable(foodTypeBinder.foodTypeImages))
    }

    override fun getItemCount() = foodTypeList.size

    class FoodTypeViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {
        var FoodNames: TextView = itemView.findViewById<TextView>(R.id.foodType_title_TV)
        var FoodImages: ImageView = itemView.findViewById<ImageView>(R.id.foodType_ImgView)
    }
}