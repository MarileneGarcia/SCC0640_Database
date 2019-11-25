# Interface Gráfica Usando Tkinter #

from tkinter import *
import psycopg2
from configparser import ConfigParser

connection = None
cursor = None

def atribuir (cur, con):
  global connection, cursor
  connection = con
  cursor = cur

class Application:

  # Janela Principal
  def __init__(self, master=None):
    self.fonte = ("Quicksand", "10")

    self.jan1 = None 
    self.jan2 = None 
    self.jan3 = None 
    self.jan4 = None
    self.jan5 = None  

    self.container1 = Frame(master)
    self.container1["pady"] = 50
    self.container1.pack()
    self.container2 = Frame(master)
    self.container2["padx"] = 20
    self.container2["pady"] = 10
    self.container2.pack()
    self.container3 = Frame(master)
    self.container3["padx"] = 20
    self.container3["pady"] = 10
    self.container3.pack()
    self.container4 = Frame(master)
    self.container4["padx"] = 20
    self.container4["pady"] = 10
    self.container4.pack()
 
    self.titulo = Label(self.container1, text="Inova Arena")
    self.titulo["font"] = ("Quicksand", "15", "italic")
    self.titulo["fg"] = ("darkblue")
    self.titulo.pack ()
 
    self.consulta1 = Button(self.container2, 
    text="Consultas", font=self.fonte, width=20)
    self.consulta1.pack()
    self.consulta1["bg"] = ("darkblue")
    self.consulta1["fg"] = ("white")
    self.consulta1["command"] = self.janela_consulta
    self.consulta1.pack()
 
    self.consulta2 = Button(self.container3, 
    text="Inserções", font=self.fonte, width=20)
    self.consulta2["bg"] = ("darkblue")
    self.consulta2["fg"] = ("white")
    self.consulta2["command"] = self.janela_insercao
    self.consulta2.pack()

    self.consulta3 = Button(self.container4, 
    text="Sair", font=self.fonte, width=20)
    self.consulta3.pack()
    self.consulta3["bg"] = ("darkblue")
    self.consulta3["fg"] = ("white")
    self.consulta3["command"] = self.titulo.quit
    self.consulta3.pack()
 
  # Janela das Inserções
  def janela_insercao(self):
    if self.jan1 is None:

      # Inicializando
      self.jan1=Tk()
      self.jan1.protocol("WM_DELETE_WINDOW", self.fecha_jan1)
      
      self.container5 = Frame(self.jan1)
      self.container5["pady"] = 50
      self.container5.pack()

      self.container7 = Frame(self.jan1)
      self.container7["padx"] = 20
      self.container7["pady"] = 10
      self.container7.pack()

      self.container8 = Frame(self.jan1)
      self.container8["padx"] = 20
      self.container8["pady"] = 10
      self.container8.pack()
      
      self.container9 = Frame(self.jan1)
      self.container9["padx"] = 20
      self.container9["pady"] = 10
      self.container9.pack()

      self.container10 = Frame(self.jan1)
      self.container10["padx"] = 20
      self.container10["pady"] = 10
      self.container10.pack()

      self.container11 = Frame(self.jan1)
      self.container11["padx"] = 20
      self.container11["pady"] = 10
      self.container11.pack()
      
      self.container12 = Frame(self.jan1)
      self.container12["padx"] = 20
      self.container12["pady"] = 10
      self.container12.pack()

      self.container6 = Frame(self.jan1)
      self.container6["pady"] = 20
      self.container6["pady"] = 10
      self.container6.pack()

      # Definindo os elementos
      self.l=Label(self.container5, text='Inserção')
      self.l["font"] = ("Quicksand", "15", "italic")
      self.l["fg"] = ("darkblue")
      self.l.pack()
      
      self.consulta7 = Button(self.container7, 
      text="Associado", font=self.fonte, width=20)
      self.consulta7["bg"] = ("darkblue")
      self.consulta7["fg"] = ("white")
      self.consulta7["command"] = self.dados_insercao
      self.consulta7.pack()

      self.consulta8 = Button(self.container8, 
      text="Participante", font=self.fonte, width=20)
      self.consulta8["bg"] = ("darkblue")
      self.consulta8["fg"] = ("white")
      self.consulta8.pack()

      self.consulta9 = Button(self.container9, 
      text="Atividade", font=self.fonte, width=20)
      self.consulta9["bg"] = ("darkblue")
      self.consulta9["fg"] = ("white")
      self.consulta9.pack()

      self.consulta10 = Button(self.container10, 
      text="Local", font=self.fonte, width=20)
      self.consulta10["bg"] = ("darkblue")
      self.consulta10["fg"] = ("white")
      self.consulta10.pack()

      self.consulta11 = Button(self.container11, 
      text="Instituição", font=self.fonte, width=20)
      self.consulta11["bg"] = ("darkblue")
      self.consulta11["fg"] = ("white")
      self.consulta11.pack()
      
      self.consulta12 = Button(self.container12, 
      text="Item de Instituição", font=self.fonte, width=20)
      self.consulta12["bg"] = ("darkblue")
      self.consulta12["fg"] = ("white")
      self.consulta12.pack()

      self.consulta6 = Button(self.container6, 
      text="Sair", font=self.fonte, width=20)
      self.consulta6["bg"] = ("darkblue")
      self.consulta6["fg"] = ("white")
      self.consulta6["command"] = self.fecha_jan1
      self.consulta6.pack()

    else:
      self.jan1.lift()

  def fecha_jan1(self):
    self.jan1.destroy()
    self.jan1 = None

  # Janela dos dados da Insecao
  def dados_insercao(self):
    global connection
    global cursor

    # Inicializando
    if self.jan2 is None:
      self.jan2=Tk()
      self.jan2.protocol("WM_DELETE_WINDOW", self.fecha_jan2)
      
      self.container13 = Frame(self.jan2)
      self.container13["pady"] = 50
      self.container13.pack()

      self.container14 = Frame(self.jan2)
      self.container14["padx"] = 20
      self.container14["pady"] = 10
      self.container14.pack()

      self.container15 = Frame(self.jan2)
      self.container15["padx"] = 20
      self.container15["pady"] = 10
      self.container15.pack()
      
      self.container16 = Frame(self.jan2)
      self.container16["padx"] = 20
      self.container16["pady"] = 10
      self.container16.pack()

      self.container17 = Frame(self.jan2)
      self.container17["padx"] = 20
      self.container17["pady"] = 10
      self.container17.pack()

      self.container19 = Frame(self.jan2)
      self.container19["padx"] = 20
      self.container19["pady"] = 10
      self.container19.pack()

      self.container20 = Frame(self.jan2)
      self.container20["pady"] = 20
      self.container20["pady"] = 10
      self.container20.pack()

      self.container18 = Frame(self.jan2)
      self.container18["padx"] = 20
      self.container18["pady"] = 10
      self.container18.pack()

      self.container21 = Frame(self.jan2)
      self.container21["pady"] = 20
      self.container21["pady"] = 10
      self.container21.pack()

      self.container22 = Frame(self.jan2)
      self.container22["pady"] = 20
      self.container22["pady"] = 10
      self.container22.pack()

      # Definindo os elementos
      self.l=Label(self.container13, text='Associado')
      self.l["font"] = ("Quicksand", "15", "italic")
      self.l["fg"] = ("darkblue")
      self.l.pack()
      
      self.consulta14 = Label(self.container14, 
      text="Código Inscrição", font=self.fonte, width=25)
      self.consulta14["fg"] = ("darkblue")
      self.consulta14.pack(side=LEFT)

      self.idassociado = Entry(self.container14)
      self.idassociado["width"] = 50
      self.idassociado["font"] = self.fonte
      self.idassociado.pack(side=RIGHT)

      self.consulta15 = Label(self.container15, 
      text="Código CPF", font=self.fonte, width=25)
      self.consulta15["fg"] = ("darkblue")
      self.consulta15.pack(side=LEFT)

      self.cpf = Entry(self.container15)
      self.cpf["width"] = 50
      self.cpf["font"] = self.fonte
      self.cpf.pack(side=RIGHT)

      self.consulta16 = Label(self.container16, 
      text="Digitos RG", font=self.fonte, width=25)
      self.consulta16["fg"] = ("darkblue")
      self.consulta16.pack(side=LEFT)

      self.digRG = Entry(self.container16)
      self.digRG["width"] = 50
      self.digRG["font"] = self.fonte
      self.digRG.pack(side=RIGHT)

      self.consulta17 = Label(self.container17, 
      text="UF RG", font=self.fonte, width=25)
      self.consulta17["fg"] = ("darkblue")
      self.consulta17.pack(side=LEFT)

      self.uf_rg = Entry(self.container17)
      self.uf_rg["width"] = 50
      self.uf_rg["font"] = self.fonte
      self.uf_rg.pack(side=RIGHT)

      self.consulta19 = Label(self.container19, 
      text="Nome", font=self.fonte, width=25)
      self.consulta19["fg"] = ("darkblue")
      self.consulta19.pack(side=LEFT)

      self.nome = Entry(self.container19)
      self.nome["width"] = 50
      self.nome["font"] = self.fonte
      self.nome.pack(side=RIGHT)

      self.consulta20 = Label(self.container20, 
      text="Instituição", font=self.fonte, width=25)
      self.consulta20["fg"] = ("darkblue")
      self.consulta20.pack(side=LEFT)

      self.instituicao = Entry(self.container20)
      self.instituicao["width"] = 50
      self.instituicao["font"] = self.fonte
      self.instituicao.pack(side=RIGHT)

      self.consulta18 = Label(self.container18, 
      text="Curriculo (opcional)", font=self.fonte, width=25)
      self.consulta18["fg"] = ("darkblue")
      self.consulta18.pack(side=LEFT)

      self.curriculo = Entry(self.container18)
      self.curriculo["width"] = 50
      self.curriculo["font"] = self.fonte
      self.curriculo.pack(side=RIGHT)

      self.consulta22 = Button(self.container22, 
      text="Confirmar", font=self.fonte, width=25)
      self.consulta22["fg"] = ("darkblue")
      self.consulta22["command"] = self.insercao_associado
      self.consulta22.pack(side=LEFT)

      self.consulta23 = Button(self.container22, 
      text="Sair", font=self.fonte, width=25)
      self.consulta23["fg"] = ("darkblue")
      self.consulta23["command"] = self.fecha_jan2
      self.consulta23.pack(side=LEFT)

    else:
      self.jan1.lift()
  
  def fecha_jan2(self):
    self.jan2.destroy()
    self.jan2 = None

  # Janelas de confirmação da inserção
  def insercao_associado(self):

    if self.jan3 is None:
      self.jan3=Tk()
      self.jan3.protocol("WM_DELETE_WINDOW", self.fecha_jan3)
      
      self.container23 = Frame(self.jan3)
      self.container23["pady"] = 25
      self.container23.pack()

      self.container24 = Frame(self.jan3)
      self.container24["padx"] = 20
      self.container24["pady"] = 5
      self.container24.pack()

      self.container25 = Frame(self.jan3)
      self.container25["pady"] = 1
      self.container25.pack()

      self.container27 = Frame(self.jan3)
      self.container27["pady"] = 25
      self.container27.pack()

      self.container26 = Frame(self.jan3)
      self.container26["padx"] = 20
      self.container26["pady"] = 5
      self.container26.pack()

      # Realizando insercao na tabela Associado
      table = 'Associado'
      values = []
      values.append ( self.idassociado.get() )
      values.append ( self.cpf.get() )
      values.append ( self.digRG.get() )
      values.append ( self.uf_rg.get() )
      values.append ( self.nome.get() )
      values.append ( self.instituicao.get() )
      values.append ( self.curriculo.get() )

      values_content = ""
      for index, value in enumerate(values):
          if (index < len(values) - 1):
              values_content += "'" + str(value) + "'" + ", "
          else:
              values_content += "'" + str(value) + "'"

      query = "INSERT INTO " + table + " VALUES (" + values_content + ");"

      try:
          cursor.execute(query)

          self.l=Label(self.container23, text='Inserido com Sucesso')
          self.l["font"] = ("Quicksand", "15", "italic")
          self.l["fg"] = ("darkblue")
          self.l.pack()

          self.consulta24 = Button(self.container24, 
          text="Sair", font=self.fonte, width=25)
          self.consulta24["fg"] = ("darkblue")
          self.consulta24["command"] = self.fecha_jan3
          self.consulta24.pack(side=LEFT)

      except Exception as error:

          self.l=Label(self.container25, text= ("Dados Inválidos\n") )
          self.l["font"] = ("Quicksand", "15", "italic")
          self.l["bg"] = ("darkblue")
          self.l["fg"] = ("white")
          self.l.pack()

          self.l=Label(self.container27, text= str(error) )
          self.l["font"] = ("Quicksand", "15", "italic")
          self.l["fg"] = ("darkblue")
          self.l.pack()

          self.consulta26 = Button(self.container26, 
          text="Sair", font=self.fonte, width=25)
          self.consulta26["fg"] = ("darkblue")
          self.consulta26["command"] = self.fecha_jan3
          self.consulta26.pack(side=LEFT)

    else:
      self.jan2.lift()

  def fecha_jan3(self):
    self.jan3.destroy()
    self.jan3 = None

  # Janela das consultas possiveis
  def janela_consulta(self):
    global connection
    global cursor

    # Inicializando
    if self.jan4 is None:
      self.jan4=Tk()
      self.jan4.protocol("WM_DELETE_WINDOW", self.fecha_jan4)
      
      self.container30 = Frame(self.jan4)
      self.container30["pady"] = 50
      self.container30.pack()

      self.container42 = Frame(self.jan4)
      self.container42["pady"] = 20
      self.container42["pady"] = 10
      self.container42.pack()

      self.container31 = Frame(self.jan4)
      self.container31["padx"] = 20
      self.container31["pady"] = 10
      self.container31.pack()

      self.container32 = Frame(self.jan4)
      self.container32["padx"] = 20
      self.container32["pady"] = 10
      self.container32.pack()
      
      self.container33 = Frame(self.jan4)
      self.container33["padx"] = 20
      self.container33["pady"] = 10
      self.container33.pack()

      self.container34 = Frame(self.jan4)
      self.container34["padx"] = 20
      self.container34["pady"] = 10
      self.container34.pack()

      self.container35 = Frame(self.jan4)
      self.container35["padx"] = 20
      self.container35["pady"] = 10
      self.container35.pack()

      self.container36 = Frame(self.jan4)
      self.container36["pady"] = 20
      self.container36["pady"] = 10
      self.container36.pack()

      self.container37 = Frame(self.jan4)
      self.container37["padx"] = 20
      self.container37["pady"] = 10
      self.container37.pack()

      self.container38 = Frame(self.jan4)
      self.container38["pady"] = 20
      self.container38["pady"] = 10
      self.container38.pack()

      self.container39 = Frame(self.jan4)
      self.container39["pady"] = 20
      self.container39["pady"] = 10
      self.container39.pack()

      self.container40 = Frame(self.jan4)
      self.container40["pady"] = 20
      self.container40["pady"] = 10
      self.container40.pack()

      self.container41 = Frame(self.jan4)
      self.container41["pady"] = 20
      self.container41["pady"] = 10
      self.container41.pack()

      # Definindo os elementos
      self.l=Label(self.container30, text='Consultas')
      self.l["font"] = ("Quicksand", "15", "italic")
      self.l["fg"] = ("darkblue")
      self.l.pack()
      
      self.consulta42 = Button(self.container42, 
      text="Informação Atividades", font=self.fonte, width=20)
      self.consulta42["bg"] = ("darkblue")
      self.consulta42["fg"] = ("white")
      self.consulta42["command"] = self.exibir_consulta
      self.consulta42.pack()

      self.consulta31 = Button(self.container31, 
      text="Atividades Realizadas", font=self.fonte, width=20)
      self.consulta31["bg"] = ("darkblue")
      self.consulta31["fg"] = ("white")
      self.consulta31.pack()

      self.consulta32 = Button(self.container32, 
      text="Produtos Expostos", font=self.fonte, width=20)
      self.consulta32["bg"] = ("darkblue")
      self.consulta32["fg"] = ("white")
      self.consulta32.pack()

      self.consulta33 = Button(self.container33, 
      text="Associados Ubisoft LATAM", font=self.fonte, width=20)
      self.consulta33["bg"] = ("darkblue")
      self.consulta33["fg"] = ("white")
      self.consulta33.pack()

      self.consulta34 = Button(self.container34, 
      text="Cronograma Anfiteatro", font=self.fonte, width=20)
      self.consulta34["bg"] = ("darkblue")
      self.consulta34["fg"] = ("white")
      self.consulta34.pack()
      
      self.consulta35 = Button(self.container35, 
      text="Oradores", font=self.fonte, width=20)
      self.consulta35["bg"] = ("darkblue")
      self.consulta35["fg"] = ("white")
      self.consulta35.pack()

      self.consulta36 = Button(self.container36, 
      text="Numero Participantes", font=self.fonte, width=20)
      self.consulta36["bg"] = ("darkblue")
      self.consulta36["fg"] = ("white")
      self.consulta36.pack()
      
      self.consulta37 = Button(self.container37, 
      text="Atividades Participante", font=self.fonte, width=20)
      self.consulta37["bg"] = ("darkblue")
      self.consulta37["fg"] = ("white")
      self.consulta37.pack()

      self.consulta38 = Button(self.container38, 
      text="Número de itens Instituição", font=self.fonte, width=20)
      self.consulta38["bg"] = ("darkblue")
      self.consulta38["fg"] = ("white")
      self.consulta38.pack()

      self.consulta39 = Button(self.container39, 
      text="Empresas alto valor", font=self.fonte, width=20)
      self.consulta39["bg"] = ("darkblue")
      self.consulta39["fg"] = ("white")
      self.consulta39.pack()

      self.consulta40 = Button(self.container40, 
      text="Atividades por Assunto", font=self.fonte, width=20)
      self.consulta40["bg"] = ("darkblue")
      self.consulta40["fg"] = ("white")
      self.consulta40.pack()

      self.consulta41 = Button(self.container41, 
      text="Sair", font=self.fonte, width=20)
      self.consulta41["bg"] = ("darkblue")
      self.consulta41["fg"] = ("white")
      self.consulta41["command"] = self.fecha_jan4
      self.consulta41.pack()

    else:
      self.jan3.lift()
  
  def fecha_jan4(self):
    self.jan4.destroy()
    self.jan4 = None

  # Janela para exibir o resultado da consulta
  def exibir_consulta(self):
    global connection
    global cursor

    # Inicializando
    if self.jan5 is None:
      self.jan5=Tk()
      self.jan5.protocol("WM_DELETE_WINDOW", self.fecha_jan5)
      
      self.container43 = Frame(self.jan5)
      self.container43["pady"] = 50
      self.container43.pack()

      self.container44 = Frame(self.jan5)
      self.container44["padx"] = 150
      self.container44["pady"] = 10
      self.container44.pack()

      self.container45 = Frame(self.jan5)
      self.container45["padx"] = 20
      self.container45["pady"] = 10
      self.container45.pack()

      # Definindo elementos
      self.l=Label(self.container43, text='Informações das Atividades Cadastradas')
      self.l["font"] = ("Quicksand", "15", "italic")
      self.l["fg"] = ("darkblue")
      self.l.pack()
      
      self.consulta45 = Button(self.container45, 
      text="Sair", font=self.fonte, width=20)
      self.consulta45["fg"] = ("darkblue")
      self.consulta45["command"] = self.fecha_jan5
      self.consulta45.pack()

      # Realizando a primeira consulta
      table = "Atividade"
      columns = ["Titulo", "Tipo", "Descricao"]

      columns_content = ""
      for index, value in enumerate(columns):
          if (index < len(columns) - 1):
              columns_content += str(value) + ", "
          else:
              columns_content += str(value)
      
      query = "SELECT " + columns_content + " FROM " + table
      results = []

      try:
        cursor.execute(query)
        result = cursor.fetchall()

        for value in result:
          results.append(str(value))
        
        if (len(results) == 0):
          self.l=Label(self.container44, text= "Sem dados inseridos" )
          self.l["font"] = ("Quicksand", "15", "italic")
          self.l["bg"] = ("darkblue")
          self.l["fg"] = ("white")
          self.l.pack()

        else:
          for aux in result:
            self.consulta44 = Label(self.container44, 
            text= (aux) , font=self.fonte, width=70)
            self.consulta44["fg"] = ("darkblue")
            self.consulta44.pack()   

      except Exception as error:
        self.l=Label(self.container44, text= ("Erro no dados\n") )
        self.l["font"] = ("Quicksand", "15", "italic")
        self.l["bg"] = ("darkblue")
        self.l["fg"] = ("white")
        self.l.pack()

        self.l=Label(self.container44, text= str(error) )
        self.l["font"] = ("Quicksand", "15", "italic")
        self.l["fg"] = ("darkblue")
        self.l.pack()

      else:
        self.jan4.lift()
  
  def fecha_jan5(self):
    self.jan5.destroy()
    self.jan5 = None





