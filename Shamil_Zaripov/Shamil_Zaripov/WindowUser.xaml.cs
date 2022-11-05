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
using System.Windows.Shapes;

namespace Shamil_Zaripov
{
    /// <summary>
    /// Логика взаимодействия для WindowUser.xaml
    /// </summary>
    public partial class WindowUser : Window
    {
        private Users user;
        public WindowUser(Users us)
        {
            InitializeComponent();
            user = us;
            userName.Content = us.SurName;
        }

        private void ProductButton_Click(object sender, RoutedEventArgs e)
        {
            WindowProduct windowProduct = new WindowProduct();
            windowProduct.Show();
            this.Hide();
        }
    }
}
