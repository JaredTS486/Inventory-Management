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
            this.harvestingTab = new System.Windows.Forms.TabPage();
            this.harvestingLayoutPanel = new System.Windows.Forms.TableLayoutPanel();
            this.harvestingPileCheckbox = new System.Windows.Forms.CheckBox();
            this.harvestingParentTextbox = new System.Windows.Forms.TextBox();
            this.harvestingParentLabel = new System.Windows.Forms.Label();
            this.harvestingCommentsTextbox = new System.Windows.Forms.TextBox();
            this.harvestingSubmitButton = new System.Windows.Forms.Button();
            this.harvestingCategoryTextbox = new System.Windows.Forms.TextBox();
            this.harvestingWeightLabel = new System.Windows.Forms.Label();
            this.harvestingCategoryLabel = new System.Windows.Forms.Label();
            this.harvestingWeightNumericbox = new System.Windows.Forms.NumericUpDown();
            this.harvestingCommentsLabel = new System.Windows.Forms.Label();
            this.reuseTab = new System.Windows.Forms.TabPage();
            this.reuseLayoutPanel = new System.Windows.Forms.TableLayoutPanel();
            this.reuseParentIDTextbox = new System.Windows.Forms.TextBox();
            this.reuseWeightLabel = new System.Windows.Forms.Label();
            this.reuseCategoryLabel = new System.Windows.Forms.Label();
            this.reuseCategoryTextbox = new System.Windows.Forms.TextBox();
            this.reuseWeightNumericbox = new System.Windows.Forms.NumericUpDown();
            this.reuseCommentsTextbox = new System.Windows.Forms.TextBox();
            this.reuseCommentsLabel = new System.Windows.Forms.Label();
            this.reuseCheckedListBox = new System.Windows.Forms.CheckedListBox();
            this.reuseSubmitButton = new System.Windows.Forms.Button();
            this.reuseParentIDLabel = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.reuseSoldAmmount = new System.Windows.Forms.TextBox();
            this.reuseSoldCheckbox = new System.Windows.Forms.CheckBox();
            this.reuseListedCheckbox = new System.Windows.Forms.CheckBox();
            this.searchTab = new System.Windows.Forms.TabPage();
            this.searchLayoutPanel = new System.Windows.Forms.TableLayoutPanel();
            this.panel2 = new System.Windows.Forms.Panel();
            this.searchClientLabel = new System.Windows.Forms.Label();
            this.panel3 = new System.Windows.Forms.Panel();
            this.panel4 = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.reuseSearch = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.reuseListBox = new System.Windows.Forms.ListBox();
            this.recievingListBox = new System.Windows.Forms.ListBox();
            this.receivingSearch = new System.Windows.Forms.TextBox();
            this.harvestListBox = new System.Windows.Forms.ListBox();
            this.harvestSearch = new System.Windows.Forms.TextBox();
            this.harvestWeightLabel = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.textBox3 = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.textBox4 = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.textBox5 = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.textBox6 = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.textBox7 = new System.Windows.Forms.TextBox();
            this.textBox8 = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.textBox9 = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.textBox10 = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.textBox11 = new System.Windows.Forms.TextBox();
            this.label12 = new System.Windows.Forms.Label();
            this.textBox12 = new System.Windows.Forms.TextBox();
            this.label13 = new System.Windows.Forms.Label();
            this.textBox13 = new System.Windows.Forms.TextBox();
            this.label14 = new System.Windows.Forms.Label();
            this.button3 = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            this.textBox14 = new System.Windows.Forms.TextBox();
            this.tabControl.SuspendLayout();
            this.receivingTab.SuspendLayout();
            this.receivingLayoutPanel.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.receivingWeightNumericbox)).BeginInit();
            this.harvestingTab.SuspendLayout();
            this.harvestingLayoutPanel.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.harvestingWeightNumericbox)).BeginInit();
            this.reuseTab.SuspendLayout();
            this.reuseLayoutPanel.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.reuseWeightNumericbox)).BeginInit();
            this.panel1.SuspendLayout();
            this.searchTab.SuspendLayout();
            this.searchLayoutPanel.SuspendLayout();
            this.panel2.SuspendLayout();
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
            this.receivingLayoutPanel.Controls.Add(this.receivingCategoryTextbox, 1, 4);
            this.receivingLayoutPanel.Controls.Add(this.receivingCommentsTextbox, 1, 5);
            this.receivingLayoutPanel.Controls.Add(this.receivingClientTextbox, 1, 0);
            this.receivingLayoutPanel.Controls.Add(this.receivingWeightLabel, 0, 1);
            this.receivingLayoutPanel.Controls.Add(this.receivingDateReceivedDatebox, 1, 2);
            this.receivingLayoutPanel.Controls.Add(this.receivingWeightNumericbox, 1, 1);
            this.receivingLayoutPanel.Controls.Add(this.receivingSubmitButton, 2, 5);
            this.receivingLayoutPanel.Controls.Add(this.receivingClientLabel, 0, 0);
            this.receivingLayoutPanel.Controls.Add(this.receivingDateReceivedLabel, 0, 2);
            this.receivingLayoutPanel.Controls.Add(this.receivingCategoryLabel, 0, 4);
            this.receivingLayoutPanel.Controls.Add(this.receivingCommentsLabel, 0, 5);
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
            this.receivingPileCheckbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingPileCheckbox.Location = new System.Drawing.Point(839, 3);
            this.receivingPileCheckbox.Name = "receivingPileCheckbox";
            this.receivingPileCheckbox.Size = new System.Drawing.Size(183, 32);
            this.receivingPileCheckbox.TabIndex = 2;
            this.receivingPileCheckbox.Text = "Pile";
            this.receivingPileCheckbox.UseVisualStyleBackColor = true;
            this.receivingPileCheckbox.CheckedChanged += new System.EventHandler(this.receivingPileCheckbox_CheckedChanged);
            // 
            // receivingCommentsLabel
            // 
            this.receivingCommentsLabel.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.receivingCommentsLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingCommentsLabel.Location = new System.Drawing.Point(8, 143);
            this.receivingCommentsLabel.Name = "receivingCommentsLabel";
            this.receivingCommentsLabel.Size = new System.Drawing.Size(116, 48);
            this.receivingCommentsLabel.TabIndex = 9;
            this.receivingCommentsLabel.Text = "Comments";
            this.receivingCommentsLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // receivingCategoryTextbox
            // 
            this.receivingCategoryTextbox.Dock = System.Windows.Forms.DockStyle.Fill;
            this.receivingCategoryTextbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingCategoryTextbox.Location = new System.Drawing.Point(130, 111);
            this.receivingCategoryTextbox.Name = "receivingCategoryTextbox";
            this.receivingCategoryTextbox.Size = new System.Drawing.Size(703, 29);
            this.receivingCategoryTextbox.TabIndex = 8;
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
            this.receivingCommentsTextbox.TabIndex = 11;
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
            this.receivingWeightLabel.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.receivingWeightLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingWeightLabel.Location = new System.Drawing.Point(8, 38);
            this.receivingWeightLabel.Name = "receivingWeightLabel";
            this.receivingWeightLabel.Size = new System.Drawing.Size(116, 32);
            this.receivingWeightLabel.TabIndex = 4;
            this.receivingWeightLabel.Text = "Weight";
            this.receivingWeightLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.receivingWeightLabel.Click += new System.EventHandler(this.receivingWeightLabel_Click);
            // 
            // receivingDateReceivedDatebox
            // 
            this.receivingDateReceivedDatebox.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingDateReceivedDatebox.Location = new System.Drawing.Point(130, 76);
            this.receivingDateReceivedDatebox.Name = "receivingDateReceivedDatebox";
            this.receivingDateReceivedDatebox.Size = new System.Drawing.Size(356, 29);
            this.receivingDateReceivedDatebox.TabIndex = 3;
            this.receivingDateReceivedDatebox.Value = new System.DateTime(2014, 1, 1, 11, 41, 0, 0);
            this.receivingDateReceivedDatebox.ValueChanged += new System.EventHandler(this.receivingDateReceivedDatebox_ValueChanged);
            // 
            // receivingDateReceivedLabel
            // 
            this.receivingDateReceivedLabel.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.receivingDateReceivedLabel.Enabled = false;
            this.receivingDateReceivedLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingDateReceivedLabel.Location = new System.Drawing.Point(8, 73);
            this.receivingDateReceivedLabel.Name = "receivingDateReceivedLabel";
            this.receivingDateReceivedLabel.Size = new System.Drawing.Size(116, 29);
            this.receivingDateReceivedLabel.TabIndex = 9998;
            this.receivingDateReceivedLabel.Text = "Date Received";
            this.receivingDateReceivedLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
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
            this.receivingWeightNumericbox.TabIndex = 6;
            this.receivingWeightNumericbox.ValueChanged += new System.EventHandler(this.receivingWeightNumericbox_ValueChanged);
            // 
            // receivingCategoryLabel
            // 
            this.receivingCategoryLabel.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.receivingCategoryLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingCategoryLabel.Location = new System.Drawing.Point(8, 108);
            this.receivingCategoryLabel.Name = "receivingCategoryLabel";
            this.receivingCategoryLabel.Size = new System.Drawing.Size(116, 32);
            this.receivingCategoryLabel.TabIndex = 7;
            this.receivingCategoryLabel.Text = "Category";
            this.receivingCategoryLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // receivingSubmitButton
            // 
            this.receivingSubmitButton.Enabled = false;
            this.receivingSubmitButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingSubmitButton.Location = new System.Drawing.Point(839, 146);
            this.receivingSubmitButton.Name = "receivingSubmitButton";
            this.receivingSubmitButton.Size = new System.Drawing.Size(189, 45);
            this.receivingSubmitButton.TabIndex = 12;
            this.receivingSubmitButton.Text = "Submit";
            this.receivingSubmitButton.UseVisualStyleBackColor = true;
            this.receivingSubmitButton.Click += new System.EventHandler(this.receivingSubmitButton_Click);
            // 
            // receivingClientLabel
            // 
            this.receivingClientLabel.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.receivingClientLabel.Enabled = false;
            this.receivingClientLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingClientLabel.Location = new System.Drawing.Point(8, 0);
            this.receivingClientLabel.Name = "receivingClientLabel";
            this.receivingClientLabel.Size = new System.Drawing.Size(116, 32);
            this.receivingClientLabel.TabIndex = 9999;
            this.receivingClientLabel.Text = "Client Name";
            this.receivingClientLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
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
            this.harvestingLayoutPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 16.02871F));
            this.harvestingLayoutPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 83.97129F));
            this.harvestingLayoutPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 202F));
            this.harvestingLayoutPanel.Controls.Add(this.harvestingPileCheckbox, 2, 0);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingParentTextbox, 1, 0);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingParentLabel, 0, 0);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingCommentsTextbox, 1, 3);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingSubmitButton, 2, 3);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingCategoryTextbox, 1, 2);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingWeightLabel, 0, 1);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingCategoryLabel, 0, 2);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingWeightNumericbox, 1, 1);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingCommentsLabel, 0, 3);
            this.harvestingLayoutPanel.Dock = System.Windows.Forms.DockStyle.Fill;
            this.harvestingLayoutPanel.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.harvestingLayoutPanel.Location = new System.Drawing.Point(3, 3);
            this.harvestingLayoutPanel.Name = "harvestingLayoutPanel";
            this.harvestingLayoutPanel.RowCount = 4;
            this.harvestingLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50.68493F));
            this.harvestingLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 49.31507F));
            this.harvestingLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 36F));
            this.harvestingLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 503F));
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
            // harvestingParentTextbox
            // 
            this.harvestingParentTextbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.harvestingParentTextbox.Location = new System.Drawing.Point(137, 3);
            this.harvestingParentTextbox.MaxLength = 200;
            this.harvestingParentTextbox.Name = "harvestingParentTextbox";
            this.harvestingParentTextbox.Size = new System.Drawing.Size(696, 29);
            this.harvestingParentTextbox.TabIndex = 1;
            this.harvestingParentTextbox.TextChanged += new System.EventHandler(this.harvestingParentTextbox_TextChanged);
            // 
            // harvestingParentLabel
            // 
            this.harvestingParentLabel.Enabled = false;
            this.harvestingParentLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.harvestingParentLabel.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.harvestingParentLabel.Location = new System.Drawing.Point(3, 0);
            this.harvestingParentLabel.Name = "harvestingParentLabel";
            this.harvestingParentLabel.Size = new System.Drawing.Size(128, 32);
            this.harvestingParentLabel.TabIndex = 9999;
            this.harvestingParentLabel.Text = "Receiving ID";
            this.harvestingParentLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // harvestingCommentsTextbox
            // 
            this.harvestingCommentsTextbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.harvestingCommentsTextbox.Location = new System.Drawing.Point(137, 112);
            this.harvestingCommentsTextbox.Multiline = true;
            this.harvestingCommentsTextbox.Name = "harvestingCommentsTextbox";
            this.harvestingCommentsTextbox.Size = new System.Drawing.Size(696, 494);
            this.harvestingCommentsTextbox.TabIndex = 11;
            // 
            // harvestingSubmitButton
            // 
            this.harvestingSubmitButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.harvestingSubmitButton.Location = new System.Drawing.Point(839, 112);
            this.harvestingSubmitButton.Name = "harvestingSubmitButton";
            this.harvestingSubmitButton.Size = new System.Drawing.Size(195, 59);
            this.harvestingSubmitButton.TabIndex = 12;
            this.harvestingSubmitButton.Text = "Submit";
            this.harvestingSubmitButton.UseVisualStyleBackColor = true;
            // 
            // harvestingCategoryTextbox
            // 
            this.harvestingCategoryTextbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.harvestingCategoryTextbox.Location = new System.Drawing.Point(137, 76);
            this.harvestingCategoryTextbox.Name = "harvestingCategoryTextbox";
            this.harvestingCategoryTextbox.Size = new System.Drawing.Size(696, 29);
            this.harvestingCategoryTextbox.TabIndex = 8;
            // 
            // harvestingWeightLabel
            // 
            this.harvestingWeightLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.harvestingWeightLabel.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.harvestingWeightLabel.Location = new System.Drawing.Point(3, 37);
            this.harvestingWeightLabel.Name = "harvestingWeightLabel";
            this.harvestingWeightLabel.Size = new System.Drawing.Size(128, 32);
            this.harvestingWeightLabel.TabIndex = 4;
            this.harvestingWeightLabel.Text = "Weight";
            this.harvestingWeightLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // harvestingCategoryLabel
            // 
            this.harvestingCategoryLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.harvestingCategoryLabel.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.harvestingCategoryLabel.Location = new System.Drawing.Point(3, 73);
            this.harvestingCategoryLabel.Name = "harvestingCategoryLabel";
            this.harvestingCategoryLabel.Size = new System.Drawing.Size(128, 32);
            this.harvestingCategoryLabel.TabIndex = 7;
            this.harvestingCategoryLabel.Text = "Category";
            this.harvestingCategoryLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // harvestingWeightNumericbox
            // 
            this.harvestingWeightNumericbox.DecimalPlaces = 2;
            this.harvestingWeightNumericbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.harvestingWeightNumericbox.Location = new System.Drawing.Point(137, 40);
            this.harvestingWeightNumericbox.Maximum = new decimal(new int[] {
            276447231,
            23283,
            0,
            0});
            this.harvestingWeightNumericbox.Name = "harvestingWeightNumericbox";
            this.harvestingWeightNumericbox.Size = new System.Drawing.Size(696, 29);
            this.harvestingWeightNumericbox.TabIndex = 6;
            this.harvestingWeightNumericbox.ValueChanged += new System.EventHandler(this.harvestingWeightNumericbox_ValueChanged);
            // 
            // harvestingCommentsLabel
            // 
            this.harvestingCommentsLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.harvestingCommentsLabel.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.harvestingCommentsLabel.Location = new System.Drawing.Point(3, 109);
            this.harvestingCommentsLabel.Name = "harvestingCommentsLabel";
            this.harvestingCommentsLabel.Size = new System.Drawing.Size(128, 62);
            this.harvestingCommentsLabel.TabIndex = 9;
            this.harvestingCommentsLabel.Text = "Comments";
            this.harvestingCommentsLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
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
            this.reuseLayoutPanel.AutoSize = true;
            this.reuseLayoutPanel.ColumnCount = 3;
            this.reuseLayoutPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 14.17143F));
            this.reuseLayoutPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 85.82858F));
            this.reuseLayoutPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 169F));
            this.reuseLayoutPanel.Controls.Add(this.reuseParentIDTextbox, 1, 1);
            this.reuseLayoutPanel.Controls.Add(this.reuseWeightLabel, 0, 2);
            this.reuseLayoutPanel.Controls.Add(this.reuseCategoryLabel, 0, 3);
            this.reuseLayoutPanel.Controls.Add(this.reuseCategoryTextbox, 1, 3);
            this.reuseLayoutPanel.Controls.Add(this.reuseWeightNumericbox, 1, 2);
            this.reuseLayoutPanel.Controls.Add(this.reuseCommentsTextbox, 1, 5);
            this.reuseLayoutPanel.Controls.Add(this.reuseCommentsLabel, 0, 5);
            this.reuseLayoutPanel.Controls.Add(this.reuseCheckedListBox, 1, 0);
            this.reuseLayoutPanel.Controls.Add(this.reuseSubmitButton, 2, 5);
            this.reuseLayoutPanel.Controls.Add(this.reuseParentIDLabel, 0, 1);
            this.reuseLayoutPanel.Controls.Add(this.panel1, 1, 4);
            this.reuseLayoutPanel.Dock = System.Windows.Forms.DockStyle.Fill;
            this.reuseLayoutPanel.Location = new System.Drawing.Point(0, 0);
            this.reuseLayoutPanel.Name = "reuseLayoutPanel";
            this.reuseLayoutPanel.RowCount = 7;
            this.reuseLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 72F));
            this.reuseLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 28F));
            this.reuseLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 37F));
            this.reuseLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 37F));
            this.reuseLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 86F));
            this.reuseLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 319F));
            this.reuseLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 14F));
            this.reuseLayoutPanel.Size = new System.Drawing.Size(1045, 619);
            this.reuseLayoutPanel.TabIndex = 0;
            // 
            // reuseParentIDTextbox
            // 
            this.reuseParentIDTextbox.Location = new System.Drawing.Point(127, 93);
            this.reuseParentIDTextbox.Name = "reuseParentIDTextbox";
            this.reuseParentIDTextbox.Size = new System.Drawing.Size(696, 29);
            this.reuseParentIDTextbox.TabIndex = 3;
            // 
            // reuseWeightLabel
            // 
            this.reuseWeightLabel.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.reuseWeightLabel.Location = new System.Drawing.Point(3, 131);
            this.reuseWeightLabel.Name = "reuseWeightLabel";
            this.reuseWeightLabel.Size = new System.Drawing.Size(118, 25);
            this.reuseWeightLabel.TabIndex = 7;
            this.reuseWeightLabel.Text = "Weight";
            this.reuseWeightLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // reuseCategoryLabel
            // 
            this.reuseCategoryLabel.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.reuseCategoryLabel.Location = new System.Drawing.Point(3, 167);
            this.reuseCategoryLabel.Name = "reuseCategoryLabel";
            this.reuseCategoryLabel.Size = new System.Drawing.Size(118, 26);
            this.reuseCategoryLabel.TabIndex = 11;
            this.reuseCategoryLabel.Text = "Category";
            this.reuseCategoryLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // reuseCategoryTextbox
            // 
            this.reuseCategoryTextbox.Location = new System.Drawing.Point(127, 165);
            this.reuseCategoryTextbox.Name = "reuseCategoryTextbox";
            this.reuseCategoryTextbox.Size = new System.Drawing.Size(696, 29);
            this.reuseCategoryTextbox.TabIndex = 8;
            // 
            // reuseWeightNumericbox
            // 
            this.reuseWeightNumericbox.DecimalPlaces = 2;
            this.reuseWeightNumericbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.reuseWeightNumericbox.Location = new System.Drawing.Point(127, 128);
            this.reuseWeightNumericbox.Maximum = new decimal(new int[] {
            276447231,
            23283,
            0,
            0});
            this.reuseWeightNumericbox.Name = "reuseWeightNumericbox";
            this.reuseWeightNumericbox.Size = new System.Drawing.Size(696, 29);
            this.reuseWeightNumericbox.TabIndex = 12;
            // 
            // reuseCommentsTextbox
            // 
            this.reuseCommentsTextbox.Location = new System.Drawing.Point(127, 288);
            this.reuseCommentsTextbox.Multiline = true;
            this.reuseCommentsTextbox.Name = "reuseCommentsTextbox";
            this.reuseCommentsTextbox.Size = new System.Drawing.Size(696, 306);
            this.reuseCommentsTextbox.TabIndex = 10;
            // 
            // reuseCommentsLabel
            // 
            this.reuseCommentsLabel.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.reuseCommentsLabel.AutoSize = true;
            this.reuseCommentsLabel.Location = new System.Drawing.Point(3, 432);
            this.reuseCommentsLabel.Name = "reuseCommentsLabel";
            this.reuseCommentsLabel.Size = new System.Drawing.Size(101, 24);
            this.reuseCommentsLabel.TabIndex = 9;
            this.reuseCommentsLabel.Text = "Comments";
            // 
            // reuseCheckedListBox
            // 
            this.reuseCheckedListBox.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(130)))), ((int)(((byte)(162)))), ((int)(((byte)(106)))));
            this.reuseCheckedListBox.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.reuseCheckedListBox.FormattingEnabled = true;
            this.reuseCheckedListBox.Items.AddRange(new object[] {
            "Create New Item Label",
            "Modify Existing Item"});
            this.reuseCheckedListBox.Location = new System.Drawing.Point(127, 3);
            this.reuseCheckedListBox.Name = "reuseCheckedListBox";
            this.reuseCheckedListBox.Size = new System.Drawing.Size(277, 48);
            this.reuseCheckedListBox.TabIndex = 6;
            this.reuseCheckedListBox.SelectedIndexChanged += new System.EventHandler(this.reuseCheckedListBox_SelectedIndexChanged);
            // 
            // reuseSubmitButton
            // 
            this.reuseSubmitButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.reuseSubmitButton.Location = new System.Drawing.Point(878, 288);
            this.reuseSubmitButton.Name = "reuseSubmitButton";
            this.reuseSubmitButton.Size = new System.Drawing.Size(164, 59);
            this.reuseSubmitButton.TabIndex = 15;
            this.reuseSubmitButton.Text = "Submit";
            this.reuseSubmitButton.UseVisualStyleBackColor = true;
            this.reuseSubmitButton.Click += new System.EventHandler(this.reuseSubmitButton_Click);
            // 
            // reuseParentIDLabel
            // 
            this.reuseParentIDLabel.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.reuseParentIDLabel.Location = new System.Drawing.Point(3, 93);
            this.reuseParentIDLabel.Name = "reuseParentIDLabel";
            this.reuseParentIDLabel.Size = new System.Drawing.Size(118, 28);
            this.reuseParentIDLabel.TabIndex = 2;
            this.reuseParentIDLabel.Text = "Harvest ID";
            this.reuseParentIDLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.reuseSoldAmmount);
            this.panel1.Controls.Add(this.reuseSoldCheckbox);
            this.panel1.Controls.Add(this.reuseListedCheckbox);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(127, 202);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(745, 80);
            this.panel1.TabIndex = 17;
            // 
            // reuseSoldAmmount
            // 
            this.reuseSoldAmmount.Location = new System.Drawing.Point(62, 33);
            this.reuseSoldAmmount.Name = "reuseSoldAmmount";
            this.reuseSoldAmmount.Size = new System.Drawing.Size(100, 29);
            this.reuseSoldAmmount.TabIndex = 15;
            // 
            // reuseSoldCheckbox
            // 
            this.reuseSoldCheckbox.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.reuseSoldCheckbox.AutoSize = true;
            this.reuseSoldCheckbox.Location = new System.Drawing.Point(0, 36);
            this.reuseSoldCheckbox.Name = "reuseSoldCheckbox";
            this.reuseSoldCheckbox.Size = new System.Drawing.Size(67, 28);
            this.reuseSoldCheckbox.TabIndex = 14;
            this.reuseSoldCheckbox.Text = "Sold";
            this.reuseSoldCheckbox.UseVisualStyleBackColor = true;
            // 
            // reuseListedCheckbox
            // 
            this.reuseListedCheckbox.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.reuseListedCheckbox.AutoSize = true;
            this.reuseListedCheckbox.Location = new System.Drawing.Point(0, 2);
            this.reuseListedCheckbox.Name = "reuseListedCheckbox";
            this.reuseListedCheckbox.Size = new System.Drawing.Size(78, 28);
            this.reuseListedCheckbox.TabIndex = 13;
            this.reuseListedCheckbox.Text = "Listed";
            this.reuseListedCheckbox.UseVisualStyleBackColor = true;
            // 
            // searchTab
            // 
            this.searchTab.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(130)))), ((int)(((byte)(162)))), ((int)(((byte)(106)))));
            this.searchTab.Controls.Add(this.searchLayoutPanel);
            this.searchTab.Location = new System.Drawing.Point(4, 34);
            this.searchTab.Name = "searchTab";
            this.searchTab.Size = new System.Drawing.Size(1045, 619);
            this.searchTab.TabIndex = 4;
            this.searchTab.Text = "Search";
            // 
            // searchLayoutPanel
            // 
            this.searchLayoutPanel.ColumnCount = 3;
            this.searchLayoutPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 49.4964F));
            this.searchLayoutPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50.5036F));
            this.searchLayoutPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 349F));
            this.searchLayoutPanel.Controls.Add(this.panel2, 0, 0);
            this.searchLayoutPanel.Controls.Add(this.panel3, 1, 0);
            this.searchLayoutPanel.Controls.Add(this.panel4, 2, 0);
            this.searchLayoutPanel.Dock = System.Windows.Forms.DockStyle.Fill;
            this.searchLayoutPanel.Location = new System.Drawing.Point(0, 0);
            this.searchLayoutPanel.Name = "searchLayoutPanel";
            this.searchLayoutPanel.RowCount = 1;
            this.searchLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 603F));
            this.searchLayoutPanel.Size = new System.Drawing.Size(1045, 619);
            this.searchLayoutPanel.TabIndex = 0;
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.textBox13);
            this.panel2.Controls.Add(this.label14);
            this.panel2.Controls.Add(this.textBox8);
            this.panel2.Controls.Add(this.label9);
            this.panel2.Controls.Add(this.label6);
            this.panel2.Controls.Add(this.textBox5);
            this.panel2.Controls.Add(this.textBox4);
            this.panel2.Controls.Add(this.label5);
            this.panel2.Controls.Add(this.textBox2);
            this.panel2.Controls.Add(this.label3);
            this.panel2.Controls.Add(this.recievingListBox);
            this.panel2.Controls.Add(this.searchClientLabel);
            this.panel2.Controls.Add(this.receivingSearch);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel2.Location = new System.Drawing.Point(3, 3);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(338, 613);
            this.panel2.TabIndex = 21;
            // 
            // searchClientLabel
            // 
            this.searchClientLabel.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.searchClientLabel.AutoSize = true;
            this.searchClientLabel.Location = new System.Drawing.Point(5, 8);
            this.searchClientLabel.Name = "searchClientLabel";
            this.searchClientLabel.Size = new System.Drawing.Size(116, 24);
            this.searchClientLabel.TabIndex = 1;
            this.searchClientLabel.Text = "Recieving ID";
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.textBox11);
            this.panel3.Controls.Add(this.textBox9);
            this.panel3.Controls.Add(this.label12);
            this.panel3.Controls.Add(this.label10);
            this.panel3.Controls.Add(this.label7);
            this.panel3.Controls.Add(this.button1);
            this.panel3.Controls.Add(this.textBox6);
            this.panel3.Controls.Add(this.textBox1);
            this.panel3.Controls.Add(this.harvestWeightLabel);
            this.panel3.Controls.Add(this.harvestListBox);
            this.panel3.Controls.Add(this.label1);
            this.panel3.Controls.Add(this.harvestSearch);
            this.panel3.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel3.Location = new System.Drawing.Point(347, 3);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(345, 613);
            this.panel3.TabIndex = 22;
            // 
            // panel4
            // 
            this.panel4.Controls.Add(this.textBox14);
            this.panel4.Controls.Add(this.button4);
            this.panel4.Controls.Add(this.button3);
            this.panel4.Controls.Add(this.textBox12);
            this.panel4.Controls.Add(this.label13);
            this.panel4.Controls.Add(this.textBox10);
            this.panel4.Controls.Add(this.label11);
            this.panel4.Controls.Add(this.label8);
            this.panel4.Controls.Add(this.button2);
            this.panel4.Controls.Add(this.textBox7);
            this.panel4.Controls.Add(this.textBox3);
            this.panel4.Controls.Add(this.label4);
            this.panel4.Controls.Add(this.reuseListBox);
            this.panel4.Controls.Add(this.reuseSearch);
            this.panel4.Controls.Add(this.label2);
            this.panel4.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel4.Location = new System.Drawing.Point(698, 3);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(344, 613);
            this.panel4.TabIndex = 23;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(13, 11);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(95, 24);
            this.label1.TabIndex = 20;
            this.label1.Text = "Harvest ID";
            // 
            // reuseSearch
            // 
            this.reuseSearch.Location = new System.Drawing.Point(18, 38);
            this.reuseSearch.Name = "reuseSearch";
            this.reuseSearch.Size = new System.Drawing.Size(92, 29);
            this.reuseSearch.TabIndex = 23;
            // 
            // label2
            // 
            this.label2.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(14, 11);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(87, 24);
            this.label2.TabIndex = 22;
            this.label2.Text = "Reuse ID";
            // 
            // reuseListBox
            // 
            this.reuseListBox.FormattingEnabled = true;
            this.reuseListBox.ItemHeight = 24;
            this.reuseListBox.Location = new System.Drawing.Point(18, 73);
            this.reuseListBox.Name = "reuseListBox";
            this.reuseListBox.Size = new System.Drawing.Size(92, 244);
            this.reuseListBox.TabIndex = 22;
            // 
            // recievingListBox
            // 
            this.recievingListBox.FormattingEnabled = true;
            this.recievingListBox.ItemHeight = 24;
            this.recievingListBox.Location = new System.Drawing.Point(9, 73);
            this.recievingListBox.Name = "recievingListBox";
            this.recievingListBox.Size = new System.Drawing.Size(92, 244);
            this.recievingListBox.TabIndex = 24;
            // 
            // receivingSearch
            // 
            this.receivingSearch.Location = new System.Drawing.Point(9, 38);
            this.receivingSearch.Name = "receivingSearch";
            this.receivingSearch.Size = new System.Drawing.Size(92, 29);
            this.receivingSearch.TabIndex = 25;
            // 
            // harvestListBox
            // 
            this.harvestListBox.FormattingEnabled = true;
            this.harvestListBox.ItemHeight = 24;
            this.harvestListBox.Location = new System.Drawing.Point(17, 73);
            this.harvestListBox.Name = "harvestListBox";
            this.harvestListBox.Size = new System.Drawing.Size(92, 244);
            this.harvestListBox.TabIndex = 26;
            // 
            // harvestSearch
            // 
            this.harvestSearch.Location = new System.Drawing.Point(17, 38);
            this.harvestSearch.Name = "harvestSearch";
            this.harvestSearch.Size = new System.Drawing.Size(92, 29);
            this.harvestSearch.TabIndex = 27;
            // 
            // harvestWeightLabel
            // 
            this.harvestWeightLabel.AutoSize = true;
            this.harvestWeightLabel.Location = new System.Drawing.Point(119, 111);
            this.harvestWeightLabel.Name = "harvestWeightLabel";
            this.harvestWeightLabel.Size = new System.Drawing.Size(69, 24);
            this.harvestWeightLabel.TabIndex = 28;
            this.harvestWeightLabel.Text = "Weight";
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(194, 108);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(133, 29);
            this.textBox1.TabIndex = 29;
            // 
            // textBox2
            // 
            this.textBox2.Location = new System.Drawing.Point(186, 143);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(133, 29);
            this.textBox2.TabIndex = 31;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(109, 146);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(69, 24);
            this.label3.TabIndex = 30;
            this.label3.Text = "Weight";
            // 
            // textBox3
            // 
            this.textBox3.Location = new System.Drawing.Point(195, 108);
            this.textBox3.Name = "textBox3";
            this.textBox3.Size = new System.Drawing.Size(133, 29);
            this.textBox3.TabIndex = 33;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(120, 111);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(69, 24);
            this.label4.TabIndex = 32;
            this.label4.Text = "Weight";
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(227, 3);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(100, 35);
            this.button1.TabIndex = 30;
            this.button1.Text = "Reject";
            this.button1.UseVisualStyleBackColor = true;
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(189, 5);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(79, 29);
            this.button2.TabIndex = 31;
            this.button2.Text = "Reject";
            this.button2.UseVisualStyleBackColor = true;
            // 
            // textBox4
            // 
            this.textBox4.Location = new System.Drawing.Point(107, 73);
            this.textBox4.Name = "textBox4";
            this.textBox4.Size = new System.Drawing.Size(212, 29);
            this.textBox4.TabIndex = 33;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(109, 46);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(71, 24);
            this.label5.TabIndex = 32;
            this.label5.Text = "Source";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(5, 324);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(101, 24);
            this.label6.TabIndex = 35;
            this.label6.Text = "Comments";
            // 
            // textBox5
            // 
            this.textBox5.Location = new System.Drawing.Point(9, 351);
            this.textBox5.Multiline = true;
            this.textBox5.Name = "textBox5";
            this.textBox5.Size = new System.Drawing.Size(310, 257);
            this.textBox5.TabIndex = 34;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(13, 326);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(101, 24);
            this.label7.TabIndex = 37;
            this.label7.Text = "Comments";
            // 
            // textBox6
            // 
            this.textBox6.Location = new System.Drawing.Point(17, 353);
            this.textBox6.Multiline = true;
            this.textBox6.Name = "textBox6";
            this.textBox6.Size = new System.Drawing.Size(310, 257);
            this.textBox6.TabIndex = 36;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(14, 324);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(101, 24);
            this.label8.TabIndex = 39;
            this.label8.Text = "Comments";
            // 
            // textBox7
            // 
            this.textBox7.Location = new System.Drawing.Point(18, 351);
            this.textBox7.Multiline = true;
            this.textBox7.Name = "textBox7";
            this.textBox7.Size = new System.Drawing.Size(310, 257);
            this.textBox7.TabIndex = 38;
            // 
            // textBox8
            // 
            this.textBox8.Location = new System.Drawing.Point(107, 288);
            this.textBox8.Name = "textBox8";
            this.textBox8.Size = new System.Drawing.Size(204, 29);
            this.textBox8.TabIndex = 37;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(103, 261);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(85, 24);
            this.label9.TabIndex = 36;
            this.label9.Text = "Category";
            // 
            // textBox9
            // 
            this.textBox9.Location = new System.Drawing.Point(113, 288);
            this.textBox9.Name = "textBox9";
            this.textBox9.Size = new System.Drawing.Size(214, 29);
            this.textBox9.TabIndex = 39;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(109, 261);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(85, 24);
            this.label10.TabIndex = 38;
            this.label10.Text = "Category";
            // 
            // textBox10
            // 
            this.textBox10.Location = new System.Drawing.Point(116, 288);
            this.textBox10.Name = "textBox10";
            this.textBox10.Size = new System.Drawing.Size(212, 29);
            this.textBox10.TabIndex = 41;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(112, 261);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(85, 24);
            this.label11.TabIndex = 40;
            this.label11.Text = "Category";
            // 
            // textBox11
            // 
            this.textBox11.Location = new System.Drawing.Point(113, 73);
            this.textBox11.Name = "textBox11";
            this.textBox11.Size = new System.Drawing.Size(214, 29);
            this.textBox11.TabIndex = 39;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(115, 46);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(116, 24);
            this.label12.TabIndex = 38;
            this.label12.Text = "Receiving ID";
            // 
            // textBox12
            // 
            this.textBox12.Location = new System.Drawing.Point(116, 73);
            this.textBox12.Name = "textBox12";
            this.textBox12.Size = new System.Drawing.Size(212, 29);
            this.textBox12.TabIndex = 41;
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(118, 46);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(95, 24);
            this.label13.TabIndex = 40;
            this.label13.Text = "Harvest ID";
            // 
            // textBox13
            // 
            this.textBox13.Location = new System.Drawing.Point(186, 108);
            this.textBox13.Name = "textBox13";
            this.textBox13.Size = new System.Drawing.Size(133, 29);
            this.textBox13.TabIndex = 39;
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Location = new System.Drawing.Point(109, 111);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(63, 24);
            this.label14.TabIndex = 38;
            this.label14.Text = "Job ID";
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(268, 5);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(73, 29);
            this.button3.TabIndex = 42;
            this.button3.Text = "Listed";
            this.button3.UseVisualStyleBackColor = true;
            // 
            // button4
            // 
            this.button4.Location = new System.Drawing.Point(116, 5);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(73, 29);
            this.button4.TabIndex = 43;
            this.button4.Text = "Sold";
            this.button4.UseVisualStyleBackColor = true;
            // 
            // textBox14
            // 
            this.textBox14.Location = new System.Drawing.Point(195, 143);
            this.textBox14.Name = "textBox14";
            this.textBox14.Size = new System.Drawing.Size(133, 29);
            this.textBox14.TabIndex = 44;
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
            this.harvestingTab.ResumeLayout(false);
            this.harvestingLayoutPanel.ResumeLayout(false);
            this.harvestingLayoutPanel.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.harvestingWeightNumericbox)).EndInit();
            this.reuseTab.ResumeLayout(false);
            this.reuseTab.PerformLayout();
            this.reuseLayoutPanel.ResumeLayout(false);
            this.reuseLayoutPanel.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.reuseWeightNumericbox)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.searchTab.ResumeLayout(false);
            this.searchLayoutPanel.ResumeLayout(false);
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
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
        private System.Windows.Forms.TabPage searchTab;
        private System.Windows.Forms.TableLayoutPanel harvestingLayoutPanel;
        private System.Windows.Forms.TableLayoutPanel reuseLayoutPanel;
        private System.Windows.Forms.Label reuseParentIDLabel;
        private System.Windows.Forms.TextBox reuseParentIDTextbox;
        private System.Windows.Forms.CheckedListBox reuseCheckedListBox;
        private System.Windows.Forms.Label reuseWeightLabel;
        private System.Windows.Forms.TextBox reuseCategoryTextbox;
        private System.Windows.Forms.TextBox reuseCommentsTextbox;
        private System.Windows.Forms.Label reuseCommentsLabel;
        private System.Windows.Forms.Label reuseCategoryLabel;
        private System.Windows.Forms.NumericUpDown reuseWeightNumericbox;
        private System.Windows.Forms.CheckBox reuseListedCheckbox;
        private System.Windows.Forms.CheckBox reuseSoldCheckbox;
        private System.Windows.Forms.Button reuseSubmitButton;
        private System.Windows.Forms.Label searchClientLabel;
        private System.Windows.Forms.TableLayoutPanel searchLayoutPanel;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.TextBox reuseSoldAmmount;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ListBox reuseListBox;
        private System.Windows.Forms.TextBox reuseSearch;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ListBox recievingListBox;
        private System.Windows.Forms.TextBox receivingSearch;
        private System.Windows.Forms.ListBox harvestListBox;
        private System.Windows.Forms.TextBox harvestSearch;
        private System.Windows.Forms.TextBox textBox4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label harvestWeightLabel;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.TextBox textBox3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox textBox5;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox textBox6;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox textBox7;
        private System.Windows.Forms.TextBox textBox8;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox textBox11;
        private System.Windows.Forms.TextBox textBox9;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TextBox textBox12;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.TextBox textBox10;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.TextBox textBox13;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.TextBox textBox14;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Button button3;
    }
}

