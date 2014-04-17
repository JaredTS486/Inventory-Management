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

namespace Travel_Management
{
    public partial class Main : Form
    {
        public String InputTestData;
        private SerialPort ScanComm;
        private OpenFileDialog OpenFile1;
        private ILabel label;
        private struct ParentObject{ };
        private struct ChildObject{ };
        private struct GrandChildObject{ };
        public delegate void AddDataDelegate(String myString);
        public AddDataDelegate myDelegate;
        public Main()
        {
            InitializeComponent();
        }
        public void Set_InputTestData(String indata)
        {

        }
        private void DataReceivedHandler(object sender, SerialDataReceivedEventArgs e){
            SerialPort sp = (SerialPort)sender;
            string indata = sp.ReadExisting();
            InputTestData = indata;
            
            Console.Write(indata);
        }
        private void SetLabel(String BarcodeData, String InfoData){
            label.SetObjectText("BARCODE", BarcodeData);
            label.SetObjectText("INFOTXT", InfoData);
        }
        private void GetLabel(){
            String BARCODE = label.GetObjectText("BARCODE");
            String INFOTXT = label.GetObjectText("INFOTXT");
            Console.WriteLine(BARCODE);
            Console.WriteLine(INFOTXT);
        }
        private void PrintLabel(){
            label.Print("DYMO LabelWriter 400");
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

        }
        //EXAMPLE FOR EVENT ARGUMENTS, THIS ONE IS FOR WHEN SOME ONE USES THE A KEY -- Jared
        public void Main_KeyDown(object sender, System.Windows.Forms.KeyEventArgs e)
        {
            if (e.KeyCode == System.Windows.Forms.Keys.A)
            {
                System.Console.WriteLine("Hello World");
            }
        }

        private void Main_Load_1(object sender, EventArgs e)
        {
            receivingPanel.Hide();
            reusePanel.Hide();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {

        }

        private void menuListbox_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (menuListbox.SelectedItem == "Receiving")
            {
                reusePanel.Hide();
                receivingPanel.Show();
            }
            if (menuListbox.SelectedItem == "Reuse")
            {
                receivingPanel.Hide();
                reusePanel.Show();
            }
            if (menuListbox.SelectedItem == "Office")
            {
                receivingPanel.Hide();
                reusePanel.Hide();
            }
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
            if (receivingPileCheckbox.Checked) receivingGaylordSource.Enabled = false;
            if (!receivingPileCheckbox.Checked) receivingGaylordSource.Enabled = true;
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
    }
}
