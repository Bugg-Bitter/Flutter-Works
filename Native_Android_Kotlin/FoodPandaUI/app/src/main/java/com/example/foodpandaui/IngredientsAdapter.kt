package com.example.foodpandaui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import androidx.recyclerview.widget.RecyclerView

class IngredientsAdapter(val items_Images: List<Int>) : RecyclerView.Adapter<IngredientsAdapter.IngredientsViewHolder>() {
    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): IngredientsViewHolder {
        val inflater : LayoutInflater = LayoutInflater.from(parent.context)
        val view = inflater.inflate(R.layout.items_ingreditents_list,parent,false)
        return IngredientsViewHolder(view)
    }

    override fun onBindViewHolder(holder: IngredientsViewHolder, position: Int) {
        holder.imgIngeditens.setImageDrawable(holder.itemView.context.getDrawable(items_Images[position]))
    }

    override fun getItemCount(): Int {
        return items_Images.size
    }

    class IngredientsViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {
        var imgIngeditens = itemView.findViewById<ImageView>(R.id.ingrditens_ImgView)
    }

}

