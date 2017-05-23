using Green_Retail.Control;
using Green_Retail.POS.FastTabs;
using Green_Retail.POS.Lockers.PageLocker;
using System;
using System.Collections.Generic;
using System.Data;
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

namespace Green_Retail.POS.Lockers
{
    /// <summary>
    /// Lógica de interacción para LockersPrincipal.xaml
    /// </summary>
    public partial class LockersPrincipal : Window
    {
        public List<string> locker_name = new List<string>();
        public List<int> Locker_state = new List<int>();
        public DataTable table;
        DataLocker cl = new DataLocker();

        int frameNo;

        Lockers1 clLocker1;

        private string mLockerNo;

        public string TEXTBOXNoCustomer
        {
            set { txtcust.Text = value; }
            get { return txtcust.Text; }
        }
        public string LockerNo
        {
            set { mLockerNo = value; }
            get { return mLockerNo; }
        }


        public LockersPrincipal()
        {
            InitializeComponent();
            hide();
            table = new DataTable();
            clLocker1 = new Lockers1();
   
            frameNo = 1;
            initialize();
           // BLockers1.IsEnabled = false;
            visible();
        }
        //private void BLockers1_Click(object sender, RoutedEventArgs e)
        //{
        //    initialize();
        //    BLockers1.IsEnabled = false;
        //    visible();
        //}

        private void bOK_Click(object sender, RoutedEventArgs e)
        {
            bool state;
            Locker_state = clLocker1.Selected();
            locker_name = clLocker1.SelectedName();
            if (Locker_state.Count > 0)
            {
                var listzip = Locker_state.Zip(locker_name, (a, b) => (a + " " + b));
                foreach (var val in listzip)
                {

                    int values = Convert.ToInt32(val.Substring(0, (val.IndexOf(" "))));
                    string name = val.Substring((val.IndexOf(" ") + 1), (val.Length - val.IndexOf(" ") - 1));
                    state = cl.q_SetLocker(values, DateTime.Now, DateTime.Now, txtcust.Text, name);
                    if (!state)
                    {
                        GRDialogError Var = new GRDialogError();
                        Var.Message = "Error a cargar el locker " + values + " del cliente " + txtcust.Text;
                        Var.ShowDialog();                    
                    }
                    else
                    {
                        CustomerExtendedManager.Instance.CustomerExtended.Locker_Asign = values.ToString();
                        LockerNo= values.ToString(); 
                        // MessageBox.Show("Se guardo satisfactoriamente el locker " + values + " del cliente " + txtcust.Text, "Aviso", MessageBoxButton.OK, MessageBoxImage.Information);
                    }
                }
              //  CustomerExtendedManager.Instance.SaveCustomerInfo();
            }
            else
            {
                GRDialogInformation Var = new GRDialogInformation();
                Var.Message = "No hay Locker Seleccionado para registrar ";
                Var.ShowDialog();
            }
            initialize();
        }
        private void initialize()
        {
            clLocker1 = new PageLocker.Lockers1();
            table = cl.q_Lockerenabled();
        //    frame.UpdateDefaultStyle();
            frame.UpdateLayout();
            frame.Navigate(clLocker1);
            clLocker1.CargaInicialLocker(table, frameNo);
        }
        private void refresh()
        {
            clLocker1 = new PageLocker.Lockers1();
            table = cl.q_Lockerenabled();
            frame.Navigate(clLocker1);
            clLocker1.CargaInicialLocker(table, frameNo);
         //   BLockers1.IsEnabled = true;
            //hide();
        }

        private void hide()
        {
            lblcustomer.Visibility = Visibility.Collapsed;
            bOK.Visibility = Visibility.Collapsed;
            txtcust.Visibility = Visibility.Collapsed;
            bRefresh.Visibility = Visibility.Collapsed;
        }
        private void visible()
        {
            lblcustomer.Visibility = Visibility.Visible;
            bOK.Visibility = Visibility.Visible;
            txtcust.Visibility = Visibility.Visible;
            bRefresh.Visibility = Visibility.Visible;
        }

        private void bRefresh_Click(object sender, RoutedEventArgs e)
        {
            refresh();
        }

        private void bExit_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = true;
            this.Close();
        }

        private void BAdmin_Click(object sender, RoutedEventArgs e)
        {
            Manager win2 = new Manager();
            win2.Show();
            this.Close();
        }



        private void bSiquiente_Click(object sender, RoutedEventArgs e)
        {
            if (frameNo<6)
            {
                frameNo++;
            }
            else
            {
                frameNo=1;
            }
            clLocker1 = new PageLocker.Lockers1();
            table = cl.q_Lockerenabled();
            frame.UpdateLayout();
            frame.Navigate(clLocker1);
            clLocker1.CargaInicialLocker(table, frameNo);
        }

        private void bAtras_Click(object sender, RoutedEventArgs e)
        {
            if (frameNo > 1)
            {
                frameNo--;
            }
            else
            {
                frameNo = 6;
            }
            clLocker1 = new PageLocker.Lockers1();
            table = cl.q_Lockerenabled();
            frame.UpdateLayout();
            frame.Navigate(clLocker1);
            clLocker1.CargaInicialLocker(table, frameNo);
        }
    }
}
