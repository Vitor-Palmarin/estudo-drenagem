/* BANCADA EXPERIMENTAL PARA ESTUDO DOS SISTEMAS DE DRENAGEM PARA VAGÕES DE CARGA TIPO GÔNDOLA
 * 
 * DESENVOLVIDO POR: VITOR PALMARIN OLIVEIRA SANTOS - 10/2021
 * 
 */
// === DECLARACAO DE BIBLIOTECAS ===
#include <SPI.h>
#include <SD.h>
#include <Wire.h>;
#include <LiquidCrystal_I2C.h>;

// === DECLARAÇÃO DE OBJETOS ===
LiquidCrystal_I2C lcd(0x27, 20, 4);

// === PINAGEM ===
const int chipSelect = 10;

const int triggerUm = 2;
const int echoUm = 3;

const int triggerDois = 4;
const int echoDois = 5;

const int triggerTres = 6;
const int echoTres = 7;

const int led = 9;

const int chave = 8;

// === VARIAVEIS ===
long intervaloColeta = millis();
long intervaloLed = millis();
long intervaloExibicao = millis();

long pulsoUm, 
     pulsoDois, 
     pulsoTres;

int nivelUm, 
    nivelDois, 
    nivelTres;

const int alturaTanque = 506; // altura do tanque em milimetros

bool opcao = 0;

void setup()
{
  Serial.begin(9600);
  lcd.init();
  lcd.backlight();

  pinMode(triggerUm, OUTPUT);
  pinMode(echoUm, INPUT); 
  pinMode(triggerDois, OUTPUT);
  pinMode(echoDois, INPUT);
  pinMode(triggerTres, OUTPUT);
  pinMode(echoTres, INPUT);
  pinMode(led, OUTPUT);
  pinMode(chave, INPUT);

  digitalWrite(triggerUm, LOW);
  digitalWrite(triggerDois, LOW);
  digitalWrite(triggerTres, LOW);
  digitalWrite(led, LOW);
  
  Serial.println("Inicializando cartao SD...");
  if (!SD.begin(chipSelect))
  {
    Serial.println("Falha ao acessar o cartao !");
    Serial.println("Verifique o cartao/conexoes e reinicie o Arduino...");
    return;
  }
  Serial.println("Cartao iniciado corretamente !\n");
}

void loop()
{
  if((millis() - intervaloLed) >= 500){    // pisca o led no intervalo de 0,5 segundo
    intervaloLed = millis();
    digitalWrite(led,!digitalRead(led));
  }

  if((millis() - intervaloExibicao) >= 1000){   // exibe os dados no Serial a cada 1 segundo
    intervaloExibicao = millis();
    
    nivelUm = getDistancia(triggerUm, echoUm);
    nivelDois = getDistancia(triggerDois, echoDois);
    nivelTres = getDistancia(triggerTres, echoTres);

    exibeLCD();
    exibeSerial();
  }
  
  if((millis() - intervaloColeta) >= 60000){ // faz a coleta de dados a cada 1 minuto
    intervaloColeta = millis();
    if(digitalRead(chave)){
      saveData();                           // armazena os dados coletados na planilha
    }
  }
}

void exibeLCD(){
  lcd.clear();   
  lcd.setCursor(0,0);
  lcd.print("TEMPO = ");
  lcd.setCursor(8,0);
  lcd.print(millis()/1000);
  
  lcd.setCursor(0,1);
  lcd.print("SENSOR 1 = ");
  lcd.setCursor(11,1);
  lcd.print(nivelUm);
  
  lcd.setCursor(0,2);
  lcd.print("SENSOR 2 = ");
  lcd.setCursor(11,2);
  lcd.print(nivelDois);
  
  lcd.setCursor(0,3);
  lcd.print("SENSOR 3 = ");
  lcd.setCursor(11,3);
  lcd.print(nivelTres);
}

void exibeSerial(){
  Serial.println();
  Serial.print("TEMPO = ");
  Serial.print(millis()/1000);
  Serial.print(" s = ");
  Serial.print(millis()/60000);
  Serial.println(" min");
  Serial.println();
  
  // SENSOR 1
  Serial.print("Sensor 1 = ");
  Serial.print(nivelUm);
  Serial.println(" mm ");
  // SENSOR 2
  Serial.print("Sensor 2 = ");
  Serial.print(nivelDois);
  Serial.println(" mm ");
  
  // SENSOR 3
  Serial.print("Sensor 3 = ");
  Serial.print(nivelTres);
  Serial.println(" mm ");
  
  Serial.println();
}

long getDistancia(int trigger, int echo) {
    digitalWrite(trigger, HIGH);
    delayMicroseconds(5);
    digitalWrite(trigger, LOW);
    long pulso = pulseIn(echo, HIGH);
    long distanciaSensor = pulso / 2.9 / 2;
    if(opcao == 1) {        // opcao 1 = retorna o nivel do tanque a partir do fundo
      return alturaTanque - distanciaSensor;
    }
    else {                  // opcao 0 = retorna o nivel do tanque a partir do sensor
      return distanciaSensor;
    }
}

void saveData(){
  String fileName = "/datalog.csv";
  if(!SD.exists(fileName)){
    File file = SD.open(fileName, FILE_WRITE);
    if(!file){
      Serial.println("Failed to open file for writing");
      return;
    }
    if(file.println("ESTUDO DE DRENAGEM PARA VAGOES DE CARGA TIPO GONDOLA - UNISANTA")){
      Serial.println("File written");
    } else {
      Serial.println("Write failed");
    }
    if(file.println("DATA;HORA;TEMPO;SENSOR 1 [mm];SENSOR 2 [mm];SENSOR 3 [mm]")){
      Serial.println("Message appended");
    } else {
      Serial.println("Append failed");
    }
    if(file.println(";;" + String(millis()/60000) + ";" + String(nivelUm) + ";" + String(nivelDois) + ";" + String(nivelTres))){
      Serial.println("Message appended");
    } else {
      Serial.println("Append failed");
    }
    file.close();
  }
  else{
    File file = SD.open(fileName, FILE_WRITE);
    if(!file){
      Serial.println("Failed to open file for appending");
      return;
    }
    if(file.println(";;" + String(millis()/60000) + ";" + String(nivelUm) + ";" + String(nivelDois) + ";" + String(nivelTres))){
      Serial.println("Message appended");
    } else {
      Serial.println("Append failed");
    }
    file.close();
  }
}
