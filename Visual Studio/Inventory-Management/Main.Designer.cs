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
            this.dbVars = new DBI();
            this.lblVars = new LabelStuff();
            this.components = new System.ComponentModel.Container();
            this.myDelegate = new AddDataDelegate(AddDataMethod);
            this.ScanComm = new System.IO.Ports.SerialPort(this.components);
            this.OpenFile1 = new System.Windows.Forms.OpenFileDialog();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.receivingTab = new System.Windows.Forms.TabPage();
            this.harvestingTab = new System.Windows.Forms.TabPage();
            this.receivingLayoutPanel = new System.Windows.Forms.FlowLayoutPanel();
            this.receivingClientLabel = new System.Windows.Forms.Label();
            this.receivingClientTextbox = new System.Windows.Forms.TextBox();
            this.receivingPileCheckbox = new System.Windows.Forms.CheckBox();
            this.receivingDateReceivedLabel = new System.Windows.Forms.Label();
            this.receivingDateReceivedDatebox = new System.Windows.Forms.DateTimePicker();
            this.receivingWeightLabel = new System.Windows.Forms.Label();
            this.receivingWeightNumericbox = new System.Windows.Forms.NumericUpDown();
            this.receivingCategoryLabel = new System.Windows.Forms.Label();
            this.receivingCategoryTextbox = new System.Windows.Forms.TextBox();
            this.receivingCommentsLabel = new System.Windows.Forms.Label();
            this.receivingCommentsTextbox = new System.Windows.Forms.TextBox();
            this.receivingSubmitButton = new System.Windows.Forms.Button();
            this.reuseTab = new System.Windows.Forms.TabPage();
            this.officeTab = new System.Windows.Forms.TabPage();
            this.searchTab = new System.Windows.Forms.TabPage();
            this.harvestingLayoutPanel = new System.Windows.Forms.FlowLayoutPanel();
            this.harvestingParentLabel = new System.Windows.Forms.Label();
            this.harvestingParentTextbox = new System.Windows.Forms.TextBox();
            this.harvestingPileCheckbox = new System.Windows.Forms.CheckBox();
            this.harvestingWeightLabel = new System.Windows.Forms.Label();
            this.harvestingWeightNumericbox = new System.Windows.Forms.NumericUpDown();
            this.harvestingCategoryLabel = new System.Windows.Forms.Label();
            this.harvestingCategoryTextbox = new System.Windows.Forms.TextBox();
            this.harvestingCommentsLabel = new System.Windows.Forms.Label();
            this.harvestingCommentsTextbox = new System.Windows.Forms.TextBox();
            this.harvestingSubmitButton = new System.Windows.Forms.Button();
            this.tabControl1.SuspendLayout();
            this.receivingTab.SuspendLayout();
            this.harvestingTab.SuspendLayout();
            this.receivingLayoutPanel.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.receivingWeightNumericbox)).BeginInit();
            this.harvestingLayoutPanel.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.harvestingWeightNumericbox)).BeginInit();
            this.SuspendLayout();
            //
            // dbVars
            //
            this.dbVars.SetUser("shauni");
            this.dbVars.SetPass("wDrTxy3hSUnRHLKY");
            this.dbVars.SetServer("jpsharpe.net");
            this.dbVars.SetDatabase("ewaste");
            // 
            // ScanComm
            // 
            this.ScanComm.DataReceived += new System.IO.Ports.SerialDataReceivedEventHandler(this.DataReceivedHandler);
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.receivingTab);
            this.tabControl1.Controls.Add(this.harvestingTab);
            this.tabControl1.Controls.Add(this.reuseTab);
            this.tabControl1.Controls.Add(this.officeTab);
            this.tabControl1.Controls.Add(this.searchTab);
            this.tabControl1.ItemSize = new System.Drawing.Size(81, 50);
            this.tabControl1.Location = new System.Drawing.Point(0, 0);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(1473, 666);
            this.tabControl1.TabIndex = 0;
            // 
            // receivingTab
            // 
            this.receivingTab.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(130)))), ((int)(((byte)(162)))), ((int)(((byte)(106)))));
            this.receivingTab.Controls.Add(this.receivingLayoutPanel);
            this.receivingTab.Location = new System.Drawing.Point(4, 54);
            this.receivingTab.Name = "receivingTab";
            this.receivingTab.Padding = new System.Windows.Forms.Padding(3);
            this.receivingTab.Size = new System.Drawing.Size(1465, 608);
            this.receivingTab.TabIndex = 0;
            this.receivingTab.Text = "Receiving";
            // 
            // harvestingTab
            // 
            this.harvestingTab.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(130)))), ((int)(((byte)(162)))), ((int)(((byte)(106)))));
            this.harvestingTab.Controls.Add(this.harvestingLayoutPanel);
            this.harvestingTab.Location = new System.Drawing.Point(4, 54);
            this.harvestingTab.Name = "harvestingTab";
            this.harvestingTab.Padding = new System.Windows.Forms.Padding(3);
            this.harvestingTab.Size = new System.Drawing.Size(1465, 608);
            this.harvestingTab.TabIndex = 1;
            this.harvestingTab.Text = "Harvesting";
            this.harvestingTab.Click += new System.EventHandler(this.harvestingTab_Click);
            // 
            // receivingLayoutPanel
            // 
            this.receivingLayoutPanel.Controls.Add(this.receivingClientLabel);
            this.receivingLayoutPanel.Controls.Add(this.receivingClientTextbox);
            this.receivingLayoutPanel.Controls.Add(this.receivingPileCheckbox);
            this.receivingLayoutPanel.Controls.Add(this.receivingDateReceivedLabel);
            this.receivingLayoutPanel.Controls.Add(this.receivingDateReceivedDatebox);
            this.receivingLayoutPanel.Controls.Add(this.receivingWeightLabel);
            this.receivingLayoutPanel.Controls.Add(this.receivingWeightNumericbox);
            this.receivingLayoutPanel.Controls.Add(this.receivingCategoryLabel);
            this.receivingLayoutPanel.Controls.Add(this.receivingCategoryTextbox);
            this.receivingLayoutPanel.Controls.Add(this.receivingCommentsLabel);
            this.receivingLayoutPanel.Controls.Add(this.receivingCommentsTextbox);
            this.receivingLayoutPanel.Controls.Add(this.receivingSubmitButton);
            this.receivingLayoutPanel.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingLayoutPanel.Location = new System.Drawing.Point(77, 5);
            this.receivingLayoutPanel.Name = "receivingLayoutPanel";
            this.receivingLayoutPanel.Size = new System.Drawing.Size(1310, 597);
            this.receivingLayoutPanel.TabIndex = 2;
            // 
            // receivingClientLabel
            // 
            this.receivingClientLabel.Enabled = false;
            this.receivingClientLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingClientLabel.Location = new System.Drawing.Point(3, 0);
            this.receivingClientLabel.Name = "receivingClientLabel";
            this.receivingClientLabel.Size = new System.Drawing.Size(246, 53);
            this.receivingClientLabel.TabIndex = 9999;
            this.receivingClientLabel.Text = "Original Client";
            this.receivingClientLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // receivingClientTextbox
            // 
            this.receivingClientTextbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 26.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingClientTextbox.Location = new System.Drawing.Point(255, 3);
            this.receivingClientTextbox.MaxLength = 200;
            this.receivingClientTextbox.Name = "receivingClientTextbox";
            this.receivingClientTextbox.Size = new System.Drawing.Size(644, 47);
            this.receivingClientTextbox.TabIndex = 1;
            this.receivingClientTextbox.Text = "Business or Client name";
            // 
            // receivingPileCheckbox
            // 
            this.receivingPileCheckbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingPileCheckbox.Location = new System.Drawing.Point(905, 3);
            this.receivingPileCheckbox.Name = "receivingPileCheckbox";
            this.receivingPileCheckbox.Size = new System.Drawing.Size(260, 47);
            this.receivingPileCheckbox.TabIndex = 2;
            this.receivingPileCheckbox.Text = "Taken from Pile";
            this.receivingPileCheckbox.UseVisualStyleBackColor = true;
            // 
            // receivingDateReceivedLabel
            // 
            this.receivingDateReceivedLabel.Enabled = false;
            this.receivingDateReceivedLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingDateReceivedLabel.Location = new System.Drawing.Point(3, 53);
            this.receivingDateReceivedLabel.Name = "receivingDateReceivedLabel";
            this.receivingDateReceivedLabel.Size = new System.Drawing.Size(246, 50);
            this.receivingDateReceivedLabel.TabIndex = 9998;
            this.receivingDateReceivedLabel.Text = "Date Received";
            this.receivingDateReceivedLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // receivingDateReceivedDatebox
            // 
            this.receivingDateReceivedDatebox.Font = new System.Drawing.Font("Microsoft Sans Serif", 26.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingDateReceivedDatebox.Location = new System.Drawing.Point(255, 56);
            this.receivingDateReceivedDatebox.Name = "receivingDateReceivedDatebox";
            this.receivingDateReceivedDatebox.Size = new System.Drawing.Size(910, 47);
            this.receivingDateReceivedDatebox.TabIndex = 3;
            this.receivingDateReceivedDatebox.Value = new System.DateTime(2014, 4, 15, 11, 41, 41, 0);
            // 
            // receivingWeightLabel
            // 
            this.receivingWeightLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingWeightLabel.Location = new System.Drawing.Point(3, 106);
            this.receivingWeightLabel.Name = "receivingWeightLabel";
            this.receivingWeightLabel.Size = new System.Drawing.Size(246, 50);
            this.receivingWeightLabel.TabIndex = 4;
            this.receivingWeightLabel.Text = "Weight";
            this.receivingWeightLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // receivingWeightNumericbox
            // 
            this.receivingWeightNumericbox.DecimalPlaces = 2;
            this.receivingWeightNumericbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 26.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingWeightNumericbox.Location = new System.Drawing.Point(255, 109);
            this.receivingWeightNumericbox.Maximum = new decimal(new int[] {
            276447231,
            23283,
            0,
            0});
            this.receivingWeightNumericbox.Name = "receivingWeightNumericbox";
            this.receivingWeightNumericbox.Size = new System.Drawing.Size(910, 47);
            this.receivingWeightNumericbox.TabIndex = 6;
            // 
            // receivingCategoryLabel
            // 
            this.receivingCategoryLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingCategoryLabel.Location = new System.Drawing.Point(3, 159);
            this.receivingCategoryLabel.Name = "receivingCategoryLabel";
            this.receivingCategoryLabel.Size = new System.Drawing.Size(246, 50);
            this.receivingCategoryLabel.TabIndex = 7;
            this.receivingCategoryLabel.Text = "Category";
            this.receivingCategoryLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // receivingCategoryTextbox
            // 
            this.receivingCategoryTextbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 26.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingCategoryTextbox.Location = new System.Drawing.Point(255, 162);
            this.receivingCategoryTextbox.Name = "receivingCategoryTextbox";
            this.receivingCategoryTextbox.Size = new System.Drawing.Size(910, 47);
            this.receivingCategoryTextbox.TabIndex = 8;
            // 
            // receivingCommentsLabel
            // 
            this.receivingCommentsLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingCommentsLabel.Location = new System.Drawing.Point(3, 212);
            this.receivingCommentsLabel.Name = "receivingCommentsLabel";
            this.receivingCommentsLabel.Size = new System.Drawing.Size(246, 39);
            this.receivingCommentsLabel.TabIndex = 9;
            this.receivingCommentsLabel.Text = "Comments";
            this.receivingCommentsLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // receivingCommentsTextbox
            // 
            this.receivingCommentsTextbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingCommentsTextbox.Location = new System.Drawing.Point(255, 215);
            this.receivingCommentsTextbox.Multiline = true;
            this.receivingCommentsTextbox.Name = "receivingCommentsTextbox";
            this.receivingCommentsTextbox.Size = new System.Drawing.Size(910, 202);
            this.receivingCommentsTextbox.TabIndex = 11;
            // 
            // receivingSubmitButton
            // 
            this.receivingSubmitButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingSubmitButton.Location = new System.Drawing.Point(3, 423);
            this.receivingSubmitButton.Name = "receivingSubmitButton";
            this.receivingSubmitButton.Size = new System.Drawing.Size(177, 59);
            this.receivingSubmitButton.TabIndex = 12;
            this.receivingSubmitButton.Text = "Submit";
            this.receivingSubmitButton.UseVisualStyleBackColor = true;
            // 
            // reuseTab
            // 
            this.reuseTab.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(130)))), ((int)(((byte)(162)))), ((int)(((byte)(106)))));
            this.reuseTab.Location = new System.Drawing.Point(4, 54);
            this.reuseTab.Name = "reuseTab";
            this.reuseTab.Size = new System.Drawing.Size(1465, 608);
            this.reuseTab.TabIndex = 2;
            this.reuseTab.Text = "Reuse";
            // 
            // officeTab
            // 
            this.officeTab.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(130)))), ((int)(((byte)(162)))), ((int)(((byte)(106)))));
            this.officeTab.Location = new System.Drawing.Point(4, 54);
            this.officeTab.Name = "officeTab";
            this.officeTab.Size = new System.Drawing.Size(1465, 608);
            this.officeTab.TabIndex = 3;
            this.officeTab.Text = "Office";
            // 
            // searchTab
            // 
            this.searchTab.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(130)))), ((int)(((byte)(162)))), ((int)(((byte)(106)))));
            this.searchTab.Location = new System.Drawing.Point(4, 54);
            this.searchTab.Name = "searchTab";
            this.searchTab.Size = new System.Drawing.Size(1465, 608);
            this.searchTab.TabIndex = 4;
            this.searchTab.Text = "Search";
            // 
            // harvestingLayoutPanel
            // 
            this.harvestingLayoutPanel.Controls.Add(this.harvestingParentLabel);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingParentTextbox);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingPileCheckbox);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingWeightLabel);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingWeightNumericbox);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingCategoryLabel);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingCategoryTextbox);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingCommentsLabel);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingCommentsTextbox);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingSubmitButton);
            this.harvestingLayoutPanel.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.harvestingLayoutPanel.Location = new System.Drawing.Point(77, 6);
            this.harvestingLayoutPanel.Name = "harvestingLayoutPanel";
            this.harvestingLayoutPanel.Size = new System.Drawing.Size(1171, 597);
            this.harvestingLayoutPanel.TabIndex = 3;
            // 
            // harvestingParentLabel
            // 
            this.harvestingParentLabel.Enabled = false;
            this.harvestingParentLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.harvestingParentLabel.Location = new System.Drawing.Point(3, 0);
            this.harvestingParentLabel.Name = "harvestingParentLabel";
            this.harvestingParentLabel.Size = new System.Drawing.Size(246, 53);
            this.harvestingParentLabel.TabIndex = 9999;
            this.harvestingParentLabel.Text = "Parent Box ID";
            this.harvestingParentLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // harvestingParentTextbox
            // 
            this.harvestingParentTextbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 26.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.harvestingParentTextbox.Location = new System.Drawing.Point(255, 3);
            this.harvestingParentTextbox.MaxLength = 200;
            this.harvestingParentTextbox.Name = "harvestingParentTextbox";
            this.harvestingParentTextbox.Size = new System.Drawing.Size(644, 47);
            this.harvestingParentTextbox.TabIndex = 1;
            this.harvestingParentTextbox.Text = "ID or check box on right for pile";
            // 
            // harvestingPileCheckbox
            // 
            this.harvestingPileCheckbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.harvestingPileCheckbox.Location = new System.Drawing.Point(905, 3);
            this.harvestingPileCheckbox.Name = "harvestingPileCheckbox";
            this.harvestingPileCheckbox.Size = new System.Drawing.Size(260, 47);
            this.harvestingPileCheckbox.TabIndex = 2;
            this.harvestingPileCheckbox.Text = "Taken from Pile";
            this.harvestingPileCheckbox.UseVisualStyleBackColor = true;
            // 
            // harvestingWeightLabel
            // 
            this.harvestingWeightLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.harvestingWeightLabel.Location = new System.Drawing.Point(3, 53);
            this.harvestingWeightLabel.Name = "harvestingWeightLabel";
            this.harvestingWeightLabel.Size = new System.Drawing.Size(246, 50);
            this.harvestingWeightLabel.TabIndex = 4;
            this.harvestingWeightLabel.Text = "Weight Taken";
            this.harvestingWeightLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // harvestingWeightNumericbox
            // 
            this.harvestingWeightNumericbox.DecimalPlaces = 2;
            this.harvestingWeightNumericbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 26.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.harvestingWeightNumericbox.Location = new System.Drawing.Point(255, 56);
            this.harvestingWeightNumericbox.Maximum = new decimal(new int[] {
            276447231,
            23283,
            0,
            0});
            this.harvestingWeightNumericbox.Name = "harvestingWeightNumericbox";
            this.harvestingWeightNumericbox.Size = new System.Drawing.Size(910, 47);
            this.harvestingWeightNumericbox.TabIndex = 6;
            // 
            // harvestingCategoryLabel
            // 
            this.harvestingCategoryLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.harvestingCategoryLabel.Location = new System.Drawing.Point(3, 106);
            this.harvestingCategoryLabel.Name = "harvestingCategoryLabel";
            this.harvestingCategoryLabel.Size = new System.Drawing.Size(246, 50);
            this.harvestingCategoryLabel.TabIndex = 7;
            this.harvestingCategoryLabel.Text = "Category";
            this.harvestingCategoryLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // harvestingCategoryTextbox
            // 
            this.harvestingCategoryTextbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 26.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.harvestingCategoryTextbox.Location = new System.Drawing.Point(255, 109);
            this.harvestingCategoryTextbox.Name = "harvestingCategoryTextbox";
            this.harvestingCategoryTextbox.Size = new System.Drawing.Size(910, 47);
            this.harvestingCategoryTextbox.TabIndex = 8;
            // 
            // harvestingCommentsLabel
            // 
            this.harvestingCommentsLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.harvestingCommentsLabel.Location = new System.Drawing.Point(3, 159);
            this.harvestingCommentsLabel.Name = "harvestingCommentsLabel";
            this.harvestingCommentsLabel.Size = new System.Drawing.Size(246, 39);
            this.harvestingCommentsLabel.TabIndex = 9;
            this.harvestingCommentsLabel.Text = "Comments";
            this.harvestingCommentsLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // harvestingCommentsTextbox
            // 
            this.harvestingCommentsTextbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.harvestingCommentsTextbox.Location = new System.Drawing.Point(255, 162);
            this.harvestingCommentsTextbox.Multiline = true;
            this.harvestingCommentsTextbox.Name = "harvestingCommentsTextbox";
            this.harvestingCommentsTextbox.Size = new System.Drawing.Size(910, 202);
            this.harvestingCommentsTextbox.TabIndex = 11;
            // 
            // harvestingSubmitButton
            // 
            this.harvestingSubmitButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.harvestingSubmitButton.Location = new System.Drawing.Point(3, 370);
            this.harvestingSubmitButton.Name = "harvestingSubmitButton";
            this.harvestingSubmitButton.Size = new System.Drawing.Size(177, 59);
            this.harvestingSubmitButton.TabIndex = 12;
            this.harvestingSubmitButton.Text = "Submit";
            this.harvestingSubmitButton.UseVisualStyleBackColor = true;
            // 
            // Main
            // 
            this.BackColor = System.Drawing.Color.LightGray;
            this.ClientSize = new System.Drawing.Size(1474, 663);
            this.Controls.Add(this.tabControl1);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Name = "Main";
            this.Load += new System.EventHandler(this.Main_Load_1);
            this.tabControl1.ResumeLayout(false);
            this.receivingTab.ResumeLayout(false);
            this.harvestingTab.ResumeLayout(false);
            this.receivingLayoutPanel.ResumeLayout(false);
            this.receivingLayoutPanel.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.receivingWeightNumericbox)).EndInit();
            this.harvestingLayoutPanel.ResumeLayout(false);
            this.harvestingLayoutPanel.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.harvestingWeightNumericbox)).EndInit();
            this.ResumeLayout(false);

        }
        #endregion
        private System.Windows.Forms.ContextMenuStrip contextMenuStrip1;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem1;
        private System.Windows.Forms.TextBox SerialData;
        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage receivingTab;
        private System.Windows.Forms.FlowLayoutPanel receivingLayoutPanel;
        private System.Windows.Forms.Label receivingClientLabel;
        private System.Windows.Forms.TextBox receivingClientTextbox;
        private System.Windows.Forms.CheckBox receivingPileCheckbox;
        private System.Windows.Forms.Label receivingDateReceivedLabel;
        private System.Windows.Forms.DateTimePicker receivingDateReceivedDatebox;
        private System.Windows.Forms.Label receivingWeightLabel;
        private System.Windows.Forms.NumericUpDown receivingWeightNumericbox;
        private System.Windows.Forms.Label receivingCategoryLabel;
        private System.Windows.Forms.TextBox receivingCategoryTextbox;
        private System.Windows.Forms.Label receivingCommentsLabel;
        private System.Windows.Forms.TextBox receivingCommentsTextbox;
        private System.Windows.Forms.Button receivingSubmitButton;
        private System.Windows.Forms.TabPage harvestingTab;
        private System.Windows.Forms.TabPage reuseTab;
        private System.Windows.Forms.TabPage officeTab;
        private System.Windows.Forms.TabPage searchTab;
        private System.Windows.Forms.FlowLayoutPanel harvestingLayoutPanel;
        private System.Windows.Forms.Label harvestingParentLabel;
        private System.Windows.Forms.TextBox harvestingParentTextbox;
        private System.Windows.Forms.CheckBox harvestingPileCheckbox;
        private System.Windows.Forms.Label harvestingWeightLabel;
        private System.Windows.Forms.NumericUpDown harvestingWeightNumericbox;
        private System.Windows.Forms.Label harvestingCategoryLabel;
        private System.Windows.Forms.TextBox harvestingCategoryTextbox;
        private System.Windows.Forms.Label harvestingCommentsLabel;
        private System.Windows.Forms.TextBox harvestingCommentsTextbox;
        private System.Windows.Forms.Button harvestingSubmitButton;
    }
}

