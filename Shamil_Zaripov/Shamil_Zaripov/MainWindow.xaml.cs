using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Shamil_Zaripov
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            using(ParfumerEntities db = new ParfumerEntities())
            {
                var users = db.Users.ToList();
                var succesJoin = users.Where(f => f.Login == LoginBox.Text && f.Password == PasswordBox.Text).FirstOrDefault();
                if(succesJoin != null)
                {
                    WindowUser windowUser = new WindowUser(succesJoin);
                    MessageBox.Show("Успешно!");
                    windowUser.Show();
                    this.Hide();                                   
                }
                else
                {
                    MessageBox.Show("Неверный логин или пароль");
                }
            }
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Не успел");
        }
    }
}
