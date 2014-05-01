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
            this.harvestingCommentsLabel = new System.Windows.Forms.Label();
            this.harvestingCategoryTextbox = new System.Windows.Forms.TextBox();
            this.harvestingWeightLabel = new System.Windows.Forms.Label();
            this.harvestingCategoryLabel = new System.Windows.Forms.Label();
            this.harvestingWeightNumericbox = new System.Windows.Forms.NumericUpDown();
            this.reuseTab = new System.Windows.Forms.TabPage();
            this.reuseLayoutPanel = new System.Windows.Forms.TableLayoutPanel();
            this.reuseParentIDTextbox = new System.Windows.Forms.TextBox();
            this.reuseExistingIDTextbox = new System.Windows.Forms.TextBox();
            this.reuseParentIDLabel = new System.Windows.Forms.Label();
            this.reuseWeightLabel = new System.Windows.Forms.Label();
            this.reuseCategoryLabel = new System.Windows.Forms.Label();
            this.reuseCategoryTextbox = new System.Windows.Forms.TextBox();
            this.reuseWeightNumericbox = new System.Windows.Forms.NumericUpDown();
            this.reuseCommentsTextbox = new System.Windows.Forms.TextBox();
            this.reuseCommentsLabel = new System.Windows.Forms.Label();
            this.reuseListedCheckbox = new System.Windows.Forms.CheckBox();
            this.reuseSoldCheckbox = new System.Windows.Forms.CheckBox();
            this.reuseCheckedListBox = new System.Windows.Forms.CheckedListBox();
            this.reuseSearchButton = new System.Windows.Forms.Button();
            this.reuseSubmitButton = new System.Windows.Forms.Button();
            this.reuseExistingIDLabel = new System.Windows.Forms.Label();
            this.searchTab = new System.Windows.Forms.TabPage();
            this.searchLayoutPanel = new System.Windows.Forms.TableLayoutPanel();
            this.searchIDLabel = new System.Windows.Forms.Label();
            this.searchClientLabel = new System.Windows.Forms.Label();
            this.searchClientButton = new System.Windows.Forms.Button();
            this.searchIDButton = new System.Windows.Forms.Button();
            this.searchIDTextbox = new System.Windows.Forms.TextBox();
            this.searchClientTextbox = new System.Windows.Forms.TextBox();
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
            this.searchTab.SuspendLayout();
            this.searchLayoutPanel.SuspendLayout();
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
            this.receivingPileCheckbox.Text = "Taken from Pile";
            this.receivingPileCheckbox.UseVisualStyleBackColor = true;
            this.receivingPileCheckbox.CheckedChanged += new System.EventHandler(this.receivingPileCheckbox_CheckedChanged);
            // 
            // receivingCommentsLabel
            // 
            this.receivingCommentsLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingCommentsLabel.Location = new System.Drawing.Point(3, 149);
            this.receivingCommentsLabel.Name = "receivingCommentsLabel";
            this.receivingCommentsLabel.Size = new System.Drawing.Size(116, 185);
            this.receivingCommentsLabel.TabIndex = 9;
            this.receivingCommentsLabel.Text = "Comments";
            this.receivingCommentsLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // receivingCategoryTextbox
            // 
            this.receivingCategoryTextbox.Dock = System.Windows.Forms.DockStyle.Fill;
            this.receivingCategoryTextbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingCategoryTextbox.Location = new System.Drawing.Point(130, 115);
            this.receivingCategoryTextbox.Name = "receivingCategoryTextbox";
            this.receivingCategoryTextbox.Size = new System.Drawing.Size(703, 31);
            this.receivingCategoryTextbox.TabIndex = 8;
            this.receivingCategoryTextbox.TextChanged += new System.EventHandler(this.receivingCategoryTextbox_TextChanged);
            // 
            // receivingCommentsTextbox
            // 
            this.receivingCommentsTextbox.Dock = System.Windows.Forms.DockStyle.Fill;
            this.receivingCommentsTextbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingCommentsTextbox.Location = new System.Drawing.Point(130, 152);
            this.receivingCommentsTextbox.Multiline = true;
            this.receivingCommentsTextbox.Name = "receivingCommentsTextbox";
            this.receivingCommentsTextbox.Size = new System.Drawing.Size(703, 450);
            this.receivingCommentsTextbox.TabIndex = 11;
            // 
            // receivingClientTextbox
            // 
            this.receivingClientTextbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingClientTextbox.Location = new System.Drawing.Point(130, 3);
            this.receivingClientTextbox.MaxLength = 200;
            this.receivingClientTextbox.Name = "receivingClientTextbox";
            this.receivingClientTextbox.Size = new System.Drawing.Size(356, 31);
            this.receivingClientTextbox.TabIndex = 1;
            this.receivingClientTextbox.TextChanged += new System.EventHandler(this.receivingClientTextbox_TextChanged);
            // 
            // receivingWeightLabel
            // 
            this.receivingWeightLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingWeightLabel.Location = new System.Drawing.Point(3, 38);
            this.receivingWeightLabel.Name = "receivingWeightLabel";
            this.receivingWeightLabel.Size = new System.Drawing.Size(116, 35);
            this.receivingWeightLabel.TabIndex = 4;
            this.receivingWeightLabel.Text = "Weight";
            this.receivingWeightLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.receivingWeightLabel.Click += new System.EventHandler(this.receivingWeightLabel_Click);
            // 
            // receivingDateReceivedDatebox
            // 
            this.receivingDateReceivedDatebox.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingDateReceivedDatebox.Location = new System.Drawing.Point(130, 78);
            this.receivingDateReceivedDatebox.Name = "receivingDateReceivedDatebox";
            this.receivingDateReceivedDatebox.Size = new System.Drawing.Size(356, 31);
            this.receivingDateReceivedDatebox.TabIndex = 3;
            this.receivingDateReceivedDatebox.Value = new System.DateTime(2014, 1, 1, 11, 41, 0, 0);
            this.receivingDateReceivedDatebox.ValueChanged += new System.EventHandler(this.receivingDateReceivedDatebox_ValueChanged);
            // 
            // receivingDateReceivedLabel
            // 
            this.receivingDateReceivedLabel.Enabled = false;
            this.receivingDateReceivedLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingDateReceivedLabel.Location = new System.Drawing.Point(3, 75);
            this.receivingDateReceivedLabel.Name = "receivingDateReceivedLabel";
            this.receivingDateReceivedLabel.Size = new System.Drawing.Size(116, 35);
            this.receivingDateReceivedLabel.TabIndex = 9998;
            this.receivingDateReceivedLabel.Text = "Date Received";
            this.receivingDateReceivedLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // receivingWeightNumericbox
            // 
            this.receivingWeightNumericbox.DecimalPlaces = 2;
            this.receivingWeightNumericbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingWeightNumericbox.Location = new System.Drawing.Point(130, 41);
            this.receivingWeightNumericbox.Maximum = new decimal(new int[] {
            276447231,
            23283,
            0,
            0});
            this.receivingWeightNumericbox.Name = "receivingWeightNumericbox";
            this.receivingWeightNumericbox.Size = new System.Drawing.Size(356, 31);
            this.receivingWeightNumericbox.TabIndex = 6;
            this.receivingWeightNumericbox.ValueChanged += new System.EventHandler(this.receivingWeightNumericbox_ValueChanged);
            // 
            // receivingCategoryLabel
            // 
            this.receivingCategoryLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingCategoryLabel.Location = new System.Drawing.Point(3, 112);
            this.receivingCategoryLabel.Name = "receivingCategoryLabel";
            this.receivingCategoryLabel.Size = new System.Drawing.Size(116, 35);
            this.receivingCategoryLabel.TabIndex = 7;
            this.receivingCategoryLabel.Text = "Category";
            this.receivingCategoryLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // receivingSubmitButton
            // 
            this.receivingSubmitButton.Enabled = false;
            this.receivingSubmitButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingSubmitButton.Location = new System.Drawing.Point(839, 152);
            this.receivingSubmitButton.Name = "receivingSubmitButton";
            this.receivingSubmitButton.Size = new System.Drawing.Size(189, 45);
            this.receivingSubmitButton.TabIndex = 12;
            this.receivingSubmitButton.Text = "Submit";
            this.receivingSubmitButton.UseVisualStyleBackColor = true;
            this.receivingSubmitButton.Click += new System.EventHandler(this.receivingSubmitButton_Click);
            // 
            // receivingClientLabel
            // 
            this.receivingClientLabel.Enabled = false;
            this.receivingClientLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingClientLabel.Location = new System.Drawing.Point(3, 0);
            this.receivingClientLabel.Name = "receivingClientLabel";
            this.receivingClientLabel.Size = new System.Drawing.Size(116, 35);
            this.receivingClientLabel.TabIndex = 9999;
            this.receivingClientLabel.Text = "Client Name";
            this.receivingClientLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
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
            this.harvestingLayoutPanel.Controls.Add(this.harvestingParentTextbox, 1, 0);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingParentLabel, 0, 0);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingCommentsTextbox, 1, 3);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingSubmitButton, 2, 3);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingCommentsLabel, 0, 3);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingCategoryTextbox, 1, 2);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingWeightLabel, 0, 1);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingCategoryLabel, 0, 2);
            this.harvestingLayoutPanel.Controls.Add(this.harvestingWeightNumericbox, 1, 1);
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
            this.harvestingParentTextbox.Location = new System.Drawing.Point(122, 3);
            this.harvestingParentTextbox.MaxLength = 200;
            this.harvestingParentTextbox.Name = "harvestingParentTextbox";
            this.harvestingParentTextbox.Size = new System.Drawing.Size(711, 29);
            this.harvestingParentTextbox.TabIndex = 1;
            this.harvestingParentTextbox.TextChanged += new System.EventHandler(this.harvestingParentTextbox_TextChanged);
            // 
            // harvestingParentLabel
            // 
            this.harvestingParentLabel.Enabled = false;
            this.harvestingParentLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.harvestingParentLabel.Location = new System.Drawing.Point(3, 0);
            this.harvestingParentLabel.Name = "harvestingParentLabel";
            this.harvestingParentLabel.Size = new System.Drawing.Size(113, 32);
            this.harvestingParentLabel.TabIndex = 9999;
            this.harvestingParentLabel.Text = "Parent Box ID";
            this.harvestingParentLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // harvestingCommentsTextbox
            // 
            this.harvestingCommentsTextbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.harvestingCommentsTextbox.Location = new System.Drawing.Point(122, 112);
            this.harvestingCommentsTextbox.Multiline = true;
            this.harvestingCommentsTextbox.Name = "harvestingCommentsTextbox";
            this.harvestingCommentsTextbox.Size = new System.Drawing.Size(711, 494);
            this.harvestingCommentsTextbox.TabIndex = 11;
            // 
            // harvestingSubmitButton
            // 
            this.harvestingSubmitButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.harvestingSubmitButton.Location = new System.Drawing.Point(839, 112);
            this.harvestingSubmitButton.Name = "harvestingSubmitButton";
            this.harvestingSubmitButton.Size = new System.Drawing.Size(176, 59);
            this.harvestingSubmitButton.TabIndex = 12;
            this.harvestingSubmitButton.Text = "Submit";
            this.harvestingSubmitButton.UseVisualStyleBackColor = true;
            // 
            // harvestingCommentsLabel
            // 
            this.harvestingCommentsLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.harvestingCommentsLabel.Location = new System.Drawing.Point(3, 109);
            this.harvestingCommentsLabel.Name = "harvestingCommentsLabel";
            this.harvestingCommentsLabel.Size = new System.Drawing.Size(113, 62);
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
            this.harvestingCategoryTextbox.TabIndex = 8;
            // 
            // harvestingWeightLabel
            // 
            this.harvestingWeightLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.harvestingWeightLabel.Location = new System.Drawing.Point(3, 37);
            this.harvestingWeightLabel.Name = "harvestingWeightLabel";
            this.harvestingWeightLabel.Size = new System.Drawing.Size(113, 32);
            this.harvestingWeightLabel.TabIndex = 4;
            this.harvestingWeightLabel.Text = "Weight Taken";
            this.harvestingWeightLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // harvestingCategoryLabel
            // 
            this.harvestingCategoryLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.harvestingCategoryLabel.Location = new System.Drawing.Point(3, 73);
            this.harvestingCategoryLabel.Name = "harvestingCategoryLabel";
            this.harvestingCategoryLabel.Size = new System.Drawing.Size(113, 32);
            this.harvestingCategoryLabel.TabIndex = 7;
            this.harvestingCategoryLabel.Text = "Category";
            this.harvestingCategoryLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // harvestingWeightNumericbox
            // 
            this.harvestingWeightNumericbox.DecimalPlaces = 2;
            this.harvestingWeightNumericbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.harvestingWeightNumericbox.Location = new System.Drawing.Point(122, 40);
            this.harvestingWeightNumericbox.Maximum = new decimal(new int[] {
            276447231,
            23283,
            0,
            0});
            this.harvestingWeightNumericbox.Name = "harvestingWeightNumericbox";
            this.harvestingWeightNumericbox.Size = new System.Drawing.Size(711, 29);
            this.harvestingWeightNumericbox.TabIndex = 6;
            this.harvestingWeightNumericbox.ValueChanged += new System.EventHandler(this.harvestingWeightNumericbox_ValueChanged);
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
            this.reuseLayoutPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 19.8145F));
            this.reuseLayoutPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 80.1855F));
            this.reuseLayoutPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 169F));
            this.reuseLayoutPanel.Controls.Add(this.reuseParentIDTextbox, 1, 1);
            this.reuseLayoutPanel.Controls.Add(this.reuseExistingIDTextbox, 1, 2);
            this.reuseLayoutPanel.Controls.Add(this.reuseParentIDLabel, 0, 1);
            this.reuseLayoutPanel.Controls.Add(this.reuseWeightLabel, 0, 3);
            this.reuseLayoutPanel.Controls.Add(this.reuseCategoryLabel, 0, 4);
            this.reuseLayoutPanel.Controls.Add(this.reuseCategoryTextbox, 1, 4);
            this.reuseLayoutPanel.Controls.Add(this.reuseWeightNumericbox, 1, 3);
            this.reuseLayoutPanel.Controls.Add(this.reuseCommentsTextbox, 1, 6);
            this.reuseLayoutPanel.Controls.Add(this.reuseCommentsLabel, 0, 6);
            this.reuseLayoutPanel.Controls.Add(this.reuseListedCheckbox, 0, 5);
            this.reuseLayoutPanel.Controls.Add(this.reuseSoldCheckbox, 1, 5);
            this.reuseLayoutPanel.Controls.Add(this.reuseCheckedListBox, 1, 0);
            this.reuseLayoutPanel.Controls.Add(this.reuseSearchButton, 2, 2);
            this.reuseLayoutPanel.Controls.Add(this.reuseSubmitButton, 2, 6);
            this.reuseLayoutPanel.Controls.Add(this.reuseExistingIDLabel, 0, 2);
            this.reuseLayoutPanel.Dock = System.Windows.Forms.DockStyle.Fill;
            this.reuseLayoutPanel.Location = new System.Drawing.Point(0, 0);
            this.reuseLayoutPanel.Name = "reuseLayoutPanel";
            this.reuseLayoutPanel.RowCount = 8;
            this.reuseLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 64.22018F));
            this.reuseLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 35.77982F));
            this.reuseLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 36F));
            this.reuseLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 36F));
            this.reuseLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 39F));
            this.reuseLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 37F));
            this.reuseLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 344F));
            this.reuseLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 14F));
            this.reuseLayoutPanel.Size = new System.Drawing.Size(1045, 619);
            this.reuseLayoutPanel.TabIndex = 0;
            // 
            // reuseParentIDTextbox
            // 
            this.reuseParentIDTextbox.Location = new System.Drawing.Point(176, 75);
            this.reuseParentIDTextbox.Name = "reuseParentIDTextbox";
            this.reuseParentIDTextbox.Size = new System.Drawing.Size(696, 29);
            this.reuseParentIDTextbox.TabIndex = 3;
            // 
            // reuseExistingIDTextbox
            // 
            this.reuseExistingIDTextbox.Location = new System.Drawing.Point(176, 115);
            this.reuseExistingIDTextbox.Name = "reuseExistingIDTextbox";
            this.reuseExistingIDTextbox.Size = new System.Drawing.Size(696, 29);
            this.reuseExistingIDTextbox.TabIndex = 5;
            // 
            // reuseParentIDLabel
            // 
            this.reuseParentIDLabel.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.reuseParentIDLabel.AutoSize = true;
            this.reuseParentIDLabel.Location = new System.Drawing.Point(3, 72);
            this.reuseParentIDLabel.Name = "reuseParentIDLabel";
            this.reuseParentIDLabel.Size = new System.Drawing.Size(148, 40);
            this.reuseParentIDLabel.TabIndex = 2;
            this.reuseParentIDLabel.Text = "ID of Box Taken From";
            // 
            // reuseWeightLabel
            // 
            this.reuseWeightLabel.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.reuseWeightLabel.AutoSize = true;
            this.reuseWeightLabel.Location = new System.Drawing.Point(3, 154);
            this.reuseWeightLabel.Name = "reuseWeightLabel";
            this.reuseWeightLabel.Size = new System.Drawing.Size(69, 24);
            this.reuseWeightLabel.TabIndex = 7;
            this.reuseWeightLabel.Text = "Weight";
            // 
            // reuseCategoryLabel
            // 
            this.reuseCategoryLabel.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.reuseCategoryLabel.AutoSize = true;
            this.reuseCategoryLabel.Location = new System.Drawing.Point(3, 191);
            this.reuseCategoryLabel.Name = "reuseCategoryLabel";
            this.reuseCategoryLabel.Size = new System.Drawing.Size(85, 24);
            this.reuseCategoryLabel.TabIndex = 11;
            this.reuseCategoryLabel.Text = "Category";
            // 
            // reuseCategoryTextbox
            // 
            this.reuseCategoryTextbox.Location = new System.Drawing.Point(176, 187);
            this.reuseCategoryTextbox.Name = "reuseCategoryTextbox";
            this.reuseCategoryTextbox.Size = new System.Drawing.Size(696, 29);
            this.reuseCategoryTextbox.TabIndex = 8;
            // 
            // reuseWeightNumericbox
            // 
            this.reuseWeightNumericbox.DecimalPlaces = 2;
            this.reuseWeightNumericbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.reuseWeightNumericbox.Location = new System.Drawing.Point(176, 151);
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
            this.reuseCommentsTextbox.Location = new System.Drawing.Point(176, 263);
            this.reuseCommentsTextbox.Multiline = true;
            this.reuseCommentsTextbox.Name = "reuseCommentsTextbox";
            this.reuseCommentsTextbox.Size = new System.Drawing.Size(696, 335);
            this.reuseCommentsTextbox.TabIndex = 10;
            // 
            // reuseCommentsLabel
            // 
            this.reuseCommentsLabel.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.reuseCommentsLabel.AutoSize = true;
            this.reuseCommentsLabel.Location = new System.Drawing.Point(3, 420);
            this.reuseCommentsLabel.Name = "reuseCommentsLabel";
            this.reuseCommentsLabel.Size = new System.Drawing.Size(101, 24);
            this.reuseCommentsLabel.TabIndex = 9;
            this.reuseCommentsLabel.Text = "Comments";
            // 
            // reuseListedCheckbox
            // 
            this.reuseListedCheckbox.Anchor = System.Windows.Forms.AnchorStyles.Right;
            this.reuseListedCheckbox.AutoSize = true;
            this.reuseListedCheckbox.Location = new System.Drawing.Point(24, 227);
            this.reuseListedCheckbox.Name = "reuseListedCheckbox";
            this.reuseListedCheckbox.Size = new System.Drawing.Size(146, 28);
            this.reuseListedCheckbox.TabIndex = 13;
            this.reuseListedCheckbox.Text = "Listed for Sale";
            this.reuseListedCheckbox.UseVisualStyleBackColor = true;
            // 
            // reuseSoldCheckbox
            // 
            this.reuseSoldCheckbox.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.reuseSoldCheckbox.AutoSize = true;
            this.reuseSoldCheckbox.Location = new System.Drawing.Point(176, 227);
            this.reuseSoldCheckbox.Name = "reuseSoldCheckbox";
            this.reuseSoldCheckbox.Size = new System.Drawing.Size(67, 28);
            this.reuseSoldCheckbox.TabIndex = 14;
            this.reuseSoldCheckbox.Text = "Sold";
            this.reuseSoldCheckbox.UseVisualStyleBackColor = true;
            // 
            // reuseCheckedListBox
            // 
            this.reuseCheckedListBox.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(130)))), ((int)(((byte)(162)))), ((int)(((byte)(106)))));
            this.reuseCheckedListBox.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.reuseCheckedListBox.FormattingEnabled = true;
            this.reuseCheckedListBox.Items.AddRange(new object[] {
            "Create New Item Label",
            "Modify Existing Item"});
            this.reuseCheckedListBox.Location = new System.Drawing.Point(176, 3);
            this.reuseCheckedListBox.Name = "reuseCheckedListBox";
            this.reuseCheckedListBox.Size = new System.Drawing.Size(277, 48);
            this.reuseCheckedListBox.TabIndex = 6;
            this.reuseCheckedListBox.SelectedIndexChanged += new System.EventHandler(this.reuseCheckedListBox_SelectedIndexChanged);
            // 
            // reuseSearchButton
            // 
            this.reuseSearchButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.reuseSearchButton.Location = new System.Drawing.Point(878, 115);
            this.reuseSearchButton.Name = "reuseSearchButton";
            this.reuseSearchButton.Size = new System.Drawing.Size(164, 30);
            this.reuseSearchButton.TabIndex = 16;
            this.reuseSearchButton.Text = "Search";
            this.reuseSearchButton.UseVisualStyleBackColor = true;
            // 
            // reuseSubmitButton
            // 
            this.reuseSubmitButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.reuseSubmitButton.Location = new System.Drawing.Point(878, 263);
            this.reuseSubmitButton.Name = "reuseSubmitButton";
            this.reuseSubmitButton.Size = new System.Drawing.Size(164, 59);
            this.reuseSubmitButton.TabIndex = 15;
            this.reuseSubmitButton.Text = "Submit";
            this.reuseSubmitButton.UseVisualStyleBackColor = true;
            this.reuseSubmitButton.Click += new System.EventHandler(this.reuseSubmitButton_Click);
            // 
            // reuseExistingIDLabel
            // 
            this.reuseExistingIDLabel.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.reuseExistingIDLabel.AutoSize = true;
            this.reuseExistingIDLabel.Location = new System.Drawing.Point(3, 112);
            this.reuseExistingIDLabel.Name = "reuseExistingIDLabel";
            this.reuseExistingIDLabel.Size = new System.Drawing.Size(146, 36);
            this.reuseExistingIDLabel.TabIndex = 4;
            this.reuseExistingIDLabel.Text = "ID of Item Being Modified";
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
            this.searchLayoutPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 26.25418F));
            this.searchLayoutPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 73.74582F));
            this.searchLayoutPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 179F));
            this.searchLayoutPanel.Controls.Add(this.searchIDLabel, 0, 0);
            this.searchLayoutPanel.Controls.Add(this.searchClientLabel, 0, 1);
            this.searchLayoutPanel.Controls.Add(this.searchClientButton, 2, 1);
            this.searchLayoutPanel.Controls.Add(this.searchIDButton, 2, 0);
            this.searchLayoutPanel.Controls.Add(this.searchIDTextbox, 1, 0);
            this.searchLayoutPanel.Controls.Add(this.searchClientTextbox, 1, 1);
            this.searchLayoutPanel.Dock = System.Windows.Forms.DockStyle.Fill;
            this.searchLayoutPanel.Location = new System.Drawing.Point(0, 0);
            this.searchLayoutPanel.Name = "searchLayoutPanel";
            this.searchLayoutPanel.RowCount = 4;
            this.searchLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50.53764F));
            this.searchLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 49.46236F));
            this.searchLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 39F));
            this.searchLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 487F));
            this.searchLayoutPanel.Size = new System.Drawing.Size(1045, 619);
            this.searchLayoutPanel.TabIndex = 0;
            // 
            // searchIDLabel
            // 
            this.searchIDLabel.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.searchIDLabel.AutoSize = true;
            this.searchIDLabel.Location = new System.Drawing.Point(3, 11);
            this.searchIDLabel.Name = "searchIDLabel";
            this.searchIDLabel.Size = new System.Drawing.Size(168, 24);
            this.searchIDLabel.TabIndex = 0;
            this.searchIDLabel.Text = "Search by Label ID";
            // 
            // searchClientLabel
            // 
            this.searchClientLabel.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.searchClientLabel.AutoSize = true;
            this.searchClientLabel.Location = new System.Drawing.Point(3, 57);
            this.searchClientLabel.Name = "searchClientLabel";
            this.searchClientLabel.Size = new System.Drawing.Size(147, 24);
            this.searchClientLabel.TabIndex = 1;
            this.searchClientLabel.Text = "Search by Client";
            // 
            // searchClientButton
            // 
            this.searchClientButton.Enabled = false;
            this.searchClientButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.searchClientButton.Location = new System.Drawing.Point(868, 50);
            this.searchClientButton.Name = "searchClientButton";
            this.searchClientButton.Size = new System.Drawing.Size(164, 36);
            this.searchClientButton.TabIndex = 18;
            this.searchClientButton.Text = "Search";
            this.searchClientButton.UseVisualStyleBackColor = true;
            // 
            // searchIDButton
            // 
            this.searchIDButton.Enabled = false;
            this.searchIDButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.searchIDButton.Location = new System.Drawing.Point(868, 3);
            this.searchIDButton.Name = "searchIDButton";
            this.searchIDButton.Size = new System.Drawing.Size(164, 36);
            this.searchIDButton.TabIndex = 17;
            this.searchIDButton.Text = "Search";
            this.searchIDButton.UseVisualStyleBackColor = true;
            // 
            // searchIDTextbox
            // 
            this.searchIDTextbox.Location = new System.Drawing.Point(230, 3);
            this.searchIDTextbox.Name = "searchIDTextbox";
            this.searchIDTextbox.Size = new System.Drawing.Size(632, 29);
            this.searchIDTextbox.TabIndex = 19;
            // 
            // searchClientTextbox
            // 
            this.searchClientTextbox.Location = new System.Drawing.Point(230, 50);
            this.searchClientTextbox.Name = "searchClientTextbox";
            this.searchClientTextbox.Size = new System.Drawing.Size(632, 29);
            this.searchClientTextbox.TabIndex = 20;
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
            this.searchTab.ResumeLayout(false);
            this.searchLayoutPanel.ResumeLayout(false);
            this.searchLayoutPanel.PerformLayout();
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
        private System.Windows.Forms.Label reuseExistingIDLabel;
        private System.Windows.Forms.TextBox reuseExistingIDTextbox;
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
        private System.Windows.Forms.Button reuseSearchButton;
        private System.Windows.Forms.Label searchIDLabel;
        private System.Windows.Forms.Label searchClientLabel;
        private System.Windows.Forms.Button searchClientButton;
        private System.Windows.Forms.Button searchIDButton;
        private System.Windows.Forms.TextBox searchIDTextbox;
        private System.Windows.Forms.TextBox searchClientTextbox;
        private System.Windows.Forms.TableLayoutPanel searchLayoutPanel;
    }
}

