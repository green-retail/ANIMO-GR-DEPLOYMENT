using GreenRetail.Store.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Green_Retail.POS.Lockers
{
    public class DataLocker
    {
        public DataTable q_Lockerenabled()
        {
            LockersGRRecords LockerRecord = new LockersGRRecords();
            return LockerRecord.Get_Lockers_Enabled();
        }
        public bool q_SetLocker(int id, DateTime begin, DateTime end, string customer, string name)
        {
            LockersGR Locker = new LockersGR();
            LockersGRRecords LockerRecord = new LockersGRRecords();

            Locker.id_Locker = id;
            Locker.date_begin = begin;
            Locker.date_end = end;
            Locker.customer = customer;
            Locker.Name = name;

            return LockerRecord.Set_Customer_Lockers(Locker);
        }

        public bool q_Set_ADD_Locker(int size, bool s_busy, int enabled, int id, int gender, string name)
        {
            LockersGR Locker = new LockersGR();
            LockersGRRecords LockerRecord = new LockersGRRecords();

            Locker.id_Locker = id;
            Locker.Size = size;
            Locker.Busy = s_busy;
            Locker.Enabled = Convert.ToBoolean(enabled);
            Locker.Gender = gender;
            Locker.Name = name;

            return LockerRecord.AddLockers(Locker);
        }
        public bool q_Set_EDIT_Locker(int size, bool s_busy, int enabled, int id, int gender, string name)
        {
            LockersGR Locker = new LockersGR();
            LockersGRRecords LockerRecord = new LockersGRRecords();

            Locker.id_Locker = id;
            Locker.Size = size;
            Locker.Busy = s_busy;
            Locker.Enabled = Convert.ToBoolean(enabled);
            Locker.Gender = gender;
            Locker.Name = name;

            return LockerRecord.UpdateLockers(Locker);
        }
        public bool q_Set_DEL_Locker(int id)
        {
            LockersGRRecords LockerRecord = new LockersGRRecords();
            return LockerRecord.DeleteLockers(id);
        }

        public bool q_Set_Status_Locker(int id)
        {
            LockersGRRecords LockerRecord = new LockersGRRecords();
            return LockerRecord.Set_Status_Locker(id);
        }
    }
}

