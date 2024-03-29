﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using ок.Classes;
using ок.Entity;
using ок.Pages;

namespace ок
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            Manager.MainFrame = MainWindowFrame;

            Manager.MainFrame.Navigate(new Auth());


            WindowsIdentity currentUser = WindowsIdentity.GetCurrent();

            // Получаем имя пользователя
            string username = currentUser.Name;


        }
        private void MainWindowFrame_ContentRendered(object sender, EventArgs e)
        {

        }
    }
}