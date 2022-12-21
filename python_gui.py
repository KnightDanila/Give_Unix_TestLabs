import tkinter as tk
from tkinter import messagebox as mb
def btn_click():
    e=e1.get()
    a=int(e)*2
    mb.showinfo(title='Hhhhm',message=a)

root = tk.Tk()
root.title('Test program')
root.geometry('400x400')
canvas=tk.Canvas(root,height=400,width=400)
canvas.pack()


frame=tk.Frame(root,bg='blue')
frame.place(relheight=1,relwidth=1)
#tk.Grid.rowconfigure(frame, index=0, weight=1)
tk.Grid.columnconfigure(frame, index=0, weight=1)
tk.Grid.columnconfigure(frame, index=1, weight=1)

e1 = tk.Entry(frame)
e1.grid(row=0, columnspan = 2, sticky='we')

btn1=tk.Button(frame, text='+',bg='grey',command=btn_click)
btn1.grid(row=1,column=0, sticky = tk.W+tk.E)
btn2=tk.Button(frame, text='-',bg='grey',command=btn_click)
btn2.grid(row=1,column=1, sticky = tk.W+tk.E)

root.mainloop()