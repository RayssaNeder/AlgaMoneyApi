package com.example.algamoney.api.repository.lancamento;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.algamoney.api.model.Lancamento;
import com.example.algamoney.api.repository.filter.LancamentoFilter;

public interface LancamentoRespositoryQuery  {

	public List<Lancamento> filtrar(LancamentoFilter lancamentoFilter);
}
