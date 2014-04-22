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
            this.dbs = new DATABASE();
            this.lbl = new LABELS();
            this.components = new System.ComponentModel.Container();
            this.ScanComm = new System.IO.Ports.SerialPort(this.components);
            this.OpenFile1 = new System.Windows.Forms.OpenFileDialog();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.receivingTab = new System.Windows.Forms.TabPage();
            this.searchTab = new System.Windows.Forms.TabPage();
            this.receivingWeightNumericbox = new System.Windows.Forms.NumericUpDown();
            this.receivingPileCheckbox = new System.Windows.Forms.CheckBox();
            this.officeTab = new System.Windows.Forms.TabPage();
            this.reuseTab = new System.Windows.Forms.TabPage();
            this.receivingSubmitButton = new System.Windows.Forms.Button();
            this.receivingCategoryTextbox = new System.Windows.Forms.TextBox();
            this.receivingCommentsTextbox = new System.Windows.Forms.TextBox();
            this.receivingDateReceivedDatebox = new System.Windows.Forms.DateTimePicker();
            this.receivingDateReceivedLabel = new System.Windows.Forms.Label();
            this.receivingWeightLabel = new System.Windows.Forms.Label();
            this.receivingCategoryLabel = new System.Windows.Forms.Label();
            this.receivingClientTextbox = new System.Windows.Forms.TextBox();
            this.receivingClientLabel = new System.Windows.Forms.Label();
            this.receivingCommentsLabel = new System.Windows.Forms.Label();
            this.tableLayoutPanel1 = new System.Windows.Forms.TableLayoutPanel();
            this.harvestingLayoutPanel = new System.Windows.Forms.FlowLayoutPanel();
            this.harvestingSubmitButton = new System.Windows.Forms.Button();
            this.harvestingCommentsLabel = new System.Windows.Forms.Label();
            this.harvestingCategoryLabel = new System.Windows.Forms.Label();
            this.harvestingWeightNumericbox = new System.Windows.Forms.NumericUpDown();
            this.harvestingWeightLabel = new System.Windows.Forms.Label();
            this.harvestingPileCheckbox = new System.Windows.Forms.CheckBox();
            this.harvestingCommentsTextbox = new System.Windows.Forms.TextBox();
            this.harvestingCategoryTextbox = new System.Windows.Forms.TextBox();
            this.harvestingParentTextbox = new System.Windows.Forms.TextBox();
            this.harvestingParentLabel = new System.Windows.Forms.Label();
            this.harvestingTab = new System.Windows.Forms.TabPage();
            this.tabControl1.SuspendLayout();
            this.receivingTab.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.receivingWeightNumericbox)).BeginInit();
            this.tableLayoutPanel1.SuspendLayout();
            this.harvestingLayoutPanel.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.harvestingWeightNumericbox)).BeginInit();
            this.harvestingTab.SuspendLayout();
            this.SuspendLayout();
            // 
            // ScanComm
            //
            this.ScanComm.DataReceived += new System.IO.Ports.SerialDataReceivedEventHandler(this.DataReceivedHandler);
            //
            // Database
            //
            this.dbs.SetUser("shauni");
            this.dbs.SetPass("wDrTxy3hSUnRHLKY");
            this.dbs.SetServer("jpsharpe.net");
            this.dbs.SetDatabase("ewaste");
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.receivingTab);
            this.tabControl1.Controls.Add(this.harvestingTab);
            this.tabControl1.Controls.Add(this.reuseTab);
            this.tabControl1.Controls.Add(this.officeTab);
            this.tabControl1.Controls.Add(this.searchTab);
            this.tabControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl1.Font = new System.Drawing.Font("Ubuntu", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tabControl1.ItemSize = new System.Drawing.Size(81, 30);
            this.tabControl1.Location = new System.Drawing.Point(0, 0);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(1025, 392);
            this.tabControl1.TabIndex = 0;
            // 
            // receivingTab
            // 
            this.receivingTab.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(130)))), ((int)(((byte)(162)))), ((int)(((byte)(106)))));
            this.receivingTab.Controls.Add(this.tableLayoutPanel1);
            this.receivingTab.Location = new System.Drawing.Point(4, 34);
            this.receivingTab.Name = "receivingTab";
            this.receivingTab.Padding = new System.Windows.Forms.Padding(3);
            this.receivingTab.Size = new System.Drawing.Size(1017, 354);
            this.receivingTab.TabIndex = 0;
            this.receivingTab.Text = "Receiving";
            // 
            // searchTab
            // 
            this.searchTab.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(130)))), ((int)(((byte)(162)))), ((int)(((byte)(106)))));
            this.searchTab.Location = new System.Drawing.Point(4, 34);
            this.searchTab.Name = "searchTab";
            this.searchTab.Size = new System.Drawing.Size(1042, 340);
            this.searchTab.TabIndex = 4;
            this.searchTab.Text = "Search";
            // 
            // receivingWeightNumericbox
            // 
            this.receivingWeightNumericbox.DecimalPlaces = 2;
            this.receivingWeightNumericbox.Font = new System.Drawing.Font("Ubuntu", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingWeightNumericbox.Location = new System.Drawing.Point(125, 41);
            this.receivingWeightNumericbox.Maximum = new decimal(new int[] {
            276447231,
            23283,
            0,
            0});
            this.receivingWeightNumericbox.Name = "receivingWeightNumericbox";
            this.receivingWeightNumericbox.Size = new System.Drawing.Size(533, 32);
            this.receivingWeightNumericbox.TabIndex = 6;
            // 
            // receivingPileCheckbox
            // 
            this.receivingPileCheckbox.Font = new System.Drawing.Font("Ubuntu", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingPileCheckbox.Location = new System.Drawing.Point(811, 3);
            this.receivingPileCheckbox.Name = "receivingPileCheckbox";
            this.receivingPileCheckbox.Size = new System.Drawing.Size(183, 32);
            this.receivingPileCheckbox.TabIndex = 2;
            this.receivingPileCheckbox.Text = "Taken from Pile";
            this.receivingPileCheckbox.UseVisualStyleBackColor = true;
            // 
            // officeTab
            // 
            this.officeTab.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(130)))), ((int)(((byte)(162)))), ((int)(((byte)(106)))));
            this.officeTab.Location = new System.Drawing.Point(4, 34);
            this.officeTab.Name = "officeTab";
            this.officeTab.Size = new System.Drawing.Size(1042, 340);
            this.officeTab.TabIndex = 3;
            this.officeTab.Text = "Office";
            // 
            // reuseTab
            // 
            this.reuseTab.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(130)))), ((int)(((byte)(162)))), ((int)(((byte)(106)))));
            this.reuseTab.Location = new System.Drawing.Point(4, 34);
            this.reuseTab.Name = "reuseTab";
            this.reuseTab.Size = new System.Drawing.Size(1042, 340);
            this.reuseTab.TabIndex = 2;
            this.reuseTab.Text = "Reuse";
            // 
            // receivingSubmitButton
            // 
            this.receivingSubmitButton.Font = new System.Drawing.Font("Ubuntu", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingSubmitButton.Location = new System.Drawing.Point(811, 155);
            this.receivingSubmitButton.Name = "receivingSubmitButton";
            this.receivingSubmitButton.Size = new System.Drawing.Size(189, 43);
            this.receivingSubmitButton.TabIndex = 12;
            this.receivingSubmitButton.Text = "Submit";
            this.receivingSubmitButton.UseVisualStyleBackColor = true;
            this.receivingSubmitButton.Click += new System.EventHandler(this.receivingSubmitButton_Click);
            // 
            // receivingCategoryTextbox
            // 
            this.receivingCategoryTextbox.Dock = System.Windows.Forms.DockStyle.Fill;
            this.receivingCategoryTextbox.Font = new System.Drawing.Font("Ubuntu", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingCategoryTextbox.Location = new System.Drawing.Point(125, 117);
            this.receivingCategoryTextbox.Name = "receivingCategoryTextbox";
            this.receivingCategoryTextbox.Size = new System.Drawing.Size(680, 32);
            this.receivingCategoryTextbox.TabIndex = 8;
            // 
            // receivingCommentsTextbox
            // 
            this.receivingCommentsTextbox.Dock = System.Windows.Forms.DockStyle.Fill;
            this.receivingCommentsTextbox.Font = new System.Drawing.Font("Ubuntu", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingCommentsTextbox.Location = new System.Drawing.Point(125, 155);
            this.receivingCommentsTextbox.Multiline = true;
            this.receivingCommentsTextbox.Name = "receivingCommentsTextbox";
            this.receivingCommentsTextbox.Size = new System.Drawing.Size(680, 182);
            this.receivingCommentsTextbox.TabIndex = 11;
            // 
            // receivingDateReceivedDatebox
            // 
            this.receivingDateReceivedDatebox.Font = new System.Drawing.Font("Ubuntu", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingDateReceivedDatebox.Location = new System.Drawing.Point(125, 79);
            this.receivingDateReceivedDatebox.Name = "receivingDateReceivedDatebox";
            this.receivingDateReceivedDatebox.Size = new System.Drawing.Size(533, 32);
            this.receivingDateReceivedDatebox.TabIndex = 3;
            this.receivingDateReceivedDatebox.Value = new System.DateTime(2014, 4, 15, 11, 41, 41, 0);
            // 
            // receivingDateReceivedLabel
            // 
            this.receivingDateReceivedLabel.Enabled = false;
            this.receivingDateReceivedLabel.Font = new System.Drawing.Font("Ubuntu", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingDateReceivedLabel.Location = new System.Drawing.Point(3, 76);
            this.receivingDateReceivedLabel.Name = "receivingDateReceivedLabel";
            this.receivingDateReceivedLabel.Size = new System.Drawing.Size(116, 35);
            this.receivingDateReceivedLabel.TabIndex = 9998;
            this.receivingDateReceivedLabel.Text = "Date Received";
            this.receivingDateReceivedLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // receivingWeightLabel
            // 
            this.receivingWeightLabel.Font = new System.Drawing.Font("Ubuntu", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingWeightLabel.Location = new System.Drawing.Point(3, 38);
            this.receivingWeightLabel.Name = "receivingWeightLabel";
            this.receivingWeightLabel.Size = new System.Drawing.Size(116, 35);
            this.receivingWeightLabel.TabIndex = 4;
            this.receivingWeightLabel.Text = "Weight";
            this.receivingWeightLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.receivingWeightLabel.Click += new System.EventHandler(this.receivingWeightLabel_Click);
            // 
            // receivingCategoryLabel
            // 
            this.receivingCategoryLabel.Font = new System.Drawing.Font("Ubuntu", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingCategoryLabel.Location = new System.Drawing.Point(3, 114);
            this.receivingCategoryLabel.Name = "receivingCategoryLabel";
            this.receivingCategoryLabel.Size = new System.Drawing.Size(116, 35);
            this.receivingCategoryLabel.TabIndex = 7;
            this.receivingCategoryLabel.Text = "Category";
            this.receivingCategoryLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // receivingClientTextbox
            // 
            this.receivingClientTextbox.Font = new System.Drawing.Font("Ubuntu", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingClientTextbox.Location = new System.Drawing.Point(125, 3);
            this.receivingClientTextbox.MaxLength = 200;
            this.receivingClientTextbox.Name = "receivingClientTextbox";
            this.receivingClientTextbox.Size = new System.Drawing.Size(533, 32);
            this.receivingClientTextbox.TabIndex = 1;
            this.receivingClientTextbox.Text = "Business or Client name";
            // 
            // receivingClientLabel
            // 
            this.receivingClientLabel.Enabled = false;
            this.receivingClientLabel.Font = new System.Drawing.Font("Ubuntu", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingClientLabel.Location = new System.Drawing.Point(3, 0);
            this.receivingClientLabel.Name = "receivingClientLabel";
            this.receivingClientLabel.Size = new System.Drawing.Size(116, 35);
            this.receivingClientLabel.TabIndex = 9999;
            this.receivingClientLabel.Text = "Source";
            this.receivingClientLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // receivingCommentsLabel
            // 
            this.receivingCommentsLabel.Font = new System.Drawing.Font("Ubuntu", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingCommentsLabel.Location = new System.Drawing.Point(3, 152);
            this.receivingCommentsLabel.Name = "receivingCommentsLabel";
            this.receivingCommentsLabel.Size = new System.Drawing.Size(116, 185);
            this.receivingCommentsLabel.TabIndex = 9;
            this.receivingCommentsLabel.Text = "Comments";
            this.receivingCommentsLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // tableLayoutPanel1
            // 
            this.tableLayoutPanel1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tableLayoutPanel1.AutoSize = true;
            this.tableLayoutPanel1.ColumnCount = 3;
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 15.19507F));
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 84.80493F));
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 194F));
            this.tableLayoutPanel1.Controls.Add(this.receivingPileCheckbox, 2, 0);
            this.tableLayoutPanel1.Controls.Add(this.receivingCommentsLabel, 0, 5);
            this.tableLayoutPanel1.Controls.Add(this.receivingCategoryTextbox, 1, 4);
            this.tableLayoutPanel1.Controls.Add(this.receivingCommentsTextbox, 1, 5);
            this.tableLayoutPanel1.Controls.Add(this.receivingClientTextbox, 1, 0);
            this.tableLayoutPanel1.Controls.Add(this.receivingWeightLabel, 0, 1);
            this.tableLayoutPanel1.Controls.Add(this.receivingDateReceivedDatebox, 1, 2);
            this.tableLayoutPanel1.Controls.Add(this.receivingDateReceivedLabel, 0, 2);
            this.tableLayoutPanel1.Controls.Add(this.receivingWeightNumericbox, 1, 1);
            this.tableLayoutPanel1.Controls.Add(this.receivingCategoryLabel, 0, 4);
            this.tableLayoutPanel1.Controls.Add(this.receivingSubmitButton, 2, 5);
            this.tableLayoutPanel1.Controls.Add(this.receivingClientLabel, 0, 0);
            this.tableLayoutPanel1.Location = new System.Drawing.Point(6, 6);
            this.tableLayoutPanel1.Name = "tableLayoutPanel1";
            this.tableLayoutPanel1.RowCount = 6;
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle());
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle());
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle());
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle());
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle());
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableLayoutPanel1.Size = new System.Drawing.Size(1003, 340);
            this.tableLayoutPanel1.TabIndex = 3;
            // 
            // harvestingLayoutPanel
            // 
            this.harvestingLayoutPanel.Controls.Add(this.harvestingParentLabel);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingParentTextbox);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingCategoryTextbox);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingCommentsTextbox);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingPileCheckbox);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingWeightLabel);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingWeightNumericbox);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingCategoryLabel);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingCommentsLabel);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingSubmitButton);
            this.harvestingLayoutPanel.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.harvestingLayoutPanel.Location = new System.Drawing.Point(77, 6);
            this.harvestingLayoutPanel.Name = "harvestingLayoutPanel";
            this.harvestingLayoutPanel.Size = new System.Drawing.Size(1170, 597);
            this.harvestingLayoutPanel.TabIndex = 3;
            // 
            // harvestingSubmitButton
            // 
            this.harvestingSubmitButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.harvestingSubmitButton.Location = new System.Drawing.Point(254, 423);
            this.harvestingSubmitButton.Name = "harvestingSubmitButton";
            this.harvestingSubmitButton.Size = new System.Drawing.Size(176, 59);
            this.harvestingSubmitButton.TabIndex = 12;
            this.harvestingSubmitButton.Text = "Submit";
            this.harvestingSubmitButton.UseVisualStyleBackColor = true;
            // 
            // harvestingCommentsLabel
            // 
            this.harvestingCommentsLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.harvestingCommentsLabel.Location = new System.Drawing.Point(3, 420);
            this.harvestingCommentsLabel.Name = "harvestingCommentsLabel";
            this.harvestingCommentsLabel.Size = new System.Drawing.Size(245, 39);
            this.harvestingCommentsLabel.TabIndex = 9;
            this.harvestingCommentsLabel.Text = "Comments";
            this.harvestingCommentsLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // harvestingCategoryLabel
            // 
            this.harvestingCategoryLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.harvestingCategoryLabel.Location = new System.Drawing.Point(918, 367);
            this.harvestingCategoryLabel.Name = "harvestingCategoryLabel";
            this.harvestingCategoryLabel.Size = new System.Drawing.Size(245, 50);
            this.harvestingCategoryLabel.TabIndex = 7;
            this.harvestingCategoryLabel.Text = "Category";
            this.harvestingCategoryLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // harvestingWeightNumericbox
            // 
            this.harvestingWeightNumericbox.DecimalPlaces = 2;
            this.harvestingWeightNumericbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 26.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.harvestingWeightNumericbox.Location = new System.Drawing.Point(3, 370);
            this.harvestingWeightNumericbox.Maximum = new decimal(new int[] {
            276447231,
            23283,
            0,
            0});
            this.harvestingWeightNumericbox.Name = "harvestingWeightNumericbox";
            this.harvestingWeightNumericbox.Size = new System.Drawing.Size(909, 47);
            this.harvestingWeightNumericbox.TabIndex = 6;
            // 
            // harvestingWeightLabel
            // 
            this.harvestingWeightLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.harvestingWeightLabel.Location = new System.Drawing.Point(268, 314);
            this.harvestingWeightLabel.Name = "harvestingWeightLabel";
            this.harvestingWeightLabel.Size = new System.Drawing.Size(245, 50);
            this.harvestingWeightLabel.TabIndex = 4;
            this.harvestingWeightLabel.Text = "Weight Taken";
            this.harvestingWeightLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // harvestingPileCheckbox
            // 
            this.harvestingPileCheckbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.harvestingPileCheckbox.Location = new System.Drawing.Point(3, 317);
            this.harvestingPileCheckbox.Name = "harvestingPileCheckbox";
            this.harvestingPileCheckbox.Size = new System.Drawing.Size(259, 47);
            this.harvestingPileCheckbox.TabIndex = 2;
            this.harvestingPileCheckbox.Text = "Taken from Pile";
            this.harvestingPileCheckbox.UseVisualStyleBackColor = true;
            // 
            // harvestingCommentsTextbox
            // 
            this.harvestingCommentsTextbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.harvestingCommentsTextbox.Location = new System.Drawing.Point(3, 109);
            this.harvestingCommentsTextbox.Multiline = true;
            this.harvestingCommentsTextbox.Name = "harvestingCommentsTextbox";
            this.harvestingCommentsTextbox.Size = new System.Drawing.Size(909, 202);
            this.harvestingCommentsTextbox.TabIndex = 11;
            // 
            // harvestingCategoryTextbox
            // 
            this.harvestingCategoryTextbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 26.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.harvestingCategoryTextbox.Location = new System.Drawing.Point(3, 56);
            this.harvestingCategoryTextbox.Name = "harvestingCategoryTextbox";
            this.harvestingCategoryTextbox.Size = new System.Drawing.Size(909, 47);
            this.harvestingCategoryTextbox.TabIndex = 8;
            // 
            // harvestingParentTextbox
            // 
            this.harvestingParentTextbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 26.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.harvestingParentTextbox.Location = new System.Drawing.Point(254, 3);
            this.harvestingParentTextbox.MaxLength = 200;
            this.harvestingParentTextbox.Name = "harvestingParentTextbox";
            this.harvestingParentTextbox.Size = new System.Drawing.Size(643, 47);
            this.harvestingParentTextbox.TabIndex = 1;
            this.harvestingParentTextbox.Text = "ID or check box on right for pile";
            // 
            // harvestingParentLabel
            // 
            this.harvestingParentLabel.Enabled = false;
            this.harvestingParentLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.harvestingParentLabel.Location = new System.Drawing.Point(3, 0);
            this.harvestingParentLabel.Name = "harvestingParentLabel";
            this.harvestingParentLabel.Size = new System.Drawing.Size(245, 53);
            this.harvestingParentLabel.TabIndex = 9999;
            this.harvestingParentLabel.Text = "Parent Box ID";
            this.harvestingParentLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // harvestingTab
            // 
            this.harvestingTab.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(130)))), ((int)(((byte)(162)))), ((int)(((byte)(106)))));
            this.harvestingTab.Controls.Add(this.harvestingLayoutPanel);
            this.harvestingTab.Location = new System.Drawing.Point(4, 34);
            this.harvestingTab.Name = "harvestingTab";
            this.harvestingTab.Padding = new System.Windows.Forms.Padding(3);
            this.harvestingTab.Size = new System.Drawing.Size(1042, 354);
            this.harvestingTab.TabIndex = 1;
            this.harvestingTab.Text = "Harvesting";
            // 
            // Main
            // 
            this.BackColor = System.Drawing.Color.LightGray;
            this.ClientSize = new System.Drawing.Size(1025, 392);
            this.Controls.Add(this.tabControl1);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Name = "Main";
            this.Load += new System.EventHandler(this.Main_Load);
            this.tabControl1.ResumeLayout(false);
            this.receivingTab.ResumeLayout(false);
            this.receivingTab.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.receivingWeightNumericbox)).EndInit();
            this.tableLayoutPanel1.ResumeLayout(false);
            this.tableLayoutPanel1.PerformLayout();
            this.harvestingLayoutPanel.ResumeLayout(false);
            this.harvestingLayoutPanel.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.harvestingWeightNumericbox)).EndInit();
            this.harvestingTab.ResumeLayout(false);
            this.ResumeLayout(false);
        }
        #endregion
        private System.Windows.Forms.ContextMenuStrip contextMenuStrip1;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem1;
        private System.Windows.Forms.TextBox SerialData;
        private System.IO.Ports.SerialPort ScanComm;
        private System.Windows.Forms.OpenFileDialog OpenFile1;
        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage receivingTab;
        private System.Windows.Forms.TableLayoutPanel tableLayoutPanel1;
        private System.Windows.Forms.CheckBox receivingPileCheckbox;
        private System.Windows.Forms.Label receivingCommentsLabel;
        private System.Windows.Forms.TextBox receivingCategoryTextbox;
        private System.Windows.Forms.TextBox receivingCommentsTextbox;
        private System.Windows.Forms.TextBox receivingClientTextbox;
        private System.Windows.Forms.Label receivingWeightLabel;
        private System.Windows.Forms.DateTimePicker receivingDateReceivedDatebox;
        private System.Windows.Forms.Label receivingDateReceivedLabel;
        private System.Windows.Forms.NumericUpDown receivingWeightNumericbox;
        private System.Windows.Forms.Label receivingCategoryLabel;
        private System.Windows.Forms.Button receivingSubmitButton;
        private System.Windows.Forms.Label receivingClientLabel;
        private System.Windows.Forms.TabPage harvestingTab;
        private System.Windows.Forms.FlowLayoutPanel harvestingLayoutPanel;
        private System.Windows.Forms.Label harvestingParentLabel;
        private System.Windows.Forms.TextBox harvestingParentTextbox;
        private System.Windows.Forms.TextBox harvestingCategoryTextbox;
        private System.Windows.Forms.TextBox harvestingCommentsTextbox;
        private System.Windows.Forms.CheckBox harvestingPileCheckbox;
        private System.Windows.Forms.Label harvestingWeightLabel;
        private System.Windows.Forms.NumericUpDown harvestingWeightNumericbox;
        private System.Windows.Forms.Label harvestingCategoryLabel;
        private System.Windows.Forms.Label harvestingCommentsLabel;
        private System.Windows.Forms.Button harvestingSubmitButton;
        private System.Windows.Forms.TabPage reuseTab;
        private System.Windows.Forms.TabPage officeTab;
        private System.Windows.Forms.TabPage searchTab;
    }
}

