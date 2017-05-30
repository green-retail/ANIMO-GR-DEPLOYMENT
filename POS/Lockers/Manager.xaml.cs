using Green_Retail.Control;
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
using System.Windows.Shapes;

namespace Green_Retail.POS.Lockers
{
    /// <summary>
    /// Lógica de interacción para Manager.xaml
    /// </summary>
    public partial class Manager : Window
    {
        private List<string> validate = new List<string>();
        public List<int> Locker_state = new List<int>();
        public List<string> locker_name = new List<string>();
        public DataTable table;
        DataLocker cl = new DataLocker();
        Lockers1ADD clLocker1ADD = new PageLocker.Lockers1ADD();
        Lockers1DELETE clLocker1DEL = new PageLocker.Lockers1DELETE();
        Lockers1EDIT clLocker1EDIT = new PageLocker.Lockers1EDIT();
        Lockers1Status clLocker1Status = new PageLocker.Lockers1Status();
        int frameNo;
        int ButtonNo;
        int Case;
        public Manager()
        {
            InitializeComponent();
            table = new DataTable();
            hide();
            frameNo = 1;
            ButtonNo = 1;
            CondicionInicial();
        }

        private void CondicionInicial()
        {
            btoStatus.IsEnabled = false;
            btoADD.IsEnabled = true;
            btoEDIT.IsEnabled = true;
            btoDELETE.IsEnabled = true;
            ButtonNo = 1;
            initializeStatus();
            hide();
            Case = 4;
            btoSAVE.Visibility = Visibility.Visible;
        }

        private void btoADD_Click(object sender, RoutedEventArgs e)
        {
            btoStatus.IsEnabled = true;
            btoADD.IsEnabled = false;
            btoEDIT.IsEnabled = true;
            btoDELETE.IsEnabled = true;
            ButtonNo = 2;
            initializeADD();
            visible();
            Cargarcb();
            Case = 1;
        }

        private void btoDELETE_Click(object sender, RoutedEventArgs e)
        {
            btoStatus.IsEnabled = true;
            btoADD.IsEnabled = true;
            btoEDIT.IsEnabled = true;
            btoDELETE.IsEnabled = false;
            ButtonNo = 4;
            initializeDEL();
            hide();
            Case = 3;
            btoSAVE.Visibility = Visibility.Visible;
        }

        private void btoEDIT_Click(object sender, RoutedEventArgs e)
        {
            btoStatus.IsEnabled = true;
            btoADD.IsEnabled = true;
            btoEDIT.IsEnabled = false;
            btoDELETE.IsEnabled = true;
            ButtonNo = 3;
            initializeEDIT();
            visible();
            Cargarcb();
            Case = 2;
        }
        private void btoStatus_Click(object sender, RoutedEventArgs e)
        {
            btoStatus.IsEnabled = false;
            btoADD.IsEnabled = true;
            btoEDIT.IsEnabled = true;
            btoDELETE.IsEnabled = true;
            ButtonNo = 1;
            initializeStatus();
            hide();
            Case = 4;
            btoSAVE.Visibility = Visibility.Visible;
        }
        private void initializeADD()
        {
            clLocker1ADD = new PageLocker.Lockers1ADD();
            Managerlocker.InvalidateVisual();
            table = cl.q_Lockerenabled();
            Managerlocker.Navigate(clLocker1ADD);
            clLocker1ADD.CargaInicialLocker(table, frameNo);
        }
        private void initializeDEL()
        {
            clLocker1DEL = new PageLocker.Lockers1DELETE();
            Managerlocker.InvalidateVisual();
            table = cl.q_Lockerenabled();
            Managerlocker.Navigate(clLocker1DEL);
            clLocker1DEL.CargaInicialLocker(table, frameNo);
        }
        private void initializeEDIT()
        {
            clLocker1EDIT = new PageLocker.Lockers1EDIT();
            Managerlocker.InvalidateVisual();
            table = cl.q_Lockerenabled();
            Managerlocker.Navigate(clLocker1EDIT);
            clLocker1EDIT.CargaInicialLocker(table,frameNo);
        }
        private void initializeStatus()
        {
            clLocker1Status = new PageLocker.Lockers1Status();
            Managerlocker.InvalidateVisual();
            table = cl.q_Lockerenabled();
            Managerlocker.Navigate(clLocker1Status);
            clLocker1Status.CargaInicialLocker(table,frameNo);
        }

        private void Cargarcb()
        {
        }
        private void visible()
        {
            cbsize.Visibility = Visibility.Visible;
            cbstate.Visibility = Visibility.Visible;
            lblsize.Visibility = Visibility.Visible;
            lblstate.Visibility = Visibility.Visible;
            btoSAVE.Visibility = Visibility.Visible;
            cbgender.Visibility = Visibility.Visible;
            lblgender.Visibility = Visibility.Visible;
        }
        private void hide()
        {
            cbsize.Visibility = Visibility.Collapsed;
            cbstate.Visibility = Visibility.Collapsed;
            lblsize.Visibility = Visibility.Collapsed;
            lblstate.Visibility = Visibility.Collapsed;
            btoSAVE.Visibility = Visibility.Collapsed;
            cbgender.Visibility = Visibility.Collapsed;
            lblgender.Visibility = Visibility.Collapsed;
        }

        private void btoSAVE_Click(object sender, RoutedEventArgs e)
        {

            bool state = false;
            switch (Case)
            {
                case 1: //INSERTAR
                    Locker_state = clLocker1ADD.Selected();
                    locker_name = clLocker1ADD.SelectedName();
                    if (Locker_state.Count > 0)
                    {
                        var listzip = Locker_state.Zip(locker_name, (a, b) => (a + " " + b));
                        foreach (var val in listzip)
                        {

                            int id_locker = Convert.ToInt32(val.Substring(0, (val.IndexOf(" "))));
                            string name = val.Substring((val.IndexOf(" ") + 1), (val.Length - val.IndexOf(" ") - 1));
                            int size = Convert.ToInt16(cbsize.SelectedIndex);

                            // int enabled=0;
                            bool s_busy = false;
                            if (cbstate.SelectedIndex == 0)//0, significa activo
                            {
                                s_busy = false;
                            }
                            else
                            {
                                s_busy = true;
                            }

                            int gender = Convert.ToInt16(cbgender.SelectedIndex);

                            state = cl.q_Set_ADD_Locker(size, s_busy, 1, id_locker, gender, name);
                        }
                        if (!state)
                        {
                            GRDialogError Var = new GRDialogError();
                            Var.Message = "Error a cargar el locker ";
                            Var.ShowDialog();
                           // MessageBox.Show("Error a cargar el locker ", "Aviso", MessageBoxButton.OK, MessageBoxImage.Error);
                        }
                    }
                    else
                    {
                        GRDialogInformation Var = new GRDialogInformation();
                        Var.Message = "No hay Locker nuevo que Agregar ";
                        Var.ShowDialog();
                      //  MessageBox.Show("No hay Locker nuevo que Agregar ", "Aviso", MessageBoxButton.OK, MessageBoxImage.Information);
                    }
                    initializeADD();
                    break;

                case 2: //EDITAR

                    Locker_state = clLocker1EDIT.Selected();
                    locker_name = clLocker1EDIT.SelectedName();
                    if (Locker_state.Count > 0)
                    {
                        var listzip = Locker_state.Zip(locker_name, (a, b) => (a + " " + b));
                        foreach (var val in listzip)
                        {

                            int values = Convert.ToInt32(val.Substring(0, (val.IndexOf(" "))));
                            string name = val.Substring((val.IndexOf(" ") + 1), (val.Length - val.IndexOf(" ") - 1));
                            int gender = Convert.ToInt16(cbgender.SelectedIndex.ToString());
                            int size = Convert.ToInt16(cbsize.SelectedIndex);

                            bool s_busy = false;
                            if (cbstate.SelectedIndex == 0) //0, significa activo
                            {
                                s_busy = false;
                            }
                            else
                            {
                                s_busy = true;
                            }

                            state = cl.q_Set_EDIT_Locker(size, s_busy, 1, values, gender, name);
                            if (!state)
                            {
                                validate.Add(values.ToString());
                            }
                        }
                    }
                    else
                    {
                        GRDialogInformation Var = new GRDialogInformation();
                        Var.Message = "No hay Locker Seleccionado para editar ";
                        Var.ShowDialog();
                       // MessageBox.Show("No hay Locker Seleccionado para editar ", "Aviso", MessageBoxButton.OK, MessageBoxImage.Information);
                    }
                    initializeEDIT();
                    break;
                case 3:
                    Locker_state = clLocker1DEL.Selected();
                    if (Locker_state.Count > 0)
                    {
                        foreach (int values in Locker_state)
                        {
                            state = cl.q_Set_DEL_Locker(values);
                        }
                    }
                    else
                    {
                        GRDialogInformation Var = new GRDialogInformation();
                        Var.Message = "No hay Locker Seleccionado para eliminar ";
                        Var.ShowDialog();
                      //  MessageBox.Show("No hay Locker Seleccionado para eliminar ", "Aviso", MessageBoxButton.OK, MessageBoxImage.Information);
                    }
                    initializeDEL();
                    break;
                case 4:
                    Locker_state = clLocker1Status.Selected();
                    if (Locker_state.Count > 0)
                    {
                        foreach (int values in Locker_state)
                        {
                            state = cl.q_Set_Status_Locker(values);
                        }
                    }
                    else
                    {
                        GRDialogInformation Var = new GRDialogInformation();
                        Var.Message = "No hay Locker Seleccionado para actualizar estado ";
                        Var.ShowDialog();
                      //  MessageBox.Show("No hay Locker Seleccionado para eliminar ", "Aviso", MessageBoxButton.OK, MessageBoxImage.Information);
                    }
                    initializeStatus();
                    break;
            }

        }




        private void btouser_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void btSiguiente_Click(object sender, RoutedEventArgs e)
        {
            if (frameNo < 6)
            {
                frameNo++;
            }
            else
            {
                frameNo = 1;
            }
            switch (ButtonNo)
            {
                case 1:
                    initializeStatus();
                    break;
                case 2:
                    initializeADD();
                    break;
                case 3:
                    initializeEDIT();
                    break;
                case 4:
                    initializeDEL();
                    break;
            }
        }

        private void btAtras_Click(object sender, RoutedEventArgs e)
        {
            if (frameNo > 1)
            {
                frameNo--;
            }
            else
            {
                frameNo = 6;
            }
            switch (ButtonNo)
            {
                case 1:
                    initializeStatus();
                    break;
                case 2:
                    initializeADD();
                    break;
                case 3:
                    initializeEDIT();
                    break;
                case 4:
                    initializeDEL();
                    break;
            }
        }
    }
}
