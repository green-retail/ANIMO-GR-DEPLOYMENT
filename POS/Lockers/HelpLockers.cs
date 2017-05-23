using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace Green_Retail.POS.Lockers
{
    public class HelpLockers
    {
        public ImageBrush BackgroundLocker(int s_size, bool s_gender, bool s_busy)
        {
            ImageBrush imgdt = new ImageBrush();
            switch (s_size)
            {
                case 0:
                    if (s_gender) //HOMBRE
                    {
                        if (s_busy) //OCUPADO
                        {
                            imgdt = new ImageBrush(new BitmapImage(new Uri("POS/Lockers/Resources/Icon_Locker_Hombre_01_OFF.png", UriKind.Relative)));
                        }
                        else      //NO OCUPADO
                        {
                            imgdt = new ImageBrush(new BitmapImage(new Uri("POS/Lockers/Resources/Icon_Locker_Hombre_01_ON.png", UriKind.Relative)));
                        }
                    }            //MUJER
                    else
                    {
                        if (s_busy)
                        {
                            imgdt = new ImageBrush(new BitmapImage(new Uri("POS/Lockers/Resources/Icon_Locker_Mujer_01_OFF.png", UriKind.Relative)));
                        }
                        else
                        {
                            imgdt = new ImageBrush(new BitmapImage(new Uri("POS/Lockers/Resources/Icon_Locker_Mujer_01_ON.png", UriKind.Relative)));
                        }
                    }
                    break;
                case 1:
                    if (s_gender)
                    {
                        if (s_busy)
                        {
                            imgdt = new ImageBrush(new BitmapImage(new Uri("POS/Lockers/Resources/Icon_Locker_Hombre_02_OFF.png", UriKind.Relative)));
                        }
                        else
                        {
                            imgdt = new ImageBrush(new BitmapImage(new Uri("POS/Lockers/Resources/Icon_Locker_Hombre_02_ON.png", UriKind.Relative)));
                        }
                    }
                    else
                    {
                        if (s_busy)
                        {
                            imgdt = new ImageBrush(new BitmapImage(new Uri("POS/Lockers/Resources/Icon_Locker_Mujer_02_OFF.png", UriKind.Relative)));
                        }
                        else
                        {
                            imgdt = new ImageBrush(new BitmapImage(new Uri("POS/Lockers/Resources/Icon_Locker_Mujer_02_ON.png", UriKind.Relative)));
                        }
                    }
                    break;
                case 2:
                    if (s_gender)
                    {
                        if (s_busy)
                        {
                            imgdt = new ImageBrush(new BitmapImage(new Uri("POS/Lockers/Resources/Icon_Locker_Hombre_03_OFF.png", UriKind.Relative)));
                        }
                        else
                        {
                            imgdt = new ImageBrush(new BitmapImage(new Uri("POS/Lockers/Resources/Icon_Locker_Hombre_03_ON.png", UriKind.Relative)));
                        }
                    }
                    else
                    {
                        if (s_busy)
                        {
                            imgdt = new ImageBrush(new BitmapImage(new Uri("POS/Lockers/Resources/Icon_Locker_Mujer_03_OFF.png", UriKind.Relative)));
                        }
                        else
                        {
                            imgdt = new ImageBrush(new BitmapImage(new Uri("POS/Lockers/Resources/Icon_Locker_Mujer_03_ON.png", UriKind.Relative)));
                        }
                    }
                    break;
            }

            return imgdt;
        }
    }

}
