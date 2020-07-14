package br.com.local.apprecyclerview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import java.util.List;

public class RecycleViewAdapter extends RecyclerView.Adapter<RecycleViewAdapter.MyViewHolder> {

    private Context context;
    private List<Livro> dadosLivros;

    //Criando o construtor do RecycleViewAdapter


    public RecycleViewAdapter(Context context, List<Livro> dadosLivros) {
        this.context = context;
        this.dadosLivros = dadosLivros;
    }

    @NonNull
    @Override
    public MyViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view;
        LayoutInflater inflater = LayoutInflater.from(context);
        view = inflater.inflate(R.layout.modelo_livros_cardview, parent, false);

        MyViewHolder myViewHolder = new MyViewHolder(view);

        return myViewHolder;
    }

    @Override
    public void onBindViewHolder(@NonNull MyViewHolder holder, int position) {

        holder.txtNomeLivro.setText(dadosLivros.get(position).getTitulo());
        holder.imagemLivro.setImageResource(dadosLivros.get(position).getImagem());
    }

    @Override
    public int getItemCount() {
        return dadosLivros.size();
    }

    public static class MyViewHolder extends RecyclerView.ViewHolder {

        TextView txtNomeLivro;
        ImageView imagemLivro;

        public MyViewHolder(@NonNull View itemView) {
            super(itemView);

            txtNomeLivro = itemView.findViewById(R.id.txtNomeLivro);
            imagemLivro = itemView.findViewById(R.id.img_livro);
        }
    }

}
                                                                                                                                                                                                                                                                                                                                                                                                      