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
        private void InitializeComponent()
        {
            this.FileNameEdit = new System.Windows.Forms.TextBox();
            this.BrowseBtn = new System.Windows.Forms.Button();
            this.PrintBtn = new System.Windows.Forms.Button();
            this.openFileDialog1 = new System.Windows.Forms.OpenFileDialog();
            this.ScannerText = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // FileNameEdit
            // 
            this.FileNameEdit.Location = new System.Drawing.Point(16, 32);
            this.FileNameEdit.Name = "FileNameEdit";
            this.FileNameEdit.ReadOnly = true;
            this.FileNameEdit.Size = new System.Drawing.Size(424, 20);
            this.FileNameEdit.TabIndex = 1;
            // 
            // BrowseBtn
            // 
            this.BrowseBtn.Location = new System.Drawing.Point(448, 32);
            this.BrowseBtn.Name = "BrowseBtn";
            this.BrowseBtn.Size = new System.Drawing.Size(75, 23);
            this.BrowseBtn.TabIndex = 2;
            this.BrowseBtn.Text = "Browse...";
            this.BrowseBtn.Click += new System.EventHandler(this.Browse_Click);
            // 
            // PrintBtn
            // 
            this.PrintBtn.Location = new System.Drawing.Point(448, 58);
            this.PrintBtn.Name = "PrintBtn";
            this.PrintBtn.Size = new System.Drawing.Size(75, 23);
            this.PrintBtn.TabIndex = 4;
            this.PrintBtn.Text = "Print Label";
            this.PrintBtn.Click += new System.EventHandler(this.Print_Click);
            // 
            // openFileDialog1
            // 
            this.openFileDialog1.DefaultExt = "label";
            this.openFileDialog1.Filter = "DYMO Label File (*.label)|*.label|All files (*.*)|*.*";
            this.openFileDialog1.Title = "Open DYMO Label File";
            // 
            // ScannerText
            // 
            this.ScannerText.Location = new System.Drawing.Point(16, 114);
            this.ScannerText.Name = "ScannerText";
            this.ScannerText.Size = new System.Drawing.Size(507, 20);
            this.ScannerText.TabIndex = 5;
            // 
            // Main
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(588, 357);
            this.Controls.Add(this.ScannerText);
            this.Controls.Add(this.PrintBtn);
            this.Controls.Add(this.FileNameEdit);
            this.Controls.Add(this.BrowseBtn);
            this.Name = "Main";
            this.Text = "Inventory Management";
            this.Load += new System.EventHandler(this.Main_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox ScannerText;
    }
}

