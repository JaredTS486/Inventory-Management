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

namespace Travel_Management
{
    public partial class Main : Form
    {
        private OpenFileDialog OpenFile1;
        public DBI dbVars;
        public LabelStuff lblVars;
        private SerialPort ScanComm;
        public delegate void AddDataDelegate(String myString);
        public AddDataDelegate myDelegate;
        public Main()
        {
            InitializeComponent();
            dbVars.TestDB();
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

        private void harvestingTab_Click(object sender, EventArgs e)
        {

        }

    }
    public partial class DBI
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
        public bool TestDB()
        {
            string connectionString = "database=" + this.dbs + ";server=" + this.srv + ";uid=" + this.usr + ";pwd=" + this.pwd;
            using (conn = new MySqlConnection(connectionString))
            {
                try
                {
                    conn.Open();
                    return true;
                }
                catch (MySqlException ex)
                {
                    switch (ex.Number)
                    {
                        case 4060:
                            Console.WriteLine("INVALID DATABASE");
                            return false;
                        case 18456:
                            Console.WriteLine("LOGIN FAILED");
                            return false;
                        default:
                            Console.WriteLine("ERROR: " + ex);
                            return false;
                    }
                }
            }
        }
    }
    public partial class LabelStuff
    {
        private ILabel label;
        public LabelStuff(String LabelName) { label = DYMO.Label.Framework.Label.Open(LabelName); }
        public LabelStuff() { }
        private void SetBarcode(String BarcodeData) { label.SetObjectText("BARCODE", BarcodeData); }
        private void SetInfoData(String InfoData) { label.SetObjectText("INFOTXT", InfoData); }
        private String GetBarcode() { return label.GetObjectText("BARCODE"); }
        private String GetLabel() { return label.GetObjectText("INFOTXT"); }
        private void PrintLabel() { label.Print("DYMO LabelWriter 400"); }
    }
}
