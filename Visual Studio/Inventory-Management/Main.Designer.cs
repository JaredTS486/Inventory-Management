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
            this.SuspendLayout();
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
            this.Load += new System.EventHandler(this.Main_Load_1);
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

