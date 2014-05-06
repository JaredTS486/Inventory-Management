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
            dbs.receivingListBox_Query(ref this.receivingListBox);
            dbs.harvestListBox_Query(ref this.harvestListBox);
            dbs.reuseListBox_Query(ref this.reuseListBox);
            
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
            this.receivingJobID.Value = 0;
        }

        private void receivingSubmitButton_Click(object sender, EventArgs e)
        {
            string source = this.receivingClientTextbox.Text;
            decimal weight = this.receivingWeightNumericbox.Value;
            string type = this.receivingCategoryTextbox.Text;
            string comments = this.receivingCommentsTextbox.Text;
            string date = this.receivingDateReceivedDatebox.Value.ToString("yyyy-MM-dd hh:mm:ss");
            bool pile = this.receivingPileCheckbox.Checked;
            int jobID = Convert.ToInt32(this.receivingJobID.Value);
            // DATABASE INSERT / PRINT LABEL ========================================
            if (pile) { source = "Taken from Pile";}
            int ID = dbs.ReceivingInsert(source, weight, type, comments, date, pile, jobID);
            if (ID > 0){
                lbl.SetInfoData(ID, "Receiving", source, weight);
                lbl.SetBarcode("DEP:Receiving"+",ID:" + ID + ",Source:" + source + ",Weight:" + weight);
                lbl.PrintLabel();
            }
            else { 
                // ERROR HANDELING, LAST INSERT WAS NOT DONE 
            }
            resetReceiving();
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

        private void receivingPileIDTextbox_TextChanged(object sender, EventArgs e)
        {
            receivingCheckCanSubmit();
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

            if (harvestingPileCheckbox.Checked){
                harvestReceivingID.Enabled = false;
                harvestReceivingID.Value = 0;
            }
            else harvestReceivingID.Enabled = true;
        }

        private void harvestingWeightNumericbox_ValueChanged(object sender, EventArgs e)
        {
            harvestingCheckCanSubmit();
        }

        private void resetHarvesting()
        {
            harvestReceivingID.Value = 0;
            harvestingCommentsTextbox.Text = "";
            harvestingCategoryTextbox.Text = "";
            harvestingWeightNumericbox.Value = 0;
            harvestingPileCheckbox.Checked = false;
        }

        private void harvestingCheckCanSubmit()
        {
            bool harvestingValidParentTextbox, harvestingValidWeightNumericbox;
            if (!harvestingPileCheckbox.Checked)
            {
                if (harvestReceivingID.Value == 0) harvestingValidParentTextbox = false;
                else harvestingValidParentTextbox = true;
            }
            else harvestingValidParentTextbox = true;

            if (harvestingWeightNumericbox.Value == 0)
                harvestingValidWeightNumericbox = false;
            else harvestingValidWeightNumericbox = true;
            
            if (harvestingValidParentTextbox && harvestingValidWeightNumericbox)
                harvestingSubmitButton.Enabled = true;
            else harvestingSubmitButton.Enabled = false;
        }

        private void harvestingSubmitButton_Click(object sender, EventArgs e)
        {
            int receivingID = Convert.ToInt32(this.harvestReceivingID.Value);
            decimal weight = this.harvestingWeightNumericbox.Value;
            string category = this.harvestingCategoryTextbox.Text;
            string comments = this.harvestingCommentsTextbox.Text;
            bool pile = this.harvestingPileCheckbox.Checked;
            // DATABASE INSERT / PRINT LABEL ========================================
            int ID = dbs.HarvestInsert(receivingID, weight, category, comments, pile);
            if (ID > 0)
            {
                lbl.SetInfoData(ID, "Harvest", receivingID.ToString() + " (Receiving)", weight);
                lbl.SetBarcode("DEP:Harvest" + ",ID:" + ID + ",ReceivingID:" + receivingID + ",Weight:" + weight);
                lbl.PrintLabel();
            }
            else
            {
                // ERROR HANDELING, LAST INSERT WAS NOT DONE 
            }
            resetHarvesting();
        }
        //============================================================================================================
        //REUSE
        //============================================================================================================
        private void reuseCheckCanSubmit()
        {
            bool reuseValidID=false, reuseValidWeight=false, reuseValidPayment=false;

            if (reuseHarvestID.Value == 0) reuseValidID = false;
            else reuseValidID = true;

            if (reuseWeightNumericbox.Value == 0) reuseValidWeight = false;
            else reuseValidWeight = true;

            if (reuseSoldCheckbox.Checked)
            {
                if (reuseSaleAmountNumericbox.Value <= 0) reuseValidPayment = false;
                else reuseValidPayment = true;
            }
            else reuseValidPayment = true;

            if (reuseValidPayment && reuseValidID && reuseValidWeight)
                reuseSubmitButton.Enabled = true;
            else reuseSubmitButton.Enabled = false;
        }

        private void resetReuse()
        {
            reuseHarvestID.Value = 0;
            reuseCategoryTextbox.Text = "";
            reuseCommentsTextbox.Text = "";
            reuseSoldCheckbox.Checked = false;
            reuseListedCheckbox.Checked = false;
            reuseSaleAmountNumericbox.Value = 0;
            reuseWeightNumericbox.Value = 0;
        }

        private void reuseSubmitButton_Click(object sender, EventArgs e)
        {
            string status;
            decimal soldfor;
            int harvestID = Convert.ToInt32(reuseHarvestID.Value);
            decimal weight = this.reuseWeightNumericbox.Value;
            if (this.reuseListedCheckbox.Checked){
                status = "Listed";
            }
            else if (this.reuseSoldCheckbox.Checked) { 
                status = "Sold";
                soldfor = this.reuseSaleAmountNumericbox.Value;
            }
            else
                status = "";
                soldfor = 0;
            string category = this.reuseCategoryTextbox.Text;
            string description = this.reuseCommentsTextbox.Text;
            // DATABASE INSERT / PRINT LABEL ========================================
            int ID = dbs.ReuseInsert(harvestID, weight, description, category, status, soldfor);
            if (ID > 0)
            {
                lbl.SetInfoData(ID, "Reuse", harvestID.ToString() + " (Harvest)", weight);
                lbl.SetBarcode("DEP:Reuse" + ",ID:" + ID + ",HarvestID:" + harvestID + ",Weight:" + weight);
                lbl.PrintLabel();
            }
            else
            {
                // ERROR HANDELING, LAST INSERT WAS NOT DONE 
            }
            resetReuse();
            //=======================================================================
        }

        private void reuseParentIDTextbox_TextChanged(object sender, EventArgs e)
        {
            reuseCheckCanSubmit();
        }

        private void reuseExistingIDTextbox_TextChanged(object sender, EventArgs e)
        {
            reuseCheckCanSubmit();
        }

        private void reuseWeightNumericbox_ValueChanged(object sender, EventArgs e)
        {
            reuseCheckCanSubmit();
        }

        private void reuseCategoryTextbox_TextChanged(object sender, EventArgs e)
        {
            reuseCheckCanSubmit();
        }

        private void reuseListedCheckbox_CheckedChanged(object sender, EventArgs e)
        {
            reuseCheckCanSubmit();
        }

        private void reuseSoldCheckbox_CheckedChanged(object sender, EventArgs e)
        {
            if (reuseSoldCheckbox.Checked)
                reuseSaleAmountNumericbox.Enabled = true;
            else
            {
                reuseSaleAmountNumericbox.Enabled = false;
                reuseSaleAmountNumericbox.Value = 0;
            }
            reuseCheckCanSubmit();
        }

        private void reuseCommentsTextbox_TextChanged(object sender, EventArgs e)
        {
            reuseCheckCanSubmit();
        }

        private void reuseSaleAmountNumericbox_ValueChanged(object sender, EventArgs e)
        {
            reuseCheckCanSubmit();
        }

        private void receivingSearch_TextChanged(object sender, EventArgs e)
        {
            dbs.receivingListBox_Query(ref this.receivingListBox, this.receivingSearch.Text);
        }

        private void harvestSearch_TextChanged(object sender, EventArgs e)
        {
            dbs.harvestListBox_Query(ref this.harvestListBox, this.harvestSearch.Text);
        }

        private void reuseSearch_TextChanged(object sender, EventArgs e)
        {
            dbs.reuseListBox_Query(ref this.reuseListBox,this.reuseSearch.Text);
        }

        private void reuseListBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            string ID = this.reuseListBox.GetItemText(this.reuseListBox.SelectedItem);
            MySql.Data.MySqlClient.MySqlDataReader reader = dbs.reuseResult_Query(ID);
            while (reader.Read())
            {
                this.reuseWeightResult.Text = reader.GetString(3);
                this.reuseStatusResult.Text = reader.GetString(5);
                this.reuseCategoryResult.Text = reader.GetString(8);
                this.reuseSoldForResult.Text = reader.GetString(6);
                try { this.reuseListedOnResult.Text = reader.GetString(11); }
                catch { this.reuseListedOnResult.Text = "Not Listed"; }
                try { this.reuseSoldOnResult.Text = reader.GetString(10); }
                catch { 
                    this.reuseSoldOnResult.Text = "Not Sold";
                    this.reuseSoldForResult.Enabled = false;
                }
                try { this.reuseRejectedOnResult.Text = reader.GetString(12); }
                catch { this.reuseRejectedOnResult.Text = "Not Rejected"; }
                try { this.reuseDescriptionResult.Text = reader.GetString(4); }
                catch { this.reuseDescriptionResult.Text = ""; }
            }
        }

        private void reuseButtonReject_Click(object sender, EventArgs e)
        {
            string ID = this.reuseListBox.GetItemText(this.reuseListBox.SelectedItem);
            dbs.reuseStatus_Query(ID, "Rejected");
        }

        private void reuseButtonListed_Click(object sender, EventArgs e)
        {
            string ID = this.reuseListBox.GetItemText(this.reuseListBox.SelectedItem);
            dbs.reuseStatus_Query(ID, "Listed");
        }

        private void reuseButtonSold_Click(object sender, EventArgs e)
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
        public int ReceivingInsert(string source, decimal weight, string type, string comments, string date, bool pile, int jobID)
        {
            if(Connection())
            {   //Contains query to insert data specifically into the receiving table using parameterization.
                this.conn.Open();
                MySqlCommand cmd = new MySqlCommand();
                cmd.Connection = this.conn;
                cmd.CommandText = @"INSERT INTO receiving(Source,Weight,Type,Comments,DateReceived,Pile,JobID)
                                    VALUES(?source,?weight,?type,?comments,?date,?pile,?jobID);SELECT last_insert_id();";
                cmd.Parameters.Add("?source", MySqlDbType.VarChar).Value = source;
                cmd.Parameters.Add("?weight", MySqlDbType.VarChar).Value = weight;
                cmd.Parameters.Add("?type", MySqlDbType.VarChar).Value = type;
                cmd.Parameters.Add("?comments", MySqlDbType.VarChar).Value = comments;
                cmd.Parameters.Add("?date", MySqlDbType.VarChar).Value = date;
                cmd.Parameters.Add("?pile", MySqlDbType.VarChar).Value = pile;
                cmd.Parameters.Add("?jobID", MySqlDbType.VarChar).Value = jobID;
                return Convert.ToInt32(cmd.ExecuteScalar());
            }
            return -1;
        }
        public int HarvestInsert(int receivingID, decimal weight, string category, string comments, bool pile)
        {
            if (Connection())
            {   //Contains query to insert data specifically into the reuse table using parameterization.
                this.conn.Open();
                MySqlCommand cmd = new MySqlCommand();
                cmd.Connection = this.conn;
                cmd.CommandText = @"INSERT INTO harvest(ReceivingID,Weight,Category,Comments,Pile) 
                                    VALUES(?receivingID,?weight,?category,?comments,?pile);SELECT last_insert_id();";
                cmd.Parameters.Add("?receivingID", MySqlDbType.VarChar).Value = receivingID;
                cmd.Parameters.Add("?weight", MySqlDbType.VarChar).Value = weight;
                cmd.Parameters.Add("?category", MySqlDbType.VarChar).Value = category;
                cmd.Parameters.Add("?comments", MySqlDbType.VarChar).Value = comments;
                cmd.Parameters.Add("?pile", MySqlDbType.VarChar).Value = pile;
                return Convert.ToInt32(cmd.ExecuteScalar());
            }
            return -1;
        }
        public int ReuseInsert(int harvestID, decimal weight, string description, string category, string status, decimal soldfor)
        {
            if(Connection())
            {   //Contains query to insert data specifically into the reuse table using parameterization.
                this.conn.Open();
                MySqlCommand cmd = new MySqlCommand();
                cmd.Connection = this.conn;
                cmd.CommandText = @"INSERT INTO reuse(HarvestID,Weight,Description,Category,Status,SoldFor) 
                                    VALUES(?harvestID,?weight,?description,?category,?status,?soldfor);SELECT last_insert_id();";
                cmd.Parameters.Add("?harvestID", MySqlDbType.VarChar).Value = harvestID;
                cmd.Parameters.Add("?weight", MySqlDbType.VarChar).Value = weight;
                cmd.Parameters.Add("?description", MySqlDbType.VarChar).Value = description;
                cmd.Parameters.Add("?category", MySqlDbType.VarChar).Value = category;
                cmd.Parameters.Add("?status", MySqlDbType.VarChar).Value = status;
                cmd.Parameters.Add("?soldfor", MySqlDbType.VarChar).Value = soldfor;
                return Convert.ToInt32(cmd.ExecuteScalar());
            }
            return -1;
        }
        public int receivingListBox_Query(ref ListBox listbox, string search = "")
        {
            if (Connection())
            {
                listbox.Items.Clear();
                this.conn.Open();
                MySqlCommand cmd = new MySqlCommand();
                cmd.Connection = this.conn;
                if (search == "")
                {
                    cmd.CommandText = @"SELECT ReceivingID from receiving;";
                }
                else
                {
                    cmd.CommandText = @"SELECT ReceivingID from receiving WHERE ReceivingID LIKE ?search;";
                    cmd.Parameters.Add("?search", MySqlDbType.VarChar).Value = search;
                }
                MySql.Data.MySqlClient.MySqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read()){
                    listbox.Items.Add(reader[0]);
                }
                return 1;
            }
            return -1;
        }
        public int harvestListBox_Query(ref ListBox listbox, string search = "")
        {
            if (Connection())
            {
                listbox.Items.Clear();
                this.conn.Open();
                MySqlCommand cmd = new MySqlCommand();
                cmd.Connection = this.conn;
                if (search == "")
                {
                    cmd.CommandText = @"SELECT HarvestID from harvest;";
                }
                else
                {
                    cmd.CommandText = @"SELECT HarvestID from harvest WHERE HarvestID LIKE ?search;";
                    cmd.Parameters.Add("?search", MySqlDbType.VarChar).Value = search;
                }
                MySql.Data.MySqlClient.MySqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read()){
                    listbox.Items.Add(reader[0]);
                }
                return 1;
            }
            return -1;
        }
        public int reuseListBox_Query(ref ListBox listbox, string search = "")
        {
            if (Connection())
            {
                listbox.Items.Clear();
                this.conn.Open();
                MySqlCommand cmd = new MySqlCommand();
                cmd.Connection = this.conn;
                if (search == "") { 
                    cmd.CommandText = @"SELECT ReuseID from reuse;";
                }
                else {
                    cmd.CommandText = @"SELECT ReuseID from reuse WHERE ReuseID LIKE ?search;";
                    cmd.Parameters.Add("?search", MySqlDbType.VarChar).Value = search;
                }
                MySql.Data.MySqlClient.MySqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read()){
                    listbox.Items.Add(reader[0]);
                }
                return 1;
            }
            return -1;
        }
        public MySql.Data.MySqlClient.MySqlDataReader reuseResult_Query(string ID)
        {
            if (Connection())
            {
                this.conn.Open();
                MySqlCommand cmd = new MySqlCommand();
                cmd.Connection = this.conn;
                cmd.CommandText = @"SELECT * FROM reuse WHERE ReuseID = ?ID;";
                cmd.Parameters.Add("?ID", MySqlDbType.VarChar).Value = ID;
                MySql.Data.MySqlClient.MySqlDataReader reader = cmd.ExecuteReader();
                return reader;
            }
            return null;
        }
        public int reuseStatus_Query(string id, string status, decimal soldfor = -1)
        {
            if (Connection())
            {
                this.conn.Open();
                string statusDate = "";
                MySqlCommand cmd = new MySqlCommand();
                cmd.Connection = this.conn;
                switch(status){
                    case "Listed": statusDate = "ListedDate";
                        break;
                    case "Sold": statusDate = "SoldDate";
                        break;
                    case "Rejected": statusDate = "RejectedDate";
                        break;
                }
                if (statusDate == "") return -1;
                if (status == "Sold" && soldfor > 0)
                {
                    cmd.CommandText = @"UPDATE reuse SET Status = ?status, SET SoldDate = CURRENT_TIMESTAMP, SET SoldFor = ?soldfor WHERE ReuseID = ?id;";
                    cmd.Parameters.Add("?status", MySqlDbType.VarChar).Value = status;
                    cmd.Parameters.Add("?statusDate", MySqlDbType.VarChar).Value = statusDate;
                    cmd.Parameters.Add("?soldfor", MySqlDbType.VarChar).Value = soldfor;
                    cmd.Parameters.Add("?id", MySqlDbType.VarChar).Value = id;
                    return Convert.ToInt32(cmd.ExecuteScalar());
                }
                else if (status == "Rejected")
                {
                    cmd.CommandText = @"UPDATE reuse SET Status = ?status, RejectedDate = NOW() WHERE ReuseID = ?id;" ;
                    cmd.Parameters.Add("?status", MySqlDbType.VarChar).Value = status;
                    cmd.Parameters.Add("?statusDate", MySqlDbType.VarChar).Value = statusDate;
                    cmd.Parameters.Add("?id", MySqlDbType.VarChar).Value = id;
                    return Convert.ToInt32(cmd.ExecuteScalar());
                }
                else if (status == "Listed")
                {
                    cmd.CommandText = @"UPDATE reuse SET Status = ?status, ListedDate = NOW() WHERE ReuseID = ?id;";
                    cmd.Parameters.Add("?status", MySqlDbType.VarChar).Value = status;
                    cmd.Parameters.Add("?statusDate", MySqlDbType.VarChar).Value = statusDate;
                    cmd.Parameters.Add("?id", MySqlDbType.VarChar).Value = id;
                    return Convert.ToInt32(cmd.ExecuteScalar());
                }
            }
            return -1;
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
