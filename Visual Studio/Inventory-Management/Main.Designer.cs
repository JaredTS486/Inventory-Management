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
            this.tabControl = new System.Windows.Forms.TabControl();
            this.receivingTab = new System.Windows.Forms.TabPage();
            this.receivingLayoutPanel = new System.Windows.Forms.TableLayoutPanel();
            this.receivingPileCheckbox = new System.Windows.Forms.CheckBox();
            this.receivingCommentsLabel = new System.Windows.Forms.Label();
            this.receivingCategoryTextbox = new System.Windows.Forms.TextBox();
            this.receivingCommentsTextbox = new System.Windows.Forms.TextBox();
            this.receivingClientTextbox = new System.Windows.Forms.TextBox();
            this.receivingWeightLabel = new System.Windows.Forms.Label();
            this.receivingDateReceivedDatebox = new System.Windows.Forms.DateTimePicker();
            this.receivingDateReceivedLabel = new System.Windows.Forms.Label();
            this.receivingWeightNumericbox = new System.Windows.Forms.NumericUpDown();
            this.receivingCategoryLabel = new System.Windows.Forms.Label();
            this.receivingSubmitButton = new System.Windows.Forms.Button();
            this.receivingClientLabel = new System.Windows.Forms.Label();
            this.receivingJobIDLabel = new System.Windows.Forms.Label();
            this.receivingJobID = new System.Windows.Forms.NumericUpDown();
            this.harvestingTab = new System.Windows.Forms.TabPage();
            this.harvestingLayoutPanel = new System.Windows.Forms.TableLayoutPanel();
            this.harvestingPileCheckbox = new System.Windows.Forms.CheckBox();
            this.harvestingCommentsTextbox = new System.Windows.Forms.TextBox();
            this.harvestingSubmitButton = new System.Windows.Forms.Button();
            this.harvestingCommentsLabel = new System.Windows.Forms.Label();
            this.harvestingCategoryTextbox = new System.Windows.Forms.TextBox();
            this.harvestingWeightLabel = new System.Windows.Forms.Label();
            this.harvestingCategoryLabel = new System.Windows.Forms.Label();
            this.harvestingWeightNumericbox = new System.Windows.Forms.NumericUpDown();
            this.harvestingParentLabel = new System.Windows.Forms.Label();
            this.harvestReceivingID = new System.Windows.Forms.NumericUpDown();
            this.reuseTab = new System.Windows.Forms.TabPage();
            this.reuseLayoutPanel = new System.Windows.Forms.TableLayoutPanel();
            this.reuseParentIDLabel = new System.Windows.Forms.Label();
            this.reuseWeightLabel = new System.Windows.Forms.Label();
            this.reuseCategoryLabel = new System.Windows.Forms.Label();
            this.reuseCategoryTextbox = new System.Windows.Forms.TextBox();
            this.reuseWeightNumericbox = new System.Windows.Forms.NumericUpDown();
            this.reuseCommentsTextbox = new System.Windows.Forms.TextBox();
            this.reuseSubmitButton = new System.Windows.Forms.Button();
            this.reuseCommentsLabel = new System.Windows.Forms.Label();
            this.reuseListedCheckbox = new System.Windows.Forms.CheckBox();
            this.reuseSoldCheckbox = new System.Windows.Forms.CheckBox();
            this.reuseSalePriceLabel = new System.Windows.Forms.Label();
            this.reuseSaleAmountNumericbox = new System.Windows.Forms.NumericUpDown();
            this.reuseHarvestID = new System.Windows.Forms.NumericUpDown();
            this.searchTab = new System.Windows.Forms.TabPage();
            this.searchLayoutPanel = new System.Windows.Forms.TableLayoutPanel();
            this.harvestSearch = new System.Windows.Forms.TextBox();
            this.receivingSearch = new System.Windows.Forms.TextBox();
            this.reuseSearch = new System.Windows.Forms.TextBox();
            this.searchClientLabel = new System.Windows.Forms.Label();
            this.searchIDLabel = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.splitContainer1 = new System.Windows.Forms.SplitContainer();
            this.receivingListBox = new System.Windows.Forms.ListBox();
            this.receivingButtonRemove = new System.Windows.Forms.Button();
            this.splitContainer2 = new System.Windows.Forms.SplitContainer();
            this.harvestListBox = new System.Windows.Forms.ListBox();
            this.harvestButtonRemove = new System.Windows.Forms.Button();
            this.harvestButtonReject = new System.Windows.Forms.Button();
            this.splitContainer3 = new System.Windows.Forms.SplitContainer();
            this.reuseListBox = new System.Windows.Forms.ListBox();
            this.reuseButtonRemove = new System.Windows.Forms.Button();
            this.reuseButtonSold = new System.Windows.Forms.Button();
            this.reuseButtonReject = new System.Windows.Forms.Button();
            this.reuseButtonListed = new System.Windows.Forms.Button();
            this.splitContainer4 = new System.Windows.Forms.SplitContainer();
            this.panel1 = new System.Windows.Forms.Panel();
            this.label8 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.reuseWeightLBL = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.reuseDescriptionResult = new System.Windows.Forms.TextBox();
            this.reuseSoldForResult = new System.Windows.Forms.TextBox();
            this.reuseRejectedOnResult = new System.Windows.Forms.TextBox();
            this.reuseSoldOnResult = new System.Windows.Forms.TextBox();
            this.reuseListedOnResult = new System.Windows.Forms.TextBox();
            this.reuseStatusResult = new System.Windows.Forms.TextBox();
            this.reuseCategoryResult = new System.Windows.Forms.TextBox();
            this.reuseWeightResult = new System.Windows.Forms.TextBox();
            this.splitContainer5 = new System.Windows.Forms.SplitContainer();
            this.panel3 = new System.Windows.Forms.Panel();
            this.label9 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.label15 = new System.Windows.Forms.Label();
            this.label16 = new System.Windows.Forms.Label();
            this.panel4 = new System.Windows.Forms.Panel();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.textBox3 = new System.Windows.Forms.TextBox();
            this.textBox7 = new System.Windows.Forms.TextBox();
            this.textBox8 = new System.Windows.Forms.TextBox();
            this.tabControl.SuspendLayout();
            this.receivingTab.SuspendLayout();
            this.receivingLayoutPanel.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.receivingWeightNumericbox)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.receivingJobID)).BeginInit();
            this.harvestingTab.SuspendLayout();
            this.harvestingLayoutPanel.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.harvestingWeightNumericbox)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.harvestReceivingID)).BeginInit();
            this.reuseTab.SuspendLayout();
            this.reuseLayoutPanel.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.reuseWeightNumericbox)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.reuseSaleAmountNumericbox)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.reuseHarvestID)).BeginInit();
            this.searchTab.SuspendLayout();
            this.searchLayoutPanel.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).BeginInit();
            this.splitContainer1.Panel1.SuspendLayout();
            this.splitContainer1.Panel2.SuspendLayout();
            this.splitContainer1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer2)).BeginInit();
            this.splitContainer2.Panel1.SuspendLayout();
            this.splitContainer2.Panel2.SuspendLayout();
            this.splitContainer2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer3)).BeginInit();
            this.splitContainer3.Panel1.SuspendLayout();
            this.splitContainer3.Panel2.SuspendLayout();
            this.splitContainer3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer4)).BeginInit();
            this.splitContainer4.Panel1.SuspendLayout();
            this.splitContainer4.Panel2.SuspendLayout();
            this.splitContainer4.SuspendLayout();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer5)).BeginInit();
            this.splitContainer5.Panel1.SuspendLayout();
            this.splitContainer5.Panel2.SuspendLayout();
            this.splitContainer5.SuspendLayout();
            this.panel3.SuspendLayout();
            this.panel4.SuspendLayout();
            this.SuspendLayout();
            // 
            // ScanComm
            // 
            this.ScanComm.DataReceived += new System.IO.Ports.SerialDataReceivedEventHandler(this.DataReceivedHandler);
            // 
            // tabControl
            // 
            this.tabControl.Controls.Add(this.receivingTab);
            this.tabControl.Controls.Add(this.harvestingTab);
            this.tabControl.Controls.Add(this.reuseTab);
            this.tabControl.Controls.Add(this.searchTab);
            this.tabControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tabControl.ItemSize = new System.Drawing.Size(81, 30);
            this.tabControl.Location = new System.Drawing.Point(0, 0);
            this.tabControl.Name = "tabControl";
            this.tabControl.SelectedIndex = 0;
            this.tabControl.Size = new System.Drawing.Size(1053, 657);
            this.tabControl.TabIndex = 0;
            // 
            // receivingTab
            // 
            this.receivingTab.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(130)))), ((int)(((byte)(162)))), ((int)(((byte)(106)))));
            this.receivingTab.Controls.Add(this.receivingLayoutPanel);
            this.receivingTab.Location = new System.Drawing.Point(4, 34);
            this.receivingTab.Name = "receivingTab";
            this.receivingTab.Padding = new System.Windows.Forms.Padding(3);
            this.receivingTab.Size = new System.Drawing.Size(1045, 619);
            this.receivingTab.TabIndex = 0;
            this.receivingTab.Text = "Receiving";
            // 
            // receivingLayoutPanel
            // 
            this.receivingLayoutPanel.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.receivingLayoutPanel.AutoSize = true;
            this.receivingLayoutPanel.ColumnCount = 3;
            this.receivingLayoutPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 15.19507F));
            this.receivingLayoutPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 84.80493F));
            this.receivingLayoutPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 194F));
            this.receivingLayoutPanel.Controls.Add(this.receivingPileCheckbox, 2, 0);
            this.receivingLayoutPanel.Controls.Add(this.receivingCommentsLabel, 0, 5);
            this.receivingLayoutPanel.Controls.Add(this.receivingCategoryTextbox, 1, 4);
            this.receivingLayoutPanel.Controls.Add(this.receivingCommentsTextbox, 1, 5);
            this.receivingLayoutPanel.Controls.Add(this.receivingClientTextbox, 1, 0);
            this.receivingLayoutPanel.Controls.Add(this.receivingWeightLabel, 0, 1);
            this.receivingLayoutPanel.Controls.Add(this.receivingDateReceivedDatebox, 1, 2);
            this.receivingLayoutPanel.Controls.Add(this.receivingDateReceivedLabel, 0, 2);
            this.receivingLayoutPanel.Controls.Add(this.receivingWeightNumericbox, 1, 1);
            this.receivingLayoutPanel.Controls.Add(this.receivingCategoryLabel, 0, 4);
            this.receivingLayoutPanel.Controls.Add(this.receivingSubmitButton, 2, 5);
            this.receivingLayoutPanel.Controls.Add(this.receivingClientLabel, 0, 0);
            this.receivingLayoutPanel.Controls.Add(this.receivingJobIDLabel, 2, 1);
            this.receivingLayoutPanel.Controls.Add(this.receivingJobID, 2, 2);
            this.receivingLayoutPanel.Location = new System.Drawing.Point(6, 6);
            this.receivingLayoutPanel.Name = "receivingLayoutPanel";
            this.receivingLayoutPanel.RowCount = 6;
            this.receivingLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle());
            this.receivingLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle());
            this.receivingLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle());
            this.receivingLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle());
            this.receivingLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle());
            this.receivingLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.receivingLayoutPanel.Size = new System.Drawing.Size(1031, 605);
            this.receivingLayoutPanel.TabIndex = 3;
            // 
            // receivingPileCheckbox
            // 
            this.receivingPileCheckbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingPileCheckbox.Location = new System.Drawing.Point(839, 3);
            this.receivingPileCheckbox.Name = "receivingPileCheckbox";
            this.receivingPileCheckbox.Size = new System.Drawing.Size(183, 32);
            this.receivingPileCheckbox.TabIndex = 2;
            this.receivingPileCheckbox.Text = "Taken from Pile";
            this.receivingPileCheckbox.UseVisualStyleBackColor = true;
            this.receivingPileCheckbox.CheckedChanged += new System.EventHandler(this.receivingPileCheckbox_CheckedChanged);
            // 
            // receivingCommentsLabel
            // 
            this.receivingCommentsLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingCommentsLabel.Location = new System.Drawing.Point(3, 143);
            this.receivingCommentsLabel.Name = "receivingCommentsLabel";
            this.receivingCommentsLabel.Size = new System.Drawing.Size(116, 185);
            this.receivingCommentsLabel.TabIndex = 999;
            this.receivingCommentsLabel.Text = "Comments";
            this.receivingCommentsLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // receivingCategoryTextbox
            // 
            this.receivingCategoryTextbox.Dock = System.Windows.Forms.DockStyle.Fill;
            this.receivingCategoryTextbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingCategoryTextbox.Location = new System.Drawing.Point(130, 111);
            this.receivingCategoryTextbox.Name = "receivingCategoryTextbox";
            this.receivingCategoryTextbox.Size = new System.Drawing.Size(703, 29);
            this.receivingCategoryTextbox.TabIndex = 6;
            this.receivingCategoryTextbox.TextChanged += new System.EventHandler(this.receivingCategoryTextbox_TextChanged);
            // 
            // receivingCommentsTextbox
            // 
            this.receivingCommentsTextbox.Dock = System.Windows.Forms.DockStyle.Fill;
            this.receivingCommentsTextbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingCommentsTextbox.Location = new System.Drawing.Point(130, 146);
            this.receivingCommentsTextbox.Multiline = true;
            this.receivingCommentsTextbox.Name = "receivingCommentsTextbox";
            this.receivingCommentsTextbox.Size = new System.Drawing.Size(703, 456);
            this.receivingCommentsTextbox.TabIndex = 7;
            // 
            // receivingClientTextbox
            // 
            this.receivingClientTextbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingClientTextbox.Location = new System.Drawing.Point(130, 3);
            this.receivingClientTextbox.MaxLength = 200;
            this.receivingClientTextbox.Name = "receivingClientTextbox";
            this.receivingClientTextbox.Size = new System.Drawing.Size(356, 29);
            this.receivingClientTextbox.TabIndex = 1;
            this.receivingClientTextbox.TextChanged += new System.EventHandler(this.receivingClientTextbox_TextChanged);
            // 
            // receivingWeightLabel
            // 
            this.receivingWeightLabel.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.receivingWeightLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingWeightLabel.Location = new System.Drawing.Point(3, 38);
            this.receivingWeightLabel.Name = "receivingWeightLabel";
            this.receivingWeightLabel.Size = new System.Drawing.Size(116, 35);
            this.receivingWeightLabel.TabIndex = 49898;
            this.receivingWeightLabel.Text = "Weight";
            this.receivingWeightLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.receivingWeightLabel.Click += new System.EventHandler(this.receivingWeightLabel_Click);
            // 
            // receivingDateReceivedDatebox
            // 
            this.receivingDateReceivedDatebox.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingDateReceivedDatebox.Location = new System.Drawing.Point(130, 76);
            this.receivingDateReceivedDatebox.Name = "receivingDateReceivedDatebox";
            this.receivingDateReceivedDatebox.Size = new System.Drawing.Size(356, 29);
            this.receivingDateReceivedDatebox.TabIndex = 4;
            this.receivingDateReceivedDatebox.Value = new System.DateTime(2014, 1, 1, 11, 41, 0, 0);
            this.receivingDateReceivedDatebox.ValueChanged += new System.EventHandler(this.receivingDateReceivedDatebox_ValueChanged);
            // 
            // receivingDateReceivedLabel
            // 
            this.receivingDateReceivedLabel.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.receivingDateReceivedLabel.Enabled = false;
            this.receivingDateReceivedLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingDateReceivedLabel.Location = new System.Drawing.Point(3, 73);
            this.receivingDateReceivedLabel.Name = "receivingDateReceivedLabel";
            this.receivingDateReceivedLabel.Size = new System.Drawing.Size(116, 35);
            this.receivingDateReceivedLabel.TabIndex = 9998;
            this.receivingDateReceivedLabel.Text = "Date Received";
            this.receivingDateReceivedLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // receivingWeightNumericbox
            // 
            this.receivingWeightNumericbox.DecimalPlaces = 2;
            this.receivingWeightNumericbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingWeightNumericbox.Location = new System.Drawing.Point(130, 41);
            this.receivingWeightNumericbox.Maximum = new decimal(new int[] {
            276447231,
            23283,
            0,
            0});
            this.receivingWeightNumericbox.Name = "receivingWeightNumericbox";
            this.receivingWeightNumericbox.Size = new System.Drawing.Size(356, 29);
            this.receivingWeightNumericbox.TabIndex = 3;
            this.receivingWeightNumericbox.ValueChanged += new System.EventHandler(this.receivingWeightNumericbox_ValueChanged);
            // 
            // receivingCategoryLabel
            // 
            this.receivingCategoryLabel.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.receivingCategoryLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingCategoryLabel.Location = new System.Drawing.Point(3, 108);
            this.receivingCategoryLabel.Name = "receivingCategoryLabel";
            this.receivingCategoryLabel.Size = new System.Drawing.Size(116, 35);
            this.receivingCategoryLabel.TabIndex = 90909;
            this.receivingCategoryLabel.Text = "Category";
            this.receivingCategoryLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // receivingSubmitButton
            // 
            this.receivingSubmitButton.Enabled = false;
            this.receivingSubmitButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingSubmitButton.Location = new System.Drawing.Point(839, 146);
            this.receivingSubmitButton.Name = "receivingSubmitButton";
            this.receivingSubmitButton.Size = new System.Drawing.Size(189, 45);
            this.receivingSubmitButton.TabIndex = 8;
            this.receivingSubmitButton.Text = "Submit";
            this.receivingSubmitButton.UseVisualStyleBackColor = true;
            this.receivingSubmitButton.Click += new System.EventHandler(this.receivingSubmitButton_Click);
            // 
            // receivingClientLabel
            // 
            this.receivingClientLabel.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.receivingClientLabel.Enabled = false;
            this.receivingClientLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingClientLabel.Location = new System.Drawing.Point(3, 1);
            this.receivingClientLabel.Name = "receivingClientLabel";
            this.receivingClientLabel.Size = new System.Drawing.Size(116, 35);
            this.receivingClientLabel.TabIndex = 9999;
            this.receivingClientLabel.Text = "Client Name";
            this.receivingClientLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // receivingJobIDLabel
            // 
            this.receivingJobIDLabel.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.receivingJobIDLabel.AutoSize = true;
            this.receivingJobIDLabel.Location = new System.Drawing.Point(839, 43);
            this.receivingJobIDLabel.Name = "receivingJobIDLabel";
            this.receivingJobIDLabel.Size = new System.Drawing.Size(63, 24);
            this.receivingJobIDLabel.TabIndex = 10000;
            this.receivingJobIDLabel.Text = "Job ID";
            // 
            // receivingJobID
            // 
            this.receivingJobID.Location = new System.Drawing.Point(839, 76);
            this.receivingJobID.Maximum = new decimal(new int[] {
            999999,
            0,
            0,
            0});
            this.receivingJobID.Name = "receivingJobID";
            this.receivingJobID.Size = new System.Drawing.Size(183, 29);
            this.receivingJobID.TabIndex = 90910;
            // 
            // harvestingTab
            // 
            this.harvestingTab.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(130)))), ((int)(((byte)(162)))), ((int)(((byte)(106)))));
            this.harvestingTab.Controls.Add(this.harvestingLayoutPanel);
            this.harvestingTab.Location = new System.Drawing.Point(4, 34);
            this.harvestingTab.Name = "harvestingTab";
            this.harvestingTab.Padding = new System.Windows.Forms.Padding(3);
            this.harvestingTab.Size = new System.Drawing.Size(1045, 619);
            this.harvestingTab.TabIndex = 1;
            this.harvestingTab.Text = "Harvesting";
            // 
            // harvestingLayoutPanel
            // 
            this.harvestingLayoutPanel.ColumnCount = 3;
            this.harvestingLayoutPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 14.27165F));
            this.harvestingLayoutPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 85.72835F));
            this.harvestingLayoutPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 202F));
            this.harvestingLayoutPanel.Controls.Add(this.harvestingPileCheckbox, 2, 0);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingCommentsTextbox, 1, 3);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingSubmitButton, 2, 3);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingCommentsLabel, 0, 3);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingCategoryTextbox, 1, 2);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingWeightLabel, 0, 1);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingCategoryLabel, 0, 2);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingWeightNumericbox, 1, 1);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingParentLabel, 0, 0);
            this.harvestingLayoutPanel.Controls.Add(this.harvestReceivingID, 1, 0);
            this.harvestingLayoutPanel.Dock = System.Windows.Forms.DockStyle.Fill;
            this.harvestingLayoutPanel.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.harvestingLayoutPanel.Location = new System.Drawing.Point(3, 3);
            this.harvestingLayoutPanel.Name = "harvestingLayoutPanel";
            this.harvestingLayoutPanel.RowCount = 4;
            this.harvestingLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 56.16438F));
            this.harvestingLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 43.83562F));
            this.harvestingLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 36F));
            this.harvestingLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 503F));
            this.harvestingLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.harvestingLayoutPanel.Size = new System.Drawing.Size(1039, 613);
            this.harvestingLayoutPanel.TabIndex = 4;
            // 
            // harvestingPileCheckbox
            // 
            this.harvestingPileCheckbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.harvestingPileCheckbox.Location = new System.Drawing.Point(839, 3);
            this.harvestingPileCheckbox.Name = "harvestingPileCheckbox";
            this.harvestingPileCheckbox.Size = new System.Drawing.Size(197, 31);
            this.harvestingPileCheckbox.TabIndex = 2;
            this.harvestingPileCheckbox.Text = "Taken from Pile";
            this.harvestingPileCheckbox.UseVisualStyleBackColor = true;
            this.harvestingPileCheckbox.CheckedChanged += new System.EventHandler(this.harvestingPileCheckbox_CheckedChanged);
            // 
            // harvestingCommentsTextbox
            // 
            this.harvestingCommentsTextbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.harvestingCommentsTextbox.Location = new System.Drawing.Point(122, 112);
            this.harvestingCommentsTextbox.Multiline = true;
            this.harvestingCommentsTextbox.Name = "harvestingCommentsTextbox";
            this.harvestingCommentsTextbox.Size = new System.Drawing.Size(711, 494);
            this.harvestingCommentsTextbox.TabIndex = 5;
            // 
            // harvestingSubmitButton
            // 
            this.harvestingSubmitButton.Enabled = false;
            this.harvestingSubmitButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.harvestingSubmitButton.Location = new System.Drawing.Point(839, 112);
            this.harvestingSubmitButton.Name = "harvestingSubmitButton";
            this.harvestingSubmitButton.Size = new System.Drawing.Size(176, 59);
            this.harvestingSubmitButton.TabIndex = 6;
            this.harvestingSubmitButton.Text = "Submit";
            this.harvestingSubmitButton.UseVisualStyleBackColor = true;
            this.harvestingSubmitButton.Click += new System.EventHandler(this.harvestingSubmitButton_Click);
            // 
            // harvestingCommentsLabel
            // 
            this.harvestingCommentsLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.harvestingCommentsLabel.Location = new System.Drawing.Point(3, 109);
            this.harvestingCommentsLabel.Name = "harvestingCommentsLabel";
            this.harvestingCommentsLabel.Size = new System.Drawing.Size(113, 194);
            this.harvestingCommentsLabel.TabIndex = 9;
            this.harvestingCommentsLabel.Text = "Comments";
            this.harvestingCommentsLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // harvestingCategoryTextbox
            // 
            this.harvestingCategoryTextbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.harvestingCategoryTextbox.Location = new System.Drawing.Point(122, 76);
            this.harvestingCategoryTextbox.Name = "harvestingCategoryTextbox";
            this.harvestingCategoryTextbox.Size = new System.Drawing.Size(711, 29);
            this.harvestingCategoryTextbox.TabIndex = 4;
            // 
            // harvestingWeightLabel
            // 
            this.harvestingWeightLabel.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.harvestingWeightLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.harvestingWeightLabel.Location = new System.Drawing.Point(3, 41);
            this.harvestingWeightLabel.Name = "harvestingWeightLabel";
            this.harvestingWeightLabel.Size = new System.Drawing.Size(113, 32);
            this.harvestingWeightLabel.TabIndex = 4;
            this.harvestingWeightLabel.Text = "Weight Taken";
            this.harvestingWeightLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // harvestingCategoryLabel
            // 
            this.harvestingCategoryLabel.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.harvestingCategoryLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.harvestingCategoryLabel.Location = new System.Drawing.Point(3, 73);
            this.harvestingCategoryLabel.Name = "harvestingCategoryLabel";
            this.harvestingCategoryLabel.Size = new System.Drawing.Size(113, 35);
            this.harvestingCategoryLabel.TabIndex = 7;
            this.harvestingCategoryLabel.Text = "Category";
            this.harvestingCategoryLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // harvestingWeightNumericbox
            // 
            this.harvestingWeightNumericbox.DecimalPlaces = 2;
            this.harvestingWeightNumericbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.harvestingWeightNumericbox.Location = new System.Drawing.Point(122, 44);
            this.harvestingWeightNumericbox.Maximum = new decimal(new int[] {
            276447231,
            23283,
            0,
            0});
            this.harvestingWeightNumericbox.Name = "harvestingWeightNumericbox";
            this.harvestingWeightNumericbox.Size = new System.Drawing.Size(711, 29);
            this.harvestingWeightNumericbox.TabIndex = 3;
            this.harvestingWeightNumericbox.ValueChanged += new System.EventHandler(this.harvestingWeightNumericbox_ValueChanged);
            // 
            // harvestingParentLabel
            // 
            this.harvestingParentLabel.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.harvestingParentLabel.Enabled = false;
            this.harvestingParentLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.harvestingParentLabel.Location = new System.Drawing.Point(3, 3);
            this.harvestingParentLabel.Name = "harvestingParentLabel";
            this.harvestingParentLabel.Size = new System.Drawing.Size(113, 35);
            this.harvestingParentLabel.TabIndex = 9999;
            this.harvestingParentLabel.Text = "RecievingID";
            this.harvestingParentLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // harvestReceivingID
            // 
            this.harvestReceivingID.Location = new System.Drawing.Point(122, 3);
            this.harvestReceivingID.Maximum = new decimal(new int[] {
            1410065407,
            2,
            0,
            0});
            this.harvestReceivingID.Name = "harvestReceivingID";
            this.harvestReceivingID.Size = new System.Drawing.Size(711, 35);
            this.harvestReceivingID.TabIndex = 10000;
            // 
            // reuseTab
            // 
            this.reuseTab.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(130)))), ((int)(((byte)(162)))), ((int)(((byte)(106)))));
            this.reuseTab.Controls.Add(this.reuseLayoutPanel);
            this.reuseTab.Location = new System.Drawing.Point(4, 34);
            this.reuseTab.Name = "reuseTab";
            this.reuseTab.Size = new System.Drawing.Size(1045, 619);
            this.reuseTab.TabIndex = 2;
            this.reuseTab.Text = "Reuse";
            // 
            // reuseLayoutPanel
            // 
            this.reuseLayoutPanel.AutoScroll = true;
            this.reuseLayoutPanel.ColumnCount = 3;
            this.reuseLayoutPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 20.93822F));
            this.reuseLayoutPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 79.06178F));
            this.reuseLayoutPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 170F));
            this.reuseLayoutPanel.Controls.Add(this.reuseParentIDLabel, 0, 0);
            this.reuseLayoutPanel.Controls.Add(this.reuseWeightLabel, 0, 1);
            this.reuseLayoutPanel.Controls.Add(this.reuseCategoryLabel, 0, 2);
            this.reuseLayoutPanel.Controls.Add(this.reuseCategoryTextbox, 1, 2);
            this.reuseLayoutPanel.Controls.Add(this.reuseWeightNumericbox, 1, 1);
            this.reuseLayoutPanel.Controls.Add(this.reuseCommentsTextbox, 1, 5);
            this.reuseLayoutPanel.Controls.Add(this.reuseSubmitButton, 2, 5);
            this.reuseLayoutPanel.Controls.Add(this.reuseCommentsLabel, 0, 5);
            this.reuseLayoutPanel.Controls.Add(this.reuseListedCheckbox, 0, 3);
            this.reuseLayoutPanel.Controls.Add(this.reuseSoldCheckbox, 1, 3);
            this.reuseLayoutPanel.Controls.Add(this.reuseSalePriceLabel, 0, 4);
            this.reuseLayoutPanel.Controls.Add(this.reuseSaleAmountNumericbox, 1, 4);
            this.reuseLayoutPanel.Controls.Add(this.reuseHarvestID, 1, 0);
            this.reuseLayoutPanel.Dock = System.Windows.Forms.DockStyle.Fill;
            this.reuseLayoutPanel.Location = new System.Drawing.Point(0, 0);
            this.reuseLayoutPanel.Name = "reuseLayoutPanel";
            this.reuseLayoutPanel.RowCount = 7;
            this.reuseLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 52.30769F));
            this.reuseLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 38F));
            this.reuseLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 39F));
            this.reuseLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 40F));
            this.reuseLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 42F));
            this.reuseLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 408F));
            this.reuseLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 14F));
            this.reuseLayoutPanel.Size = new System.Drawing.Size(1045, 619);
            this.reuseLayoutPanel.TabIndex = 0;
            // 
            // reuseParentIDLabel
            // 
            this.reuseParentIDLabel.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.reuseParentIDLabel.AutoSize = true;
            this.reuseParentIDLabel.Location = new System.Drawing.Point(3, 7);
            this.reuseParentIDLabel.Name = "reuseParentIDLabel";
            this.reuseParentIDLabel.Size = new System.Drawing.Size(95, 24);
            this.reuseParentIDLabel.TabIndex = 29;
            this.reuseParentIDLabel.Text = "Harvest ID";
            // 
            // reuseWeightLabel
            // 
            this.reuseWeightLabel.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.reuseWeightLabel.AutoSize = true;
            this.reuseWeightLabel.Location = new System.Drawing.Point(3, 45);
            this.reuseWeightLabel.Name = "reuseWeightLabel";
            this.reuseWeightLabel.Size = new System.Drawing.Size(69, 24);
            this.reuseWeightLabel.TabIndex = 79;
            this.reuseWeightLabel.Text = "Weight";
            // 
            // reuseCategoryLabel
            // 
            this.reuseCategoryLabel.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.reuseCategoryLabel.AutoSize = true;
            this.reuseCategoryLabel.Location = new System.Drawing.Point(3, 83);
            this.reuseCategoryLabel.Name = "reuseCategoryLabel";
            this.reuseCategoryLabel.Size = new System.Drawing.Size(85, 24);
            this.reuseCategoryLabel.TabIndex = 119;
            this.reuseCategoryLabel.Text = "Category";
            // 
            // reuseCategoryTextbox
            // 
            this.reuseCategoryTextbox.Location = new System.Drawing.Point(186, 79);
            this.reuseCategoryTextbox.Name = "reuseCategoryTextbox";
            this.reuseCategoryTextbox.Size = new System.Drawing.Size(630, 29);
            this.reuseCategoryTextbox.TabIndex = 3;
            this.reuseCategoryTextbox.TextChanged += new System.EventHandler(this.reuseCategoryTextbox_TextChanged);
            // 
            // reuseWeightNumericbox
            // 
            this.reuseWeightNumericbox.DecimalPlaces = 2;
            this.reuseWeightNumericbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.reuseWeightNumericbox.Location = new System.Drawing.Point(186, 41);
            this.reuseWeightNumericbox.Maximum = new decimal(new int[] {
            276447231,
            23283,
            0,
            0});
            this.reuseWeightNumericbox.Name = "reuseWeightNumericbox";
            this.reuseWeightNumericbox.Size = new System.Drawing.Size(630, 29);
            this.reuseWeightNumericbox.TabIndex = 2;
            this.reuseWeightNumericbox.ValueChanged += new System.EventHandler(this.reuseWeightNumericbox_ValueChanged);
            // 
            // reuseCommentsTextbox
            // 
            this.reuseCommentsTextbox.Location = new System.Drawing.Point(186, 200);
            this.reuseCommentsTextbox.Multiline = true;
            this.reuseCommentsTextbox.Name = "reuseCommentsTextbox";
            this.reuseCommentsTextbox.Size = new System.Drawing.Size(630, 335);
            this.reuseCommentsTextbox.TabIndex = 7;
            this.reuseCommentsTextbox.TextChanged += new System.EventHandler(this.reuseCommentsTextbox_TextChanged);
            // 
            // reuseSubmitButton
            // 
            this.reuseSubmitButton.Enabled = false;
            this.reuseSubmitButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.reuseSubmitButton.Location = new System.Drawing.Point(877, 200);
            this.reuseSubmitButton.Name = "reuseSubmitButton";
            this.reuseSubmitButton.Size = new System.Drawing.Size(164, 59);
            this.reuseSubmitButton.TabIndex = 8;
            this.reuseSubmitButton.Text = "Submit";
            this.reuseSubmitButton.UseVisualStyleBackColor = true;
            this.reuseSubmitButton.Click += new System.EventHandler(this.reuseSubmitButton_Click);
            // 
            // reuseCommentsLabel
            // 
            this.reuseCommentsLabel.Location = new System.Drawing.Point(3, 197);
            this.reuseCommentsLabel.Name = "reuseCommentsLabel";
            this.reuseCommentsLabel.Size = new System.Drawing.Size(148, 210);
            this.reuseCommentsLabel.TabIndex = 9;
            this.reuseCommentsLabel.Text = "Description";
            this.reuseCommentsLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // reuseListedCheckbox
            // 
            this.reuseListedCheckbox.Anchor = System.Windows.Forms.AnchorStyles.Right;
            this.reuseListedCheckbox.AutoSize = true;
            this.reuseListedCheckbox.Location = new System.Drawing.Point(34, 121);
            this.reuseListedCheckbox.Name = "reuseListedCheckbox";
            this.reuseListedCheckbox.Size = new System.Drawing.Size(146, 28);
            this.reuseListedCheckbox.TabIndex = 4;
            this.reuseListedCheckbox.Text = "Listed for Sale";
            this.reuseListedCheckbox.UseVisualStyleBackColor = true;
            this.reuseListedCheckbox.CheckedChanged += new System.EventHandler(this.reuseListedCheckbox_CheckedChanged);
            // 
            // reuseSoldCheckbox
            // 
            this.reuseSoldCheckbox.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.reuseSoldCheckbox.AutoSize = true;
            this.reuseSoldCheckbox.Location = new System.Drawing.Point(186, 121);
            this.reuseSoldCheckbox.Name = "reuseSoldCheckbox";
            this.reuseSoldCheckbox.Size = new System.Drawing.Size(67, 28);
            this.reuseSoldCheckbox.TabIndex = 5;
            this.reuseSoldCheckbox.Text = "Sold";
            this.reuseSoldCheckbox.UseVisualStyleBackColor = true;
            this.reuseSoldCheckbox.CheckedChanged += new System.EventHandler(this.reuseSoldCheckbox_CheckedChanged);
            // 
            // reuseSalePriceLabel
            // 
            this.reuseSalePriceLabel.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.reuseSalePriceLabel.AutoSize = true;
            this.reuseSalePriceLabel.Location = new System.Drawing.Point(3, 164);
            this.reuseSalePriceLabel.Name = "reuseSalePriceLabel";
            this.reuseSalePriceLabel.Size = new System.Drawing.Size(156, 24);
            this.reuseSalePriceLabel.TabIndex = 16;
            this.reuseSalePriceLabel.Text = "Sold For (Dollars)";
            // 
            // reuseSaleAmountNumericbox
            // 
            this.reuseSaleAmountNumericbox.DecimalPlaces = 2;
            this.reuseSaleAmountNumericbox.Enabled = false;
            this.reuseSaleAmountNumericbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.reuseSaleAmountNumericbox.Location = new System.Drawing.Point(186, 158);
            this.reuseSaleAmountNumericbox.Maximum = new decimal(new int[] {
            276447231,
            23283,
            0,
            0});
            this.reuseSaleAmountNumericbox.Name = "reuseSaleAmountNumericbox";
            this.reuseSaleAmountNumericbox.Size = new System.Drawing.Size(630, 29);
            this.reuseSaleAmountNumericbox.TabIndex = 6;
            this.reuseSaleAmountNumericbox.ValueChanged += new System.EventHandler(this.reuseSaleAmountNumericbox_ValueChanged);
            // 
            // reuseHarvestID
            // 
            this.reuseHarvestID.Location = new System.Drawing.Point(186, 3);
            this.reuseHarvestID.Maximum = new decimal(new int[] {
            1215752191,
            23,
            0,
            0});
            this.reuseHarvestID.Name = "reuseHarvestID";
            this.reuseHarvestID.Size = new System.Drawing.Size(630, 29);
            this.reuseHarvestID.TabIndex = 120;
            // 
            // searchTab
            // 
            this.searchTab.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(130)))), ((int)(((byte)(162)))), ((int)(((byte)(106)))));
            this.searchTab.Controls.Add(this.searchLayoutPanel);
            this.searchTab.Location = new System.Drawing.Point(4, 34);
            this.searchTab.Name = "searchTab";
            this.searchTab.Size = new System.Drawing.Size(1045, 619);
            this.searchTab.TabIndex = 4;
            this.searchTab.Text = "Update / Edit";
            // 
            // searchLayoutPanel
            // 
            this.searchLayoutPanel.ColumnCount = 3;
            this.searchLayoutPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 47.98851F));
            this.searchLayoutPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 52.01149F));
            this.searchLayoutPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 379F));
            this.searchLayoutPanel.Controls.Add(this.harvestSearch, 1, 1);
            this.searchLayoutPanel.Controls.Add(this.receivingSearch, 0, 1);
            this.searchLayoutPanel.Controls.Add(this.reuseSearch, 2, 1);
            this.searchLayoutPanel.Controls.Add(this.searchClientLabel, 2, 0);
            this.searchLayoutPanel.Controls.Add(this.searchIDLabel, 1, 0);
            this.searchLayoutPanel.Controls.Add(this.label1, 0, 0);
            this.searchLayoutPanel.Controls.Add(this.splitContainer1, 0, 2);
            this.searchLayoutPanel.Controls.Add(this.splitContainer2, 1, 2);
            this.searchLayoutPanel.Controls.Add(this.splitContainer3, 2, 2);
            this.searchLayoutPanel.Controls.Add(this.splitContainer4, 2, 3);
            this.searchLayoutPanel.Controls.Add(this.splitContainer5, 1, 3);
            this.searchLayoutPanel.Dock = System.Windows.Forms.DockStyle.Fill;
            this.searchLayoutPanel.Location = new System.Drawing.Point(0, 0);
            this.searchLayoutPanel.Name = "searchLayoutPanel";
            this.searchLayoutPanel.RowCount = 4;
            this.searchLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50.53764F));
            this.searchLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 49.46236F));
            this.searchLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 183F));
            this.searchLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 364F));
            this.searchLayoutPanel.Size = new System.Drawing.Size(1045, 619);
            this.searchLayoutPanel.TabIndex = 0;
            // 
            // harvestSearch
            // 
            this.harvestSearch.Location = new System.Drawing.Point(322, 39);
            this.harvestSearch.Name = "harvestSearch";
            this.harvestSearch.Size = new System.Drawing.Size(340, 29);
            this.harvestSearch.TabIndex = 3;
            this.harvestSearch.TextChanged += new System.EventHandler(this.harvestSearch_TextChanged);
            // 
            // receivingSearch
            // 
            this.receivingSearch.Location = new System.Drawing.Point(3, 39);
            this.receivingSearch.Name = "receivingSearch";
            this.receivingSearch.Size = new System.Drawing.Size(313, 29);
            this.receivingSearch.TabIndex = 1;
            this.receivingSearch.TextChanged += new System.EventHandler(this.receivingSearch_TextChanged);
            // 
            // reuseSearch
            // 
            this.reuseSearch.Location = new System.Drawing.Point(668, 39);
            this.reuseSearch.Name = "reuseSearch";
            this.reuseSearch.Size = new System.Drawing.Size(374, 29);
            this.reuseSearch.TabIndex = 5;
            this.reuseSearch.TextChanged += new System.EventHandler(this.reuseSearch_TextChanged);
            // 
            // searchClientLabel
            // 
            this.searchClientLabel.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.searchClientLabel.AutoSize = true;
            this.searchClientLabel.Location = new System.Drawing.Point(668, 6);
            this.searchClientLabel.Name = "searchClientLabel";
            this.searchClientLabel.Size = new System.Drawing.Size(65, 24);
            this.searchClientLabel.TabIndex = 1;
            this.searchClientLabel.Text = "Reuse";
            // 
            // searchIDLabel
            // 
            this.searchIDLabel.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.searchIDLabel.AutoSize = true;
            this.searchIDLabel.Location = new System.Drawing.Point(322, 6);
            this.searchIDLabel.Name = "searchIDLabel";
            this.searchIDLabel.Size = new System.Drawing.Size(73, 24);
            this.searchIDLabel.TabIndex = 0;
            this.searchIDLabel.Text = "Harvest";
            // 
            // label1
            // 
            this.label1.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(3, 6);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(94, 24);
            this.label1.TabIndex = 6;
            this.label1.Text = "Receiving";
            // 
            // splitContainer1
            // 
            this.splitContainer1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainer1.Location = new System.Drawing.Point(3, 74);
            this.splitContainer1.Name = "splitContainer1";
            // 
            // splitContainer1.Panel1
            // 
            this.splitContainer1.Panel1.Controls.Add(this.receivingListBox);
            // 
            // splitContainer1.Panel2
            // 
            this.splitContainer1.Panel2.Controls.Add(this.receivingButtonRemove);
            this.splitContainer1.Size = new System.Drawing.Size(313, 177);
            this.splitContainer1.SplitterDistance = 196;
            this.splitContainer1.TabIndex = 10;
            // 
            // receivingListBox
            // 
            this.receivingListBox.FormattingEnabled = true;
            this.receivingListBox.ItemHeight = 24;
            this.receivingListBox.Location = new System.Drawing.Point(5, 3);
            this.receivingListBox.Name = "receivingListBox";
            this.receivingListBox.Size = new System.Drawing.Size(188, 172);
            this.receivingListBox.TabIndex = 7;
            // 
            // receivingButtonRemove
            // 
            this.receivingButtonRemove.Location = new System.Drawing.Point(3, 3);
            this.receivingButtonRemove.Name = "receivingButtonRemove";
            this.receivingButtonRemove.Size = new System.Drawing.Size(107, 40);
            this.receivingButtonRemove.TabIndex = 2;
            this.receivingButtonRemove.Text = "Remove";
            this.receivingButtonRemove.UseVisualStyleBackColor = true;
            // 
            // splitContainer2
            // 
            this.splitContainer2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainer2.Location = new System.Drawing.Point(322, 74);
            this.splitContainer2.Name = "splitContainer2";
            // 
            // splitContainer2.Panel1
            // 
            this.splitContainer2.Panel1.Controls.Add(this.harvestListBox);
            // 
            // splitContainer2.Panel2
            // 
            this.splitContainer2.Panel2.Controls.Add(this.harvestButtonRemove);
            this.splitContainer2.Panel2.Controls.Add(this.harvestButtonReject);
            this.splitContainer2.Size = new System.Drawing.Size(340, 177);
            this.splitContainer2.SplitterDistance = 213;
            this.splitContainer2.TabIndex = 11;
            // 
            // harvestListBox
            // 
            this.harvestListBox.FormattingEnabled = true;
            this.harvestListBox.ItemHeight = 24;
            this.harvestListBox.Location = new System.Drawing.Point(0, 0);
            this.harvestListBox.Name = "harvestListBox";
            this.harvestListBox.Size = new System.Drawing.Size(210, 172);
            this.harvestListBox.TabIndex = 8;
            // 
            // harvestButtonRemove
            // 
            this.harvestButtonRemove.Location = new System.Drawing.Point(3, 46);
            this.harvestButtonRemove.Name = "harvestButtonRemove";
            this.harvestButtonRemove.Size = new System.Drawing.Size(120, 40);
            this.harvestButtonRemove.TabIndex = 1;
            this.harvestButtonRemove.Text = "Remove";
            this.harvestButtonRemove.UseVisualStyleBackColor = true;
            // 
            // harvestButtonReject
            // 
            this.harvestButtonReject.Location = new System.Drawing.Point(3, 3);
            this.harvestButtonReject.Name = "harvestButtonReject";
            this.harvestButtonReject.Size = new System.Drawing.Size(120, 40);
            this.harvestButtonReject.TabIndex = 0;
            this.harvestButtonReject.Text = "Reject";
            this.harvestButtonReject.UseVisualStyleBackColor = true;
            // 
            // splitContainer3
            // 
            this.splitContainer3.Location = new System.Drawing.Point(668, 74);
            this.splitContainer3.Name = "splitContainer3";
            // 
            // splitContainer3.Panel1
            // 
            this.splitContainer3.Panel1.Controls.Add(this.reuseListBox);
            // 
            // splitContainer3.Panel2
            // 
            this.splitContainer3.Panel2.Controls.Add(this.reuseButtonSold);
            this.splitContainer3.Panel2.Controls.Add(this.reuseButtonReject);
            this.splitContainer3.Panel2.Controls.Add(this.reuseButtonRemove);
            this.splitContainer3.Panel2.Controls.Add(this.reuseButtonListed);
            this.splitContainer3.Size = new System.Drawing.Size(343, 177);
            this.splitContainer3.SplitterDistance = 212;
            this.splitContainer3.TabIndex = 12;
            // 
            // reuseListBox
            // 
            this.reuseListBox.FormattingEnabled = true;
            this.reuseListBox.ItemHeight = 24;
            this.reuseListBox.Location = new System.Drawing.Point(0, 0);
            this.reuseListBox.Name = "reuseListBox";
            this.reuseListBox.Size = new System.Drawing.Size(209, 172);
            this.reuseListBox.TabIndex = 9;
            this.reuseListBox.SelectedIndexChanged += new System.EventHandler(this.reuseListBox_SelectedIndexChanged);
            // 
            // reuseButtonRemove
            // 
            this.reuseButtonRemove.Location = new System.Drawing.Point(2, 92);
            this.reuseButtonRemove.Name = "reuseButtonRemove";
            this.reuseButtonRemove.Size = new System.Drawing.Size(125, 40);
            this.reuseButtonRemove.TabIndex = 2;
            this.reuseButtonRemove.Text = "Remove";
            this.reuseButtonRemove.UseVisualStyleBackColor = true;
            // 
            // reuseButtonSold
            // 
            this.reuseButtonSold.Location = new System.Drawing.Point(2, 138);
            this.reuseButtonSold.Name = "reuseButtonSold";
            this.reuseButtonSold.Size = new System.Drawing.Size(125, 40);
            this.reuseButtonSold.TabIndex = 2;
            this.reuseButtonSold.Text = "Sold";
            this.reuseButtonSold.UseVisualStyleBackColor = true;
            this.reuseButtonSold.Click += new System.EventHandler(this.reuseButtonSold_Click);
            // 
            // reuseButtonReject
            // 
            this.reuseButtonReject.Location = new System.Drawing.Point(2, 0);
            this.reuseButtonReject.Name = "reuseButtonReject";
            this.reuseButtonReject.Size = new System.Drawing.Size(125, 40);
            this.reuseButtonReject.TabIndex = 1;
            this.reuseButtonReject.Text = "Reject";
            this.reuseButtonReject.UseVisualStyleBackColor = true;
            this.reuseButtonReject.Click += new System.EventHandler(this.reuseButtonReject_Click);
            // 
            // reuseButtonListed
            // 
            this.reuseButtonListed.Location = new System.Drawing.Point(2, 46);
            this.reuseButtonListed.Name = "reuseButtonListed";
            this.reuseButtonListed.Size = new System.Drawing.Size(125, 40);
            this.reuseButtonListed.TabIndex = 1;
            this.reuseButtonListed.Text = "Listed";
            this.reuseButtonListed.UseVisualStyleBackColor = true;
            this.reuseButtonListed.Click += new System.EventHandler(this.reuseButtonListed_Click);
            // 
            // splitContainer4
            // 
            this.splitContainer4.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainer4.Location = new System.Drawing.Point(668, 257);
            this.splitContainer4.Name = "splitContainer4";
            // 
            // splitContainer4.Panel1
            // 
            this.splitContainer4.Panel1.Controls.Add(this.panel1);
            // 
            // splitContainer4.Panel2
            // 
            this.splitContainer4.Panel2.Controls.Add(this.panel2);
            this.splitContainer4.Size = new System.Drawing.Size(374, 359);
            this.splitContainer4.SplitterDistance = 124;
            this.splitContainer4.TabIndex = 13;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.label8);
            this.panel1.Controls.Add(this.label7);
            this.panel1.Controls.Add(this.label6);
            this.panel1.Controls.Add(this.label5);
            this.panel1.Controls.Add(this.label4);
            this.panel1.Controls.Add(this.label3);
            this.panel1.Controls.Add(this.reuseWeightLBL);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(124, 359);
            this.panel1.TabIndex = 0;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(17, 254);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(104, 24);
            this.label8.TabIndex = 8;
            this.label8.Text = "Description";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(39, 188);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(82, 24);
            this.label7.TabIndex = 7;
            this.label7.Text = "Sold For";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(6, 222);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(116, 24);
            this.label6.TabIndex = 6;
            this.label6.Text = "Rejected On";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(42, 153);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(79, 24);
            this.label5.TabIndex = 5;
            this.label5.Text = "Sold On";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(32, 118);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(90, 24);
            this.label4.TabIndex = 4;
            this.label4.Text = "Listed On";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(61, 83);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(60, 24);
            this.label3.TabIndex = 3;
            this.label3.Text = "Status";
            // 
            // reuseWeightLBL
            // 
            this.reuseWeightLBL.AutoSize = true;
            this.reuseWeightLBL.Location = new System.Drawing.Point(52, 13);
            this.reuseWeightLBL.Name = "reuseWeightLBL";
            this.reuseWeightLBL.Size = new System.Drawing.Size(69, 24);
            this.reuseWeightLBL.TabIndex = 0;
            this.reuseWeightLBL.Text = "Weight";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(36, 48);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(85, 24);
            this.label2.TabIndex = 2;
            this.label2.Text = "Category";
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.reuseDescriptionResult);
            this.panel2.Controls.Add(this.reuseSoldForResult);
            this.panel2.Controls.Add(this.reuseRejectedOnResult);
            this.panel2.Controls.Add(this.reuseSoldOnResult);
            this.panel2.Controls.Add(this.reuseListedOnResult);
            this.panel2.Controls.Add(this.reuseStatusResult);
            this.panel2.Controls.Add(this.reuseCategoryResult);
            this.panel2.Controls.Add(this.reuseWeightResult);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel2.Location = new System.Drawing.Point(0, 0);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(246, 359);
            this.panel2.TabIndex = 0;
            // 
            // reuseDescriptionResult
            // 
            this.reuseDescriptionResult.Location = new System.Drawing.Point(3, 254);
            this.reuseDescriptionResult.Multiline = true;
            this.reuseDescriptionResult.Name = "reuseDescriptionResult";
            this.reuseDescriptionResult.Size = new System.Drawing.Size(238, 100);
            this.reuseDescriptionResult.TabIndex = 7;
            // 
            // reuseSoldForResult
            // 
            this.reuseSoldForResult.Location = new System.Drawing.Point(3, 185);
            this.reuseSoldForResult.Name = "reuseSoldForResult";
            this.reuseSoldForResult.Size = new System.Drawing.Size(238, 29);
            this.reuseSoldForResult.TabIndex = 6;
            // 
            // reuseRejectedOnResult
            // 
            this.reuseRejectedOnResult.Location = new System.Drawing.Point(3, 219);
            this.reuseRejectedOnResult.Name = "reuseRejectedOnResult";
            this.reuseRejectedOnResult.Size = new System.Drawing.Size(238, 29);
            this.reuseRejectedOnResult.TabIndex = 5;
            // 
            // reuseSoldOnResult
            // 
            this.reuseSoldOnResult.Location = new System.Drawing.Point(3, 150);
            this.reuseSoldOnResult.Name = "reuseSoldOnResult";
            this.reuseSoldOnResult.Size = new System.Drawing.Size(238, 29);
            this.reuseSoldOnResult.TabIndex = 4;
            // 
            // reuseListedOnResult
            // 
            this.reuseListedOnResult.Location = new System.Drawing.Point(3, 115);
            this.reuseListedOnResult.Name = "reuseListedOnResult";
            this.reuseListedOnResult.Size = new System.Drawing.Size(238, 29);
            this.reuseListedOnResult.TabIndex = 3;
            // 
            // reuseStatusResult
            // 
            this.reuseStatusResult.Location = new System.Drawing.Point(3, 80);
            this.reuseStatusResult.Name = "reuseStatusResult";
            this.reuseStatusResult.Size = new System.Drawing.Size(238, 29);
            this.reuseStatusResult.TabIndex = 2;
            // 
            // reuseCategoryResult
            // 
            this.reuseCategoryResult.Location = new System.Drawing.Point(3, 45);
            this.reuseCategoryResult.Name = "reuseCategoryResult";
            this.reuseCategoryResult.Size = new System.Drawing.Size(238, 29);
            this.reuseCategoryResult.TabIndex = 1;
            // 
            // reuseWeightResult
            // 
            this.reuseWeightResult.Location = new System.Drawing.Point(3, 10);
            this.reuseWeightResult.Name = "reuseWeightResult";
            this.reuseWeightResult.Size = new System.Drawing.Size(238, 29);
            this.reuseWeightResult.TabIndex = 0;
            // 
            // splitContainer5
            // 
            this.splitContainer5.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainer5.Location = new System.Drawing.Point(322, 257);
            this.splitContainer5.Name = "splitContainer5";
            // 
            // splitContainer5.Panel1
            // 
            this.splitContainer5.Panel1.Controls.Add(this.panel3);
            // 
            // splitContainer5.Panel2
            // 
            this.splitContainer5.Panel2.Controls.Add(this.panel4);
            this.splitContainer5.Size = new System.Drawing.Size(340, 359);
            this.splitContainer5.SplitterDistance = 123;
            this.splitContainer5.TabIndex = 14;
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.label9);
            this.panel3.Controls.Add(this.label11);
            this.panel3.Controls.Add(this.label15);
            this.panel3.Controls.Add(this.label16);
            this.panel3.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel3.Location = new System.Drawing.Point(0, 0);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(123, 359);
            this.panel3.TabIndex = 1;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(16, 115);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(101, 24);
            this.label9.TabIndex = 8;
            this.label9.Text = "Comments";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(3, 83);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(116, 24);
            this.label11.TabIndex = 6;
            this.label11.Text = "Rejected On";
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.Location = new System.Drawing.Point(52, 13);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(69, 24);
            this.label15.TabIndex = 0;
            this.label15.Text = "Weight";
            // 
            // label16
            // 
            this.label16.AutoSize = true;
            this.label16.Location = new System.Drawing.Point(36, 48);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(85, 24);
            this.label16.TabIndex = 2;
            this.label16.Text = "Category";
            // 
            // panel4
            // 
            this.panel4.Controls.Add(this.textBox1);
            this.panel4.Controls.Add(this.textBox3);
            this.panel4.Controls.Add(this.textBox7);
            this.panel4.Controls.Add(this.textBox8);
            this.panel4.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel4.Location = new System.Drawing.Point(0, 0);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(213, 359);
            this.panel4.TabIndex = 1;
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(3, 115);
            this.textBox1.Multiline = true;
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(207, 100);
            this.textBox1.TabIndex = 7;
            // 
            // textBox3
            // 
            this.textBox3.Location = new System.Drawing.Point(3, 80);
            this.textBox3.Name = "textBox3";
            this.textBox3.Size = new System.Drawing.Size(207, 29);
            this.textBox3.TabIndex = 5;
            // 
            // textBox7
            // 
            this.textBox7.Location = new System.Drawing.Point(3, 45);
            this.textBox7.Name = "textBox7";
            this.textBox7.Size = new System.Drawing.Size(207, 29);
            this.textBox7.TabIndex = 1;
            // 
            // textBox8
            // 
            this.textBox8.Location = new System.Drawing.Point(3, 10);
            this.textBox8.Name = "textBox8";
            this.textBox8.Size = new System.Drawing.Size(207, 29);
            this.textBox8.TabIndex = 0;
            // 
            // Main
            // 
            this.BackColor = System.Drawing.Color.LightGray;
            this.ClientSize = new System.Drawing.Size(1053, 657);
            this.Controls.Add(this.tabControl);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Name = "Main";
            this.Load += new System.EventHandler(this.Main_Load);
            this.tabControl.ResumeLayout(false);
            this.receivingTab.ResumeLayout(false);
            this.receivingTab.PerformLayout();
            this.receivingLayoutPanel.ResumeLayout(false);
            this.receivingLayoutPanel.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.receivingWeightNumericbox)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.receivingJobID)).EndInit();
            this.harvestingTab.ResumeLayout(false);
            this.harvestingLayoutPanel.ResumeLayout(false);
            this.harvestingLayoutPanel.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.harvestingWeightNumericbox)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.harvestReceivingID)).EndInit();
            this.reuseTab.ResumeLayout(false);
            this.reuseLayoutPanel.ResumeLayout(false);
            this.reuseLayoutPanel.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.reuseWeightNumericbox)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.reuseSaleAmountNumericbox)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.reuseHarvestID)).EndInit();
            this.searchTab.ResumeLayout(false);
            this.searchLayoutPanel.ResumeLayout(false);
            this.searchLayoutPanel.PerformLayout();
            this.splitContainer1.Panel1.ResumeLayout(false);
            this.splitContainer1.Panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).EndInit();
            this.splitContainer1.ResumeLayout(false);
            this.splitContainer2.Panel1.ResumeLayout(false);
            this.splitContainer2.Panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer2)).EndInit();
            this.splitContainer2.ResumeLayout(false);
            this.splitContainer3.Panel1.ResumeLayout(false);
            this.splitContainer3.Panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer3)).EndInit();
            this.splitContainer3.ResumeLayout(false);
            this.splitContainer4.Panel1.ResumeLayout(false);
            this.splitContainer4.Panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer4)).EndInit();
            this.splitContainer4.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.splitContainer5.Panel1.ResumeLayout(false);
            this.splitContainer5.Panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer5)).EndInit();
            this.splitContainer5.ResumeLayout(false);
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            this.panel4.ResumeLayout(false);
            this.panel4.PerformLayout();
            this.ResumeLayout(false);

        }
        #endregion
        private System.Windows.Forms.ContextMenuStrip contextMenuStrip1;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem1;
        private System.Windows.Forms.TextBox SerialData;
        private System.IO.Ports.SerialPort ScanComm;
        private System.Windows.Forms.OpenFileDialog OpenFile1;
        private System.Windows.Forms.TabControl tabControl;
        private System.Windows.Forms.TabPage receivingTab;
        private System.Windows.Forms.TableLayoutPanel receivingLayoutPanel;
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
        private System.Windows.Forms.Label harvestingParentLabel;
        private System.Windows.Forms.TextBox harvestingCategoryTextbox;
        private System.Windows.Forms.TextBox harvestingCommentsTextbox;
        private System.Windows.Forms.CheckBox harvestingPileCheckbox;
        private System.Windows.Forms.Label harvestingWeightLabel;
        private System.Windows.Forms.NumericUpDown harvestingWeightNumericbox;
        private System.Windows.Forms.Label harvestingCategoryLabel;
        private System.Windows.Forms.Label harvestingCommentsLabel;
        private System.Windows.Forms.Button harvestingSubmitButton;
        private System.Windows.Forms.TabPage reuseTab;
        private System.Windows.Forms.TabPage searchTab;
        private System.Windows.Forms.TableLayoutPanel harvestingLayoutPanel;
        private System.Windows.Forms.TableLayoutPanel reuseLayoutPanel;
        private System.Windows.Forms.TextBox reuseCategoryTextbox;
        private System.Windows.Forms.TextBox reuseCommentsTextbox;
        private System.Windows.Forms.NumericUpDown reuseWeightNumericbox;
        private System.Windows.Forms.CheckBox reuseSoldCheckbox;
        private System.Windows.Forms.Button reuseSubmitButton;
        private System.Windows.Forms.Label searchIDLabel;
        private System.Windows.Forms.Label searchClientLabel;
        private System.Windows.Forms.TextBox receivingSearch;
        private System.Windows.Forms.TextBox harvestSearch;
        private System.Windows.Forms.TableLayoutPanel searchLayoutPanel;
        private System.Windows.Forms.Label receivingJobIDLabel;
        private System.Windows.Forms.Label reuseParentIDLabel;
        private System.Windows.Forms.Label reuseWeightLabel;
        private System.Windows.Forms.Label reuseCategoryLabel;
        private System.Windows.Forms.CheckBox reuseListedCheckbox;
        private System.Windows.Forms.Label reuseCommentsLabel;
        private System.Windows.Forms.Label reuseSalePriceLabel;
        private System.Windows.Forms.NumericUpDown reuseSaleAmountNumericbox;
        private System.Windows.Forms.NumericUpDown reuseHarvestID;
        private System.Windows.Forms.NumericUpDown harvestReceivingID;
        private System.Windows.Forms.NumericUpDown receivingJobID;
        private System.Windows.Forms.ListBox reuseListBox;
        private System.Windows.Forms.ListBox harvestListBox;
        private System.Windows.Forms.TextBox reuseSearch;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ListBox receivingListBox;
        private System.Windows.Forms.SplitContainer splitContainer1;
        private System.Windows.Forms.SplitContainer splitContainer2;
        private System.Windows.Forms.SplitContainer splitContainer3;
        private System.Windows.Forms.Button harvestButtonReject;
        private System.Windows.Forms.Button reuseButtonReject;
        private System.Windows.Forms.Button reuseButtonSold;
        private System.Windows.Forms.Button reuseButtonListed;
        private System.Windows.Forms.Button harvestButtonRemove;
        private System.Windows.Forms.Button reuseButtonRemove;
        private System.Windows.Forms.SplitContainer splitContainer4;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label reuseWeightLBL;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.TextBox reuseStatusResult;
        private System.Windows.Forms.TextBox reuseCategoryResult;
        private System.Windows.Forms.TextBox reuseWeightResult;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox reuseDescriptionResult;
        private System.Windows.Forms.TextBox reuseSoldForResult;
        private System.Windows.Forms.TextBox reuseRejectedOnResult;
        private System.Windows.Forms.TextBox reuseSoldOnResult;
        private System.Windows.Forms.TextBox reuseListedOnResult;
        private System.Windows.Forms.Button receivingButtonRemove;
        private System.Windows.Forms.SplitContainer splitContainer5;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.TextBox textBox3;
        private System.Windows.Forms.TextBox textBox7;
        private System.Windows.Forms.TextBox textBox8;
    }
}

