namespace Inventory_Management
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
            this.components = new System.ComponentModel.Container();
            this.ScanComm = new System.IO.Ports.SerialPort(this.components);
            this.OpenFile1 = new System.Windows.Forms.OpenFileDialog();
            this.recievingSubmitButton = new System.Windows.Forms.Button();
            this.receivingComments = new System.Windows.Forms.TextBox();
            this.receivingCommentsLabel = new System.Windows.Forms.Label();
            this.receivingCategory = new System.Windows.Forms.TextBox();
            this.receivingCategoryLabel = new System.Windows.Forms.Label();
            this.receivingWeight = new System.Windows.Forms.NumericUpDown();
            this.receivingWeightLabel = new System.Windows.Forms.Label();
            this.receivingDateReceived = new System.Windows.Forms.DateTimePicker();
            this.receivingDateReceivedLabel = new System.Windows.Forms.Label();
            this.receivingPileCheckbox = new System.Windows.Forms.CheckBox();
            this.receivingGaylordSource = new System.Windows.Forms.TextBox();
            this.receivingClientLabel = new System.Windows.Forms.Label();
            this.receivingPanel = new System.Windows.Forms.FlowLayoutPanel();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            ((System.ComponentModel.ISupportInitialize)(this.receivingWeight)).BeginInit();
            this.receivingPanel.SuspendLayout();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.SuspendLayout();
            // 
            // ScanComm
            // 
            this.ScanComm.DataReceived += new System.IO.Ports.SerialDataReceivedEventHandler(this.DataReceivedHandler);
            // 
            // recievingSubmitButton
            // 
            this.recievingSubmitButton.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.recievingSubmitButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.recievingSubmitButton.Location = new System.Drawing.Point(3, 351);
            this.recievingSubmitButton.Name = "recievingSubmitButton";
            this.recievingSubmitButton.Size = new System.Drawing.Size(114, 51);
            this.recievingSubmitButton.TabIndex = 12;
            this.recievingSubmitButton.Text = "Submit";
            this.recievingSubmitButton.UseVisualStyleBackColor = true;
            this.recievingSubmitButton.Click += new System.EventHandler(this.boxInputSubmitButton_Click_1);
            // 
            // receivingComments
            // 
            this.receivingComments.Font = new System.Drawing.Font("Ubuntu", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingComments.Location = new System.Drawing.Point(148, 143);
            this.receivingComments.Multiline = true;
            this.receivingComments.Name = "receivingComments";
            this.receivingComments.Size = new System.Drawing.Size(420, 202);
            this.receivingComments.TabIndex = 11;
            this.receivingComments.TextChanged += new System.EventHandler(this.receivingComments_TextChanged);
            // 
            // receivingCommentsLabel
            // 
            this.receivingCommentsLabel.Font = new System.Drawing.Font("Ubuntu", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingCommentsLabel.Location = new System.Drawing.Point(3, 140);
            this.receivingCommentsLabel.Name = "receivingCommentsLabel";
            this.receivingCommentsLabel.Size = new System.Drawing.Size(139, 33);
            this.receivingCommentsLabel.TabIndex = 9;
            this.receivingCommentsLabel.Text = "Comments";
            this.receivingCommentsLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.receivingCommentsLabel.Click += new System.EventHandler(this.receivingCommentsLabel_Click_1);
            // 
            // receivingCategory
            // 
            this.receivingCategory.Font = new System.Drawing.Font("Ubuntu", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingCategory.Location = new System.Drawing.Point(148, 108);
            this.receivingCategory.Name = "receivingCategory";
            this.receivingCategory.Size = new System.Drawing.Size(420, 29);
            this.receivingCategory.TabIndex = 8;
            this.receivingCategory.TextChanged += new System.EventHandler(this.receivingCategory_TextChanged);
            // 
            // receivingCategoryLabel
            // 
            this.receivingCategoryLabel.Font = new System.Drawing.Font("Ubuntu", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingCategoryLabel.Location = new System.Drawing.Point(3, 105);
            this.receivingCategoryLabel.Name = "receivingCategoryLabel";
            this.receivingCategoryLabel.Size = new System.Drawing.Size(139, 32);
            this.receivingCategoryLabel.TabIndex = 7;
            this.receivingCategoryLabel.Text = "Category";
            this.receivingCategoryLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.receivingCategoryLabel.Click += new System.EventHandler(this.receivingCategoryLabel_Click);
            // 
            // receivingWeight
            // 
            this.receivingWeight.DecimalPlaces = 2;
            this.receivingWeight.Font = new System.Drawing.Font("Ubuntu", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingWeight.Location = new System.Drawing.Point(148, 73);
            this.receivingWeight.Maximum = new decimal(new int[] {
            276447231,
            23283,
            0,
            0});
            this.receivingWeight.Name = "receivingWeight";
            this.receivingWeight.Size = new System.Drawing.Size(420, 29);
            this.receivingWeight.TabIndex = 6;
            this.receivingWeight.ValueChanged += new System.EventHandler(this.receivingWeight_ValueChanged);
            // 
            // receivingWeightLabel
            // 
            this.receivingWeightLabel.Font = new System.Drawing.Font("Ubuntu", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingWeightLabel.Location = new System.Drawing.Point(3, 70);
            this.receivingWeightLabel.Name = "receivingWeightLabel";
            this.receivingWeightLabel.Size = new System.Drawing.Size(139, 32);
            this.receivingWeightLabel.TabIndex = 4;
            this.receivingWeightLabel.Text = "Weight";
            this.receivingWeightLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.receivingWeightLabel.Click += new System.EventHandler(this.receivingWeightLabel_Click);
            // 
            // receivingDateReceived
            // 
            this.receivingDateReceived.Font = new System.Drawing.Font("Ubuntu", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingDateReceived.Location = new System.Drawing.Point(148, 38);
            this.receivingDateReceived.Name = "receivingDateReceived";
            this.receivingDateReceived.Size = new System.Drawing.Size(420, 29);
            this.receivingDateReceived.TabIndex = 3;
            this.receivingDateReceived.Value = new System.DateTime(2014, 4, 15, 11, 41, 41, 0);
            this.receivingDateReceived.ValueChanged += new System.EventHandler(this.receivingDateReceived_ValueChanged);
            // 
            // receivingDateReceivedLabel
            // 
            this.receivingDateReceivedLabel.Enabled = false;
            this.receivingDateReceivedLabel.Font = new System.Drawing.Font("Ubuntu", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingDateReceivedLabel.Location = new System.Drawing.Point(3, 35);
            this.receivingDateReceivedLabel.Name = "receivingDateReceivedLabel";
            this.receivingDateReceivedLabel.Size = new System.Drawing.Size(139, 32);
            this.receivingDateReceivedLabel.TabIndex = 2;
            this.receivingDateReceivedLabel.Text = "Date Received";
            this.receivingDateReceivedLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.receivingDateReceivedLabel.Click += new System.EventHandler(this.receivingDateReceivedLabel_Click);
            // 
            // receivingPileCheckbox
            // 
            this.receivingPileCheckbox.Font = new System.Drawing.Font("Ubuntu", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingPileCheckbox.Location = new System.Drawing.Point(308, 3);
            this.receivingPileCheckbox.Name = "receivingPileCheckbox";
            this.receivingPileCheckbox.Size = new System.Drawing.Size(260, 29);
            this.receivingPileCheckbox.TabIndex = 13;
            this.receivingPileCheckbox.Text = "Taken from Pile";
            this.receivingPileCheckbox.UseVisualStyleBackColor = true;
            this.receivingPileCheckbox.CheckedChanged += new System.EventHandler(this.receivingPileCheckbox_CheckedChanged_1);
            // 
            // receivingGaylordSource
            // 
            this.receivingGaylordSource.Font = new System.Drawing.Font("Ubuntu", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingGaylordSource.Location = new System.Drawing.Point(148, 3);
            this.receivingGaylordSource.MaxLength = 200;
            this.receivingGaylordSource.Name = "receivingGaylordSource";
            this.receivingGaylordSource.Size = new System.Drawing.Size(154, 29);
            this.receivingGaylordSource.TabIndex = 1;
            this.receivingGaylordSource.Text = "Source...";
            this.receivingGaylordSource.TextChanged += new System.EventHandler(this.receivingGaylordSource_TextChanged);
            // 
            // receivingClientLabel
            // 
            this.receivingClientLabel.Enabled = false;
            this.receivingClientLabel.Font = new System.Drawing.Font("Ubuntu", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingClientLabel.Location = new System.Drawing.Point(3, 0);
            this.receivingClientLabel.Name = "receivingClientLabel";
            this.receivingClientLabel.Size = new System.Drawing.Size(139, 32);
            this.receivingClientLabel.TabIndex = 0;
            this.receivingClientLabel.Text = "Original Client";
            this.receivingClientLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.receivingClientLabel.Click += new System.EventHandler(this.receivingClientLabel_Click);
            // 
            // receivingPanel
            // 
            this.receivingPanel.Controls.Add(this.receivingClientLabel);
            this.receivingPanel.Controls.Add(this.receivingGaylordSource);
            this.receivingPanel.Controls.Add(this.receivingPileCheckbox);
            this.receivingPanel.Controls.Add(this.receivingDateReceivedLabel);
            this.receivingPanel.Controls.Add(this.receivingDateReceived);
            this.receivingPanel.Controls.Add(this.receivingWeightLabel);
            this.receivingPanel.Controls.Add(this.receivingWeight);
            this.receivingPanel.Controls.Add(this.receivingCategoryLabel);
            this.receivingPanel.Controls.Add(this.receivingCategory);
            this.receivingPanel.Controls.Add(this.receivingCommentsLabel);
            this.receivingPanel.Controls.Add(this.receivingComments);
            this.receivingPanel.Controls.Add(this.recievingSubmitButton);
            this.receivingPanel.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingPanel.Location = new System.Drawing.Point(6, 6);
            this.receivingPanel.Name = "receivingPanel";
            this.receivingPanel.Size = new System.Drawing.Size(582, 437);
            this.receivingPanel.TabIndex = 15;
            this.receivingPanel.Paint += new System.Windows.Forms.PaintEventHandler(this.receivingPanel_Paint_1);
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage2);
            this.tabControl1.Location = new System.Drawing.Point(33, 37);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(672, 364);
            this.tabControl1.TabIndex = 16;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.receivingPanel);
            this.tabPage1.Location = new System.Drawing.Point(4, 29);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(664, 331);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "tabPage1";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // tabPage2
            // 
            this.tabPage2.Location = new System.Drawing.Point(4, 29);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(664, 331);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "tabPage2";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // Main
            // 
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(130)))), ((int)(((byte)(162)))), ((int)(((byte)(106)))));
            this.ClientSize = new System.Drawing.Size(1464, 653);
            this.Controls.Add(this.tabControl1);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Name = "Main";
            this.Load += new System.EventHandler(this.Main_Load_1);
            ((System.ComponentModel.ISupportInitialize)(this.receivingWeight)).EndInit();
            this.receivingPanel.ResumeLayout(false);
            this.receivingPanel.PerformLayout();
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.ResumeLayout(false);

        }
        #endregion
        private System.Windows.Forms.ContextMenuStrip contextMenuStrip1;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem1;
        private System.Windows.Forms.TextBox SerialData;
        private System.Windows.Forms.Button recievingSubmitButton;
        private System.Windows.Forms.TextBox receivingComments;
        private System.Windows.Forms.Label receivingCommentsLabel;
        private System.Windows.Forms.TextBox receivingCategory;
        private System.Windows.Forms.Label receivingCategoryLabel;
        private System.Windows.Forms.NumericUpDown receivingWeight;
        private System.Windows.Forms.Label receivingWeightLabel;
        private System.Windows.Forms.DateTimePicker receivingDateReceived;
        private System.Windows.Forms.Label receivingDateReceivedLabel;
        private System.Windows.Forms.CheckBox receivingPileCheckbox;
        private System.Windows.Forms.TextBox receivingGaylordSource;
        private System.Windows.Forms.Label receivingClientLabel;
        private System.Windows.Forms.FlowLayoutPanel receivingPanel;
        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.TabPage tabPage2;
    }
}

