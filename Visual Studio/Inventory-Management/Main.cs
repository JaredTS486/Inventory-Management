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
        public DATABASE dbs;
        public LABELS lbl;
        public delegate void AddDataDelegate(String myString);
        public AddDataDelegate myDelegate;
        public Main()
        {
            InitializeComponent();

        //    dbs.Connection();
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

        private void receivingCommentsLabel_Click(object sender, EventArgs e) { }
        private void receivingCommentsLabel_Click_1(object sender, EventArgs e) { }
        private void receivingDateReceivedLabel_Click(object sender, EventArgs e){ }
        private void receivingWeightLabel_Click(object sender, EventArgs e){ }
        private void receivingCategoryLabel_Click(object sender, EventArgs e) { }
        private void receivingClientLabel_Click(object sender, EventArgs e) { }
        private void harvestingCommentsLabel_Click(object sender, EventArgs e) { }
        private void harvestingCommentsLabel_Click_1(object sender, EventArgs e) { }
        private void harvestingWeightLabel_Click(object sender, EventArgs e) { }
        private void harvestingCategoryLabel_Click(object sender, EventArgs e) { }
        private void harvestingParentLabel_Click(object sender, EventArgs e) { }

        private void receivingPileCheckbox_CheckedChanged(object sender, EventArgs e)
        {
            if (receivingPileCheckbox.Checked) receivingClientTextbox.Enabled = false;
            if (!receivingPileCheckbox.Checked) receivingClientTextbox.Enabled = true;
        }

        private void receivingPanel_Paint(object sender, PaintEventArgs e)
        {

        }

        private void receivingCategory_TextChanged(object sender, EventArgs e)
        {

        }

        private void receivingWeight_ValueChanged(object sender, EventArgs e)
        {
            receivingCheckCanSubmit();
        }

        private void receivingDateReceived_ValueChanged(object sender, EventArgs e)
        {
            receivingCheckCanSubmit();
        }
        /*
        private void receivingGaylordSource_TextChanged(object sender, EventArgs e)
        {

        }
        */
        private void receivingComments_TextChanged(object sender, EventArgs e)
        {

        }

        private void receivingPileCheckbox_CheckedChanged_1(object sender, EventArgs e)
        {
            receivingCheckCanSubmit();
        }

        private void receivingSubmitButton_Click(object sender, EventArgs e)
        {
            string source = this.receivingClientTextbox.Text;
            string weight = this.receivingWeightNumericbox.Text;
            string type = this.receivingCategoryTextbox.Text;
            string comments = this.receivingCommentsTextbox.Text;
            string date = this.receivingDateReceivedDatebox.Text;
            Console.WriteLine(source);
            Console.WriteLine(weight);
            Console.WriteLine(type);
            Console.WriteLine(comments);
            Console.WriteLine(date);
            //dbs.ReceivingInsert(source, weight, type, comments, date);
        }

        private void receivingClientTextbox_TextChanged(object sender, EventArgs e)
        {
            receivingCheckCanSubmit();
        }

        private void receivingCheckCanSubmit()
        {
            bool receivingValidClientTextbox, receivingValidDateReceivedDatebox, receivingValidWeightNumericbox;
            if (receivingClientTextbox.Text == "Business or Client name (required or checkbox if none)" || receivingClientTextbox.Text == "")
                receivingValidClientTextbox = false;
            else
                receivingValidClientTextbox = true;
            if (receivingDateReceivedDatebox.Value == new System.DateTime(2014, 1, 1, 11, 41, 0, 0))
                receivingValidDateReceivedDatebox = false;
            else receivingValidDateReceivedDatebox = true;
            if (receivingWeightNumericbox.Value == 0)
                receivingValidWeightNumericbox = false;
            else receivingValidWeightNumericbox = true;

            if (receivingValidClientTextbox && receivingValidDateReceivedDatebox && receivingValidWeightNumericbox)
                receivingSubmitButton.Enabled = true;
            else receivingSubmitButton.Enabled = false;
        }

        private void harvestingParentTextbox_TextChanged(object sender, EventArgs e)
        {
            harvestingCheckCanSubmit();
        }

        private void harvestingPileCheckbox_CheckedChanged(object sender, EventArgs e)
        {
            harvestingCheckCanSubmit();
        }

        private void harvestingWeightNumericbox_ValueChanged(object sender, EventArgs e)
        {
            harvestingCheckCanSubmit();
        }

        private void harvestingLayoutPanel_Paint(object sender, PaintEventArgs e)
        {

        }

        private void harvestingSubmitButton_Click(object sender, EventArgs e)
        {
            string source = this.harvestingParentTextbox.Text;
            string weight = this.harvestingWeightNumericbox.Text;
            string type = this.harvestingCategoryTextbox.Text;
            string comments = this.harvestingCommentsTextbox.Text;
            Console.WriteLine(source);
            Console.WriteLine(weight);
            Console.WriteLine(type);
            Console.WriteLine(comments);
            //dbs.HarvestingInsert(source, weight, type, comments);
        }

        private void harvestingCheckCanSubmit()
        {
            bool harvestingValidParentTextbox, harvestingValidWeightNumericbox;
            if (harvestingParentTextbox.Text == "ID or check box on right for pile (required)" || harvestingParentTextbox.Text == "")
                harvestingValidParentTextbox = false;
            else harvestingValidParentTextbox = true;
            if (harvestingWeightNumericbox.Value == 0)
                harvestingValidWeightNumericbox = false;
            else harvestingValidWeightNumericbox = true;
            if (harvestingValidParentTextbox && harvestingValidWeightNumericbox)
                harvestingSubmitButton.Enabled = true;
            else harvestingSubmitButton.Enabled = false;
        }

        private void reuseCheckedListBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (reuseCheckedListBox.GetItemChecked(0))
            {
                reuseExistingIDTextbox.Enabled = false;
                reuseParentIDTextbox.Enabled = true;
                reuseSearchButton.Enabled = false;
            }
            if (reuseCheckedListBox.GetItemChecked(1))
            {
                reuseExistingIDTextbox.Enabled = true;
                reuseParentIDTextbox.Enabled = false;
                reuseSearchButton.Enabled = true;
            }
        }

        private void reuseLayoutPanel_Paint(object sender, PaintEventArgs e)
        {

        }

        private void reuseCheckCanSubmit()
        {
            bool reuseValidChecklist=false, reuseValidID=false, reuseValidWeight=false;
            if (reuseCheckedListBox.GetItemChecked(0))
            {
                reuseValidChecklist = true;
                if (reuseParentIDTextbox.Text == "")
                    reuseValidID = false;
                else reuseValidID = true;
                if (reuseWeightNumericbox.Value == 0)
                    reuseValidWeight = false;
                else reuseValidWeight = true;
            }
            else if (reuseCheckedListBox.GetItemChecked(1))
            {
                reuseValidChecklist = true;
                if (reuseExistingIDTextbox.Text == "")
                    reuseValidID = false;
                else reuseValidID = true;
                if (reuseWeightNumericbox.Value == 0)
                    reuseValidWeight = false;
                else reuseValidWeight = true;
            }
            else reuseValidChecklist = false;

            if (reuseValidChecklist && reuseValidID && reuseValidWeight)
                reuseSubmitButton.Enabled = true;
            else reuseSubmitButton.Enabled = false;
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
