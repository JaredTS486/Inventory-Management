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
using DYMO.Label.Framework;
using System.IO.Ports;
using TerminalCommunications;

namespace Travel_Management
{
    public partial class Main : Form
    {
        public SerialPort ScanComm;
        public DYMO.Label.Framework.ILabel label;
        private System.Windows.Forms.TextBox FileNameEdit;
        private System.Windows.Forms.OpenFileDialog openFileDialog1;
        private System.Windows.Forms.Button BrowseBtn;
        private System.Windows.Forms.Button PrintBtn;
        public Main()
        {
            InitializeComponent();
        }
        public void PrintLabel(String NewData)
        {
            label.SetObjectText("BARCODE", NewData);
            label.Print("DYMO LabelWriter 400");
        }
        private void ScanSetup()
        {
            ScanComm.PortName = "COM1";
            ScanComm.BaudRate =  9600;
            ScanComm.Parity = Parity.None;
            ScanComm.DataBits = 8;
            ScanComm.StopBits = StopBits.One;
        }
        private void ScanCode(object sender, SerialDataReceivedEventHandler e)
        {
            this.ScannerText.Text = ScanComm.ReadLine();
        }
        //EXAMPLE FOR EVENT ARGUMENTS, THIS ONE IS FOR WHEN SOME ONE USES THE A KEY -- Jared
        public void Main_KeyDown(object sender, System.Windows.Forms.KeyEventArgs e)
        {
            if (e.KeyCode == System.Windows.Forms.Keys.A)
            {
                System.Console.WriteLine("Hello World");
                this.ScannerText.Text = " KeyPress";
            }
        }
        private void Print_Click(object sender, System.EventArgs e)
        {
            //DymoAddIn.StartPrintJob();
            //DymoAddIn.Print(1, false);
            //DymoAddIn.EndPrintJob();
        }
        private void Browse_Click(object sender, System.EventArgs e)
        {
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
    }
}
