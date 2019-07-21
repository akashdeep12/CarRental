using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CarRental
{
    public class Rent
    {
        CarRentEntities1 dataload = new CarRentEntities1();
        NameTable  nametableobject = new NameTable();
        UserNameTable  Usertableobj = new UserNameTable();
        Cartable  tablecar = new Cartable();
        CustomerName  tablecust = new CustomerName();


        public int Car_id { get; private set; }

        public void InsertNameTable(string FullName, string Dob)
        {
            nametableobject.Fullname = FullName;
            nametableobject.Dob  = Dob;
            dataload.NameTables.Add(nametableobject);
            dataload.SaveChanges();
 }
        public void InsertUsertabel( string Username,string Password)
        {

            Usertableobj.Username = Username;
            Usertableobj.Password = Password;
            dataload.UserNameTables.Add(Usertableobj);
            dataload.SaveChanges();

        }
       
        public void caradd(string make, string model, string color, string year)
        {
            tablecar.Make = make;
            tablecar.Model = model;
            tablecar.Color  = color;
            tablecar.Year = year;
            dataload.Cartables.Add(tablecar);
            dataload.SaveChanges();
        }
        public void CarDelete(int Car_id)
        {

            using (CarRentEntities1 delcar= new CarRentEntities1())
            {
                Cartable  obj = delcar.Cartables .First(x => x.Car_id == Car_id);
                delcar.Cartables.Remove(obj);
                delcar.SaveChanges();
             }

        }
        public void updatecar(int Car_id, string make, string model, string color, string year)
        {
            using (var datacar = new CarRentEntities1())
            {
                var Carupdated = datacar.Cartables.SingleOrDefault(b => b.Car_id == Car_id);
                if (Carupdated != null)
                {
                    Carupdated.Make = make;
                    Carupdated.Model = model;
                    Carupdated.Color = color;
                    Carupdated.Year = year;
                    datacar.SaveChanges();

                }
            }
        }
        public void RentCar(string Name, int carid, string Dob)
        {
            tablecust.Name = Name;
            tablecust.Car_id  = carid;
            tablecust.Dob = Dob;
            dataload.CustomerNames.Add(tablecust);
            dataload.SaveChanges();
        }
        public void ReturnCar(int C_id)
        {

            using (CarRentEntities1 carretuen = new CarRentEntities1())
            {
                CustomerName cardelete = carretuen.CustomerNames.First(x => x.customer_id == C_id);
                carretuen.CustomerNames.Remove(cardelete);
                carretuen.SaveChanges();
            }

        }
    }
}