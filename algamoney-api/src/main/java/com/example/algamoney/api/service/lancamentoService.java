package com.example.algamoney.api.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.algamoney.api.model.Lancamento;
import com.example.algamoney.api.model.Pessoa;
import com.example.algamoney.api.repository.LancamentoRepository;
import com.example.algamoney.api.repository.PessoasRepository;
import com.example.algamoney.api.service.exception.PessoaInexistenteOuInativaException;

@Service
public class lancamentoService {
	
	@Autowired
	private LancamentoRepository lancamentoRepository;
	
	@Autowired
	private PessoasRepository pessoaRepositpry;
	
	public List<Lancamento> findAll(){
		return lancamentoRepository.findAll();
	}
	
	public Lancamento save(Lancamento lancamento){
		Pessoa pessoa = pessoaRepositpry.findOne(lancamento.getPessoa().getCodigo());
		if(pessoa == null || pessoa.isInativa()) {
			throw new PessoaInexistenteOuInativaException();
		}
		return lancamentoRepository.save(lancamento);
	}

}
