class Personagem{
String nome;
String tipo;
int _vitalidade;
Personagem(String nome, String tipo, {int vitalidade}){
this.nome=nome;
this.tipo=tipo;
_vitalidade=vitalidade;
print("Personagem criado com sucesso!");
}
void curar(int valorDaCura){
_vitalidade = _vitalidade + valorDaCura ;
print("[ALERTA DE CURA] Personagem recebeu uma cura de $valorDaCura , vitalidade atual é de $_vitalidade ");
}
void receberDano(int valorDoDano){
_vitalidade = _vitalidade - valorDoDano ;
print("[ALERTA DE DANO] Personagem recebeu um dano de $valorDoDano , vitalidade atual é de $_vitalidade ");
}
int get obterVitalidade{
return _vitalidade;
}
}

void main() {
Personagem personagem1 = Personagem("harry","guerreiro", vitalidade:100);
personagem1.receberDano(50);
personagem1.curar(90);
print("A vitalidade atual do personagem ${personagem1.nome} é de ${personagem1.obterVitalidade} ");
