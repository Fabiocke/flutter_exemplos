

void main(){
  String nome = "Flocos";
  print(ola(nome));
}

extension Ola on String {
  String ola() {
    return 'Olá $this';
  }
}





