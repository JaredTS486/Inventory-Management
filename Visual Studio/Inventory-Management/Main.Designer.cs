namespace Travel_Management
{
    partial class Main
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;
        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }
        #region Windows Form Designer generated code
        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent() //Its easier to declare here an inilialize in the Main.
        {
            this.TestTextBox = new System.Windows.Forms.TextBox();
            this.ScanComm = new System.IO.Ports.SerialPort();
            this.OpenFile1 = new System.Windows.Forms.OpenFileDialog();
            this.label = DYMO.Label.Framework.Label.Open("Main.label");
            this.myDelegate = new AddDataDelegate(Set_InputTestData);

            this.SuspendLayout();
            //
            // ScanComm
            //
            this.ScanComm.PortName = "COM6"; //TODO Auto Find COM Ports or add Selection.
            this.ScanComm.BaudRate = 9600;
            this.ScanComm.Parity = System.IO.Ports.Parity.None;
            this.ScanComm.DataBits = 8;
            this.ScanComm.StopBits = System.IO.Ports.StopBits.One;
            this.ScanComm.Handshake = System.IO.Ports.Handshake.None;
            this.ScanComm.DataReceived += new System.IO.Ports.SerialDataReceivedEventHandler(DataReceivedHandler);
            this.ScanComm.Open();
            // 
            // TestTextBox
            // 
            this.TestTextBox.Location = new System.Drawing.Point(161, 86);
            this.TestTextBox.Name = "TestTextBox";
            this.TestTextBox.Size = new System.Drawing.Size(188, 20);
            this.TestTextBox.TabIndex = 0;
            // 
            // Main
            // 
            this.ClientSize = new System.Drawing.Size(492, 261);
            this.Controls.Add(this.TestTextBox);
            this.Name = "Main";
            this.Load += new System.EventHandler(this.Main_Load);
            this.ResumeLayout(false);
            this.PerformLayout();
        }
        #endregion
        private System.Windows.Forms.ContextMenuStrip contextMenuStrip1;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem1;
        private System.Windows.Forms.TextBox SerialData;
        private System.Windows.Forms.TextBox TestTextBox;
    }
}

