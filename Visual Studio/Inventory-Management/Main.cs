using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;
using System.IO.Ports;
using DYMO.Label.Framework;
using MySql.Data.MySqlClient;

namespace Inventory_Management
{
    public partial class Main : Form
    {
        private OpenFileDialog OpenFile1;
        public DATABASE dbs;
        public LABELS lbl;
        private SerialPort ScanComm;
        public delegate void AddDataDelegate(String myString);
        public AddDataDelegate myDelegate;
        public Main()
        {
            InitializeComponent();
        }
        public void AddDataMethod(String myString)
        {
            //Change form values here
        }
        public void DataReceivedHandler(object sender, SerialDataReceivedEventArgs e)
        {
            SerialPort sp = (SerialPort)sender;
            string indata = sp.ReadExisting();
            Console.Write(indata);
        }
        public void Set_InputTestData(String indata)
        {

        }
        private void Browse_Click(object sender, System.EventArgs e){
            //string str = FileNameEdit.Text;
            //int i = str.LastIndexOf("\\");
            //str = str.Substring(0, i);
            //openFileDialog1.InitialDirectory = str;
            //if (openFileDialog1.ShowDialog() == DialogResult.OK){
            //    if (DymoAddIn.Open(openFileDialog1.FileName)){
            //        FileNameEdit.Text = openFileDialog1.FileName;
            //        if (!DymoAddIn.Open("Test.label")) 
            //            Console.WriteLine("Failed to open label");
            //    }
            //}
        }
        private void Main_Load(object sender, EventArgs e)
        {
            this.myDelegate = new AddDataDelegate(AddDataMethod);
        }
        private void Main_Load_1(object sender, EventArgs e)
        {

        }
        private void label1_Click(object sender, EventArgs e)
        {

        }
        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void boxParentCheckbox_CheckedChanged(object sender, EventArgs e)
        {
          
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void boxSource_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void receivingPileCheckbox_CheckedChanged(object sender, EventArgs e)
        {
            if (receivingPileCheckbox.Checked) receivingClientTextbox.Enabled = false;
            if (!receivingPileCheckbox.Checked) receivingClientTextbox.Enabled = true;
        }

        private void receivingPanel_Paint(object sender, PaintEventArgs e)
        {

        }

        private void receivingCommentsLabel_Click(object sender, EventArgs e)
        {

        }

        private void reusePanel_Paint(object sender, PaintEventArgs e)
        {

        }

        private void boxInputSubmitButton_Click(object sender, EventArgs e)
        {

        }

        private void receivingPanel_Paint_1(object sender, PaintEventArgs e)
        {

        }

        private void boxInputSubmitButton_Click_1(object sender, EventArgs e)
        {

        }

        private void receivingDateReceivedLabel_Click(object sender, EventArgs e)
        {

        }

        private void receivingWeightLabel_Click(object sender, EventArgs e)
        {

        }

        private void receivingCategoryLabel_Click(object sender, EventArgs e)
        {

        }

        private void receivingClientLabel_Click(object sender, EventArgs e)
        {

        }

        private void receivingCategory_TextChanged(object sender, EventArgs e)
        {

        }

        private void receivingWeight_ValueChanged(object sender, EventArgs e)
        {

        }

        private void receivingDateReceived_ValueChanged(object sender, EventArgs e)
        {

        }

        private void receivingGaylordSource_TextChanged(object sender, EventArgs e)
        {

        }

        private void receivingComments_TextChanged(object sender, EventArgs e)
        {

        }

        private void receivingCommentsLabel_Click_1(object sender, EventArgs e)
        {

        }

        private void receivingPileCheckbox_CheckedChanged_1(object sender, EventArgs e)
        {

        }
    }
    public partial class DATABASE
    {
        private String usr;
        private String pwd;
        private String srv;
        private String dbs;
        private MySqlConnection conn;
        public void SetPass(String P) { this.pwd = P; }
        public void SetUser(String U) { this.usr = U; }
        public void SetServer(String S) { this.srv = S; }
        public void SetDatabase(String D) { this.dbs = D; }
        public String GetUser() { return this.usr; }
        public String GetPass() { return this.pwd; }
        public String GetServer() { return this.srv; }
        public String GetDatabase() { return this.dbs; }
        public bool Connection()
        {
            string connectionString = "database=" + this.dbs + ";server=" + this.srv + ";uid=" + this.usr + ";pwd=" + this.pwd;
            using (conn = new MySqlConnection(connectionString)){
                try{
                    conn.Open();
                    return true;
                }
                catch (MySqlException ex){
                    Console.WriteLine("ERROR IN SQL CONNECTION: " + ex);
                    return false;
                }
            }
        }
        public bool ReceivingInsert(string source, string weight, string type, string comments, string date)
        {
            if(Connection())
            {   //Contains query to insert data specifically into the receiving table using parameterization.
                this.conn.Open();
                MySqlCommand cmd = new MySqlCommand();
                cmd.Connection = this.conn;
                cmd.CommandText = @"INSERT INTO receiving(Source,Weight,Type,Comments,DateReceived) 
                                    VALUES(?source,?weight,?type,?comments,?date)";
                cmd.Parameters.Add("?source", MySqlDbType.VarChar).Value = "Source Test";
                cmd.Parameters.Add("?weight", MySqlDbType.VarChar).Value = "Weight Test";
                cmd.Parameters.Add("?type", MySqlDbType.VarChar).Value = "Type Test";
                cmd.Parameters.Add("?comments", MySqlDbType.VarChar).Value = "Comments Test";
                cmd.Parameters.Add("?date", MySqlDbType.VarChar).Value = "Date Test";
                cmd.ExecuteNonQuery();
                return true;
            }
            return false;
        }
        public bool ReuseInsert(string source, string weight, string type, string comments, string date)
        {
            if(Connection())
            {   //Contains query to insert data specifically into the reuse table using parameterization.
                this.conn.Open();
                MySqlCommand cmd = new MySqlCommand();
                cmd.Connection = this.conn;
                cmd.CommandText = @"INSERT INTO reuse(Source,Weight,Type,Comments,DateReceived) 
                                    VALUES(?source,?weight,?type,?comments,?date)";
                cmd.Parameters.Add("?source", MySqlDbType.VarChar).Value = "Source Test";
                cmd.Parameters.Add("?weight", MySqlDbType.VarChar).Value = "Weight Test";
                cmd.Parameters.Add("?type", MySqlDbType.VarChar).Value = "Type Test";
                cmd.Parameters.Add("?comments", MySqlDbType.VarChar).Value = "Comments Test";
                cmd.Parameters.Add("?date", MySqlDbType.VarChar).Value = "Date Test";
                cmd.ExecuteNonQuery();
                return true;
            }
            return false;
        }
    }
    public partial class LABELS
    {
        private ILabel label;
        public LABELS(String LabelName) { label = DYMO.Label.Framework.Label.Open(LabelName); }
        public LABELS() { }
        private void SetBarcode(String BarcodeData) { label.SetObjectText("BARCODE", BarcodeData); }
        private void SetInfoData(String InfoData) { label.SetObjectText("INFOTXT", InfoData); }
        private String GetBarcode() { return label.GetObjectText("BARCODE"); }
        private String GetLabel() { return label.GetObjectText("INFOTXT"); }
        private void PrintLabel() { label.Print("DYMO LabelWriter 400"); }
    }
}
