import 'dart:convert';

class ResultCep {
  ResultCep({
    this.cep,
    this.logradouro,
    this.complemento,
    this.bairro,
    this.localidade,
    this.uf,
    this.ibge,
    this.gia,
    this.ddd,
    this.siafi,
  });

  String cep;
  String logradouro;
  String complemento;
  String bairro;
  String localidade;
  String uf;
  String ibge;
  String gia;
  String ddd;
  String siafi;

  factory ResultCep.fromJson(String str) => ResultCep.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ResultCep.fromMap(Map<String, dynamic> json) => ResultCep(
        cep: json["cep"] == null ? null : json["cep"],
        logradouro: json["logradouro"] == null ? null : json["logradouro"],
        complemento: json["complemento"] == null ? null : json["complemento"],
        bairro: json["bairro"] == null ? null : json["bairro"],
        localidade: json["localidade"] == null ? null : json["localidade"],
        uf: json["uf"] == null ? null : json["uf"],
        ibge: json["ibge"] == null ? null : json["ibge"],
        gia: json["gia"] == null ? null : json["gia"],
      );

  Map<String, dynamic> toMap() => {
        "cep": cep == null ? null : cep,
        "logradouro": logradouro == null ? null : logradouro,
        "complemento": complemento == null ? null : complemento,
        "bairro": bairro == null ? null : bairro,
        "localidade": localidade == null ? null : localidade,
        "uf": uf == null ? null : uf,
        "ibge": ibge == null ? null : ibge,
        "gia": gia == null ? null : gia,
      };
}
