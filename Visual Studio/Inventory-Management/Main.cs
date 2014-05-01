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
            dbs = new DATABASE();
            lbl = new LABELS();
            dbs.SetUser("shauni");
            dbs.SetPass("wDrTxy3hSUnRHLKY");
            dbs.SetServer("jpsharpe.net");
            dbs.SetDatabase("ewaste");
            dbs.Connection();
            
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


        //============================================================================================================
        //RECEIVING
        //============================================================================================================
        private void receivingComments_TextChanged(object sender, EventArgs e)
        {

        }

        private void resetReceiving()
        {
            this.receivingClientTextbox.Text = "";
            this.receivingWeightNumericbox.Value = 0;
            this.receivingCategoryTextbox.Text = "";
            this.receivingCommentsTextbox.Text = "";
            this.receivingDateReceivedDatebox.Value = new System.DateTime(2014, 1, 1, 11, 41, 0, 0);
            this.receivingPileCheckbox.Checked = false;
        }

        private void receivingSubmitButton_Click(object sender, EventArgs e)
        {
            string source = this.receivingClientTextbox.Text;
            decimal weight = this.receivingWeightNumericbox.Value;
            string type = this.receivingCategoryTextbox.Text;
            string comments = this.receivingCommentsTextbox.Text;
            string date = this.receivingDateReceivedDatebox.Value.ToString("yyyy-MM-dd hh:mm:ss");
            bool pile = this.receivingPileCheckbox.Checked;
            resetReceiving();
            // DATABASE INSERT / PRINT LABEL ========================================
            int ID = dbs.ReceivingInsert(source, weight, type, comments, date, pile);
            if (ID > 0){
                lbl.SetInfoData(ID, "Receiving", source, weight);
                lbl.PrintLabel();
            }
            else { 
                // ERROR HANDELING, LAST INSERT WAS NOT DONE 
            }
            //=======================================================================
        }

        private void receivingClientTextbox_TextChanged(object sender, EventArgs e){
            receivingCheckCanSubmit();
        }

        private void receivingWeightNumericbox_ValueChanged(object sender, EventArgs e){
            receivingCheckCanSubmit();
        }

        private void receivingDateReceivedDatebox_ValueChanged(object sender, EventArgs e){
            receivingCheckCanSubmit();
        }

        private void receivingCategoryTextbox_TextChanged(object sender, EventArgs e){
            receivingCheckCanSubmit();
        }

        private void receivingPileCheckbox_CheckedChanged(object sender, EventArgs e)
        {
            receivingCheckCanSubmit();

            if (this.receivingPileCheckbox.Checked)
            {
                this.receivingClientTextbox.Enabled = false;
                this.receivingClientTextbox.Text = "";
            }
            else this.receivingClientTextbox.Enabled = true;
        }

        private void receivingCheckCanSubmit()
        {
            bool receivingValidClientTextbox, receivingValidDateReceivedDatebox, receivingValidWeightNumericbox;
            if (!receivingPileCheckbox.Checked)
            {
                if (receivingClientTextbox.Text == "")
                    receivingValidClientTextbox = false;
                else receivingValidClientTextbox = true;
            }
            else receivingValidClientTextbox = true;

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

        //============================================================================================================
        //HARVESTING
        //============================================================================================================
        private void harvestingParentTextbox_TextChanged(object sender, EventArgs e)
        {
            harvestingCheckCanSubmit();
        }

        private void harvestingPileCheckbox_CheckedChanged(object sender, EventArgs e)
        {
            harvestingCheckCanSubmit();
 
            if (harvestingPileCheckbox.Checked)
                harvestingParentTextbox.Enabled = false;
            else harvestingParentTextbox.Enabled = true;
        }

        private void harvestingWeightNumericbox_ValueChanged(object sender, EventArgs e)
        {
            harvestingCheckCanSubmit();
        }

        private void resetHarvesting()
        {

        }

        private void harvestingSubmitButton_Click(object sender, EventArgs e)
        {
            resetHarvesting();
            // DATABASE INSERT / PRINT LABEL ========================================
            //int ID = dbs.HarvestingInsert();

            //=======================================================================
        }

        private void harvestingCheckCanSubmit()
        {
            bool harvestingValidParentTextbox, harvestingValidWeightNumericbox;
            if (harvestingParentTextbox.Text == ""  || harvestingPileCheckbox.Checked)
                harvestingValidParentTextbox = false;
            else harvestingValidParentTextbox = true;

            if (harvestingWeightNumericbox.Value == 0)
                harvestingValidWeightNumericbox = false;
            else harvestingValidWeightNumericbox = true;
            
            if (harvestingValidParentTextbox && harvestingValidWeightNumericbox)
                harvestingSubmitButton.Enabled = true;
            else harvestingSubmitButton.Enabled = false;
        }

        //============================================================================================================
        //REUSE
        //============================================================================================================
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

        private void resetReuse()
        {

        }

        private void reuseSubmitButton_Click(object sender, EventArgs e)
        {
            resetReuse();
            // DATABASE INSERT / PRINT LABEL ========================================
            //int ID = dbs.ReuseInsert();

            //=======================================================================
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
        public int ReceivingInsert(string source, decimal weight, string type, string comments, string date, bool pile)
        {
            if(Connection())
            {   //Contains query to insert data specifically into the receiving table using parameterization.
                this.conn.Open();
                MySqlCommand cmd = new MySqlCommand();
                cmd.Connection = this.conn;
                cmd.CommandText = @"INSERT INTO receiving(Source,Weight,Type,Comments,DateReceived,Pile)
                                    VALUES(?source,?weight,?type,?comments,?date,?pile);SELECT last_insert_id();";
                cmd.Parameters.Add("?source", MySqlDbType.VarChar).Value = source;
                cmd.Parameters.Add("?weight", MySqlDbType.VarChar).Value = weight;
                cmd.Parameters.Add("?type", MySqlDbType.VarChar).Value = type;
                cmd.Parameters.Add("?comments", MySqlDbType.VarChar).Value = comments;
                cmd.Parameters.Add("?date", MySqlDbType.VarChar).Value = date;
                cmd.Parameters.Add("?pile", MySqlDbType.VarChar).Value = pile;
                return Convert.ToInt32(cmd.ExecuteScalar());
            }
            return -1;
        }
        public bool HarvestInsert(string source, string weight, string type, string comments)
        {
            if (Connection())
            {   //Contains query to insert data specifically into the reuse table using parameterization.
                this.conn.Open();
                MySqlCommand cmd = new MySqlCommand();
                cmd.Connection = this.conn;
                cmd.CommandText = @"INSERT INTO reuse(Source,Weight,Type,Comments,DateReceived) 
                                    VALUES(?source,?weight,?type,?comments)";
                cmd.Parameters.Add("?source", MySqlDbType.VarChar).Value = "Source Test";
                cmd.Parameters.Add("?weight", MySqlDbType.VarChar).Value = "Weight Test";
                cmd.Parameters.Add("?type", MySqlDbType.VarChar).Value = "Type Test";
                cmd.Parameters.Add("?comments", MySqlDbType.VarChar).Value = "Comments Test";
                cmd.ExecuteNonQuery();
                return true;
            }
            return false;
        }
        public bool ReuseInsert(string source, string weight, string type, string comments)
        {
            if(Connection())
            {   //Contains query to insert data specifically into the reuse table using parameterization.
                this.conn.Open();
                MySqlCommand cmd = new MySqlCommand();
                cmd.Connection = this.conn;
                cmd.CommandText = @"INSERT INTO reuse(Source,Weight,Type,Comments,DateReceived) 
                                    VALUES(?source,?weight,?type,?comments)";
                cmd.Parameters.Add("?source", MySqlDbType.VarChar).Value = "Source Test";
                cmd.Parameters.Add("?weight", MySqlDbType.VarChar).Value = "Weight Test";
                cmd.Parameters.Add("?type", MySqlDbType.VarChar).Value = "Type Test";
                cmd.Parameters.Add("?comments", MySqlDbType.VarChar).Value = "Comments Test";
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
        public LABELS() { label = DYMO.Label.Framework.Label.Open("Main.label");  }
        public void SetBarcode(String BarcodeData) { label.SetObjectText("BARCODE", BarcodeData); }
        public void SetInfoData(int ID, string stype, string source, decimal weight) { 
            label.SetObjectText("ID", ID.ToString()+" ("+stype+")");
            label.SetObjectText("SOURCE", source);
            label.SetObjectText("WEIGHT", weight.ToString());
        }
        public String GetBarcode() { return label.GetObjectText("BARCODE"); }
        public String GetLabel() { return label.GetObjectText("INFOTXT"); }
        public void PrintLabel() { label.Print("DYMO LabelWriter 400"); }
    }
}
