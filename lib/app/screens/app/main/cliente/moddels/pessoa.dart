import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mob_vendas/app/moddels/data_moddels/item_base_moddel.dart';

class Pessoa extends ItemBaseModdel {
  String? _id;

  String? nome;
  String? apelido;
  String? cpfcnpj;
  String? rjinscricaoEstadual;
  String? telefone;
  String? email;
  String? redeSocial;
  String? cidade;
  String? estado;
  String? cep;
  String? endereco;
  String? complemento;
  String? refencia;

  String? profile_pic;

  Pessoa(
      {this.nome,
      this.apelido,
      this.cpfcnpj,
      this.rjinscricaoEstadual,
      this.telefone,
      this.email,
      this.redeSocial,
      this.cidade,
      this.estado,
      this.cep,
      this.endereco,
      this.complemento,
      this.refencia});

  Pessoa.fromJson(QueryDocumentSnapshot<Map<String, dynamic>> snapshot) {
    nome = snapshot['nome'];
    _id = snapshot.id;
    try {
      apelido = snapshot['apelido'];
      cpfcnpj = snapshot['cpf_cnpj'];
      rjinscricaoEstadual = snapshot['rj_inscricaoEstadual'];
      telefone = snapshot['telefone'];
      email = snapshot['email'];
      redeSocial = snapshot['redeSocial'];
      cidade = snapshot['cidade'];
      estado = snapshot['estado'];
      cep = snapshot['cep'];
      endereco = snapshot['endereco'];
      complemento = snapshot['complemento'];
      refencia = snapshot['refencia'];
    } catch(e){
      // print(e);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['nome'] = nome;
    data['apelido'] = apelido;
    data['cpf_cnpj'] = cpfcnpj;
    data['rj_inscricaoEstadual'] = rjinscricaoEstadual;
    data['telefone'] = telefone;
    data['email'] = email;
    data['redeSocial'] = redeSocial;
    data['cidade'] = cidade;
    data['estado'] = estado;
    data['cep'] = cep;
    data['endereco'] = endereco;
    data['complemento'] = complemento;
    data['refencia'] = refencia;
    return data;
  }

  @override
  String? getID() => _id;

  @override
  String getName() => nome ?? '';
}
