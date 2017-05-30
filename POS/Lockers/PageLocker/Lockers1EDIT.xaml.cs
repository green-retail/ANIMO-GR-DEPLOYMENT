using System;
using System.Collections.Generic;
using System.Data;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;

namespace Green_Retail.POS.Lockers.PageLocker
{
    /// <summary>
    /// Lógica de interacción para Lockers1.xaml
    /// </summary>
    public partial class Lockers1EDIT : Page
    {
        public List<int> locker_state = new List<int>();
        public List<string> locker_name = new List<string>();
        public ImageBrush SmallLockermON;
        public ImageBrush SmallLockermOFF;
        public ImageBrush MediumLockermON;
        public ImageBrush MediumLockermOFF;
        public bool s_busy;
        public bool s_enabled;
        public bool s_gender;
        public int s_size;

        DataTable dtt;
        private Button[] Locker = new Button[400];
        private TextBox[] txtloc = new TextBox[400];

        public Lockers1EDIT()
        {
            InitializeComponent();
            locker_state = new List<int>();
        }
        public void CargaInicialLocker(DataTable dt,int frame)
        {
            dtt = dt;
            int Column, Row, a;

            int i = 0;
            switch (frame)
            {
                case 1:
                    i = 0;
                    break;
                case 2:
                    i = 60;
                    break;
                case 3:
                    i = 120;
                    break;
                case 4:
                    i = 180;
                    break;
                case 5:
                    i = 240;
                    break;
                case 6:
                    i = 300;
                    break;
                default:
                    i = 0;
                    break;
            }

            for (Row = 2; Row < 14; Row++)
            {
                for (Column = 0; Column < 10; Column++)
                {
                    for (a = 0; a < 1; a++)
                    {
                        if ((Row % 2) != 0)
                        {
                            i = i + 1;

                            txtloc[i] = new TextBox();
                            txtloc[i].Name = "txtloc" + i;
                            txtloc[i].Text = "";
                            txtloc[i].Width = 60;
                            txtloc[i].Height = 20;
                            txtloc[i].SetValue(Grid.ColumnProperty, Column);
                            txtloc[i].SetValue(Grid.RowProperty, Row);
                            GridLocker.Children.Add(txtloc[i]);
                            txtloc[i].IsReadOnly = true;
                            txtloc[i].BorderThickness = new Thickness(0);
                            //txtloc[i].Background = Brushes.White;
                            var bc = new BrushConverter();
                            txtloc[i].Background = (Brush)bc.ConvertFrom("#FFE7E8EC");
                            txtloc[i].TextAlignment = TextAlignment.Center;
                            txtloc[i].Cursor = Cursors.Arrow;
                            txtloc[i].IsHitTestVisible = false;
                            txtloc[i].Loaded += txtEventoLoad;
                            txtloc[i].LostFocus += txtlostfocusEvent;
                            txtloc[i].Visibility = Visibility.Collapsed;

                            Locker[i] = new Button();
                            Locker[i].Name = "Locker" + i;
                            Locker[i].Background = Brushes.Silver;
                            Locker[i].Width = 35;
                            Locker[i].Height = 75;
                            Locker[i].Margin = new Thickness(1);
                            Locker[i].SetValue(Grid.ColumnProperty, Column);
                            Locker[i].SetValue(Grid.RowProperty, Row - 1);
                            GridLocker.Children.Add(Locker[i]);
                            Locker[i].Click += EventoClick;
                            Locker[i].IsEnabled = true;
                            Locker[i].Loaded += EventoLoad;
                            Locker[i].Visibility = Visibility.Collapsed;
                        }
                    }
                }
            }
        }

        private void EventoClick(object sender, RoutedEventArgs e)
        {
            Button objeto = sender as Button;
            DataRow[] exits = dtt.Select("id_Locker = " + Convert.ToInt16(objeto.Name.Replace("Locker", "")) + " and busy = 0");
            int i = Convert.ToInt16(objeto.Name.Replace("Locker", ""));
            if (objeto.Background == Brushes.Green)
            {

                s_size = Convert.ToInt16(@exits[0][3].ToString());
                s_gender = !Convert.ToBoolean(Convert.ToInt16(@exits[0][2].ToString()));
                s_busy = Convert.ToBoolean(Convert.ToInt16(@exits[0][4].ToString()));
                s_enabled = Convert.ToBoolean(@exits[0][1]);
                objeto.IsEnabled = true;

                HelpLockers Help = new HelpLockers();

                objeto.Background = Help.BackgroundLocker(s_size, s_gender, s_busy);

                locker_state.RemoveAll(item => item == Convert.ToInt32(objeto.Name.Replace("Locker", "")));
                locker_name.RemoveAll(item => item == txtloc[i].Text);
                txtloc[i].IsReadOnly = true;
                txtloc[i].IsHitTestVisible = false;
                txtloc[i].Cursor = Cursors.Arrow;
                txtloc[i].BorderThickness = new Thickness(0);
                txtloc[i].Text = exits[0][7].ToString();
            }
            else if (exits.Length > 0)
            {
                objeto.Background = Brushes.Green;
                txtloc[i].IsReadOnly = false;
                txtloc[i].IsHitTestVisible = true;
                txtloc[i].Cursor = Cursors.IBeam;
                txtloc[i].Visibility = Visibility.Visible;
                txtloc[i].BorderThickness = new Thickness(1);
                //txtloc[i].Text = "";
                locker_name.Add("" + i);
                locker_state.Add(Convert.ToInt32(objeto.Name.Replace("Locker", "")));
            }
            else
            {

            }
        }
        private void EventoLoad(object sender, RoutedEventArgs e)
        {
            ImageBrush imgdt;
            Button objeto = sender as Button;
            int a = Convert.ToInt16(objeto.Name.Replace("Locker", "").ToString());
            int f = 0;
            if (dtt.Rows.Count > 0)
            {
                while (a != Convert.ToInt16(dtt.Rows[f][0].ToString()) && f < (dtt.Rows.Count - 1))
                {
                    f++;
                }
                if (a == Convert.ToInt16(dtt.Rows[f][0].ToString()))
                {
                    s_enabled = Convert.ToBoolean(dtt.Rows[f][1]);
                    objeto.IsEnabled = true;

                    s_busy = Convert.ToBoolean(Convert.ToInt16(dtt.Rows[f][4].ToString()));
                    s_size = Convert.ToInt16(dtt.Rows[f][3].ToString());
                    s_gender = !Convert.ToBoolean(Convert.ToInt16(dtt.Rows[f][2].ToString()));

                    HelpLockers Help = new HelpLockers();

                    imgdt = Help.BackgroundLocker(s_size, s_gender, s_busy);

                    objeto.Background = Brushes.White;
                    objeto.Background = imgdt;
                    objeto.Visibility = Visibility.Visible;
                    //si esta ocupado
                    if (s_busy)
                    {
                        //objeto.IsEnabled = false;

                    }
                    //si esta habilitado
                    else if (!s_enabled)
                    {
                        //objeto.Visibility = Visibility.Collapsed;
                    }
                }

            }

        }
        private void txtEventoLoad(object sender, RoutedEventArgs e)
        {
            TextBox objeto = sender as TextBox;
            int a = Convert.ToInt16(objeto.Name.Replace("txtloc", "").ToString());
            int f = 0;
            if (dtt.Rows.Count > 0)
            {
                while (a != Convert.ToInt16(dtt.Rows[f][0].ToString()) && f < (dtt.Rows.Count - 1))
                {
                    f++;
                }
                if (a == Convert.ToInt16(dtt.Rows[f][0].ToString()))
                {
                    objeto.Text = dtt.Rows[f][7].ToString();
                    objeto.Visibility = Visibility.Visible;

                }

            }

        }
        private void txtlostfocusEvent(object sender, RoutedEventArgs e)
        {
            TextBox txt = sender as TextBox;
            locker_name.RemoveAt(locker_name.Count - 1);
            locker_name.Add(txt.Text);
        }
        public List<int> Selected()
        {
            return locker_state;
        }
        public List<string> SelectedName()
        {
            return locker_name;
        }
    }
}

