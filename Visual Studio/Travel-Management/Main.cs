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
using MetroCommLibrary;
using DYMO;

namespace Travel_Management
{
    public partial class Main : Form
    {
        public DYMO.Label.Framework.Label label;
        public IMetroComm ScanComm;
        public _IMetroCommEvents ScanEvents;
        private System.Windows.Forms.TextBox FileNameEdit;
        private System.Windows.Forms.OpenFileDialog openFileDialog1;
        private System.Windows.Forms.Button BrowseBtn;
        private System.Windows.Forms.Button PrintBtn;
        public Main()
        {
            InitializeComponent();
            var scanner = ScanComm
            var label = DYMO.Label.Framework.Label.Open(@"Test.label");
            label.SetObjectText("BARCODE", "DYMOn828 San Pablo AvenAlbany CA 94706");
            label.Print("DYMO LabelWriter 400");
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
