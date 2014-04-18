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
            this.menuListbox = new System.Windows.Forms.ListBox();
            this.contextMenuStrip2 = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.boxInputSubmitButton = new System.Windows.Forms.Button();
            this.receivingComments = new System.Windows.Forms.TextBox();
            this.receivingCommentsLabel = new System.Windows.Forms.Label();
            this.receivingCategory = new System.Windows.Forms.TextBox();
            this.receivingCategoryLabel = new System.Windows.Forms.Label();
            this.receivingWeight = new System.Windows.Forms.NumericUpDown();
            this.receivingWeightLabel = new System.Windows.Forms.Label();
            this.receivingDateReceived = new System.Windows.Forms.DateTimePicker();
            this.receivingDateReceivedLabel = new System.Windows.Forms.Label();
            this.receivingGaylordSource = new System.Windows.Forms.TextBox();
            this.receivingPileCheckbox = new System.Windows.Forms.CheckBox();
            this.receivingClientLabel = new System.Windows.Forms.Label();
            this.receivingPanel = new System.Windows.Forms.FlowLayoutPanel();
            this.reusePanel = new System.Windows.Forms.FlowLayoutPanel();
            this.label1 = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.checkBox1 = new System.Windows.Forms.CheckBox();
            this.label2 = new System.Windows.Forms.Label();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            this.label3 = new System.Windows.Forms.Label();
            this.numericUpDown1 = new System.Windows.Forms.NumericUpDown();
            this.label4 = new System.Windows.Forms.Label();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.textBox3 = new System.Windows.Forms.TextBox();
            this.button1 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.receivingWeight)).BeginInit();
            this.receivingPanel.SuspendLayout();
            this.reusePanel.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown1)).BeginInit();
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
            // menuListbox
            // 
            this.menuListbox.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(130)))), ((int)(((byte)(162)))), ((int)(((byte)(106)))));
            this.menuListbox.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.menuListbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.menuListbox.FormattingEnabled = true;
            this.menuListbox.ItemHeight = 29;
            this.menuListbox.Items.AddRange(new object[] {
            "Receiving",
            "Reuse",
            "Office"});
            this.menuListbox.Location = new System.Drawing.Point(13, 13);
            this.menuListbox.Name = "menuListbox";
            this.menuListbox.Size = new System.Drawing.Size(120, 261);
            this.menuListbox.TabIndex = 2;
            this.menuListbox.SelectedIndexChanged += new System.EventHandler(this.menuListbox_SelectedIndexChanged);
            // 
            // contextMenuStrip2
            // 
            this.contextMenuStrip2.Name = "contextMenuStrip2";
            this.contextMenuStrip2.Size = new System.Drawing.Size(61, 4);
            // 
            // boxInputSubmitButton
            // 
            this.boxInputSubmitButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.boxInputSubmitButton.Location = new System.Drawing.Point(3, 423);
            this.boxInputSubmitButton.Name = "boxInputSubmitButton";
            this.boxInputSubmitButton.Size = new System.Drawing.Size(177, 59);
            this.boxInputSubmitButton.TabIndex = 12;
            this.boxInputSubmitButton.Text = "Submit";
            this.boxInputSubmitButton.UseVisualStyleBackColor = true;
            // 
            // receivingComments
            // 
            this.receivingComments.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingComments.Location = new System.Drawing.Point(255, 215);
            this.receivingComments.Multiline = true;
            this.receivingComments.Name = "receivingComments";
            this.receivingComments.Size = new System.Drawing.Size(910, 202);
            this.receivingComments.TabIndex = 11;
            this.receivingComments.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
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
            this.receivingCommentsLabel.Click += new System.EventHandler(this.receivingCommentsLabel_Click);
            // 
            // receivingCategory
            // 
            this.receivingCategory.Font = new System.Drawing.Font("Microsoft Sans Serif", 26.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingCategory.Location = new System.Drawing.Point(255, 162);
            this.receivingCategory.Name = "receivingCategory";
            this.receivingCategory.Size = new System.Drawing.Size(910, 47);
            this.receivingCategory.TabIndex = 8;
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
            // receivingWeight
            // 
            this.receivingWeight.DecimalPlaces = 2;
            this.receivingWeight.Font = new System.Drawing.Font("Microsoft Sans Serif", 26.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingWeight.Location = new System.Drawing.Point(255, 109);
            this.receivingWeight.Maximum = new decimal(new int[] {
            276447231,
            23283,
            0,
            0});
            this.receivingWeight.Name = "receivingWeight";
            this.receivingWeight.Size = new System.Drawing.Size(910, 47);
            this.receivingWeight.TabIndex = 6;
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
            // receivingDateReceived
            // 
            this.receivingDateReceived.Font = new System.Drawing.Font("Microsoft Sans Serif", 26.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingDateReceived.Location = new System.Drawing.Point(255, 56);
            this.receivingDateReceived.Name = "receivingDateReceived";
            this.receivingDateReceived.Size = new System.Drawing.Size(910, 47);
            this.receivingDateReceived.TabIndex = 3;
            this.receivingDateReceived.Value = new System.DateTime(2014, 4, 15, 11, 41, 41, 0);
            this.receivingDateReceived.ValueChanged += new System.EventHandler(this.dateTimePicker1_ValueChanged);
            // 
            // receivingDateReceivedLabel
            // 
            this.receivingDateReceivedLabel.Enabled = false;
            this.receivingDateReceivedLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingDateReceivedLabel.Location = new System.Drawing.Point(3, 53);
            this.receivingDateReceivedLabel.Name = "receivingDateReceivedLabel";
            this.receivingDateReceivedLabel.Size = new System.Drawing.Size(246, 50);
            this.receivingDateReceivedLabel.TabIndex = 2;
            this.receivingDateReceivedLabel.Text = "Date Received";
            this.receivingDateReceivedLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.receivingDateReceivedLabel.Click += new System.EventHandler(this.label2_Click);
            // 
            // receivingGaylordSource
            // 
            this.receivingGaylordSource.Font = new System.Drawing.Font("Microsoft Sans Serif", 26.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingGaylordSource.Location = new System.Drawing.Point(255, 3);
            this.receivingGaylordSource.MaxLength = 200;
            this.receivingGaylordSource.Name = "receivingGaylordSource";
            this.receivingGaylordSource.Size = new System.Drawing.Size(644, 47);
            this.receivingGaylordSource.TabIndex = 1;
            this.receivingGaylordSource.Text = "Source...";
            this.receivingGaylordSource.TextChanged += new System.EventHandler(this.boxSource_TextChanged);
            // 
            // receivingPileCheckbox
            // 
            this.receivingPileCheckbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingPileCheckbox.Location = new System.Drawing.Point(905, 3);
            this.receivingPileCheckbox.Name = "receivingPileCheckbox";
            this.receivingPileCheckbox.Size = new System.Drawing.Size(260, 47);
            this.receivingPileCheckbox.TabIndex = 13;
            this.receivingPileCheckbox.Text = "Taken from Pile";
            this.receivingPileCheckbox.UseVisualStyleBackColor = true;
            this.receivingPileCheckbox.CheckedChanged += new System.EventHandler(this.receivingPileCheckbox_CheckedChanged);
            // 
            // receivingClientLabel
            // 
            this.receivingClientLabel.Enabled = false;
            this.receivingClientLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingClientLabel.Location = new System.Drawing.Point(3, 0);
            this.receivingClientLabel.Name = "receivingClientLabel";
            this.receivingClientLabel.Size = new System.Drawing.Size(246, 53);
            this.receivingClientLabel.TabIndex = 0;
            this.receivingClientLabel.Text = "Original Client";
            this.receivingClientLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.receivingClientLabel.Click += new System.EventHandler(this.label1_Click);
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
            this.receivingPanel.Controls.Add(this.boxInputSubmitButton);
            this.receivingPanel.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.receivingPanel.Location = new System.Drawing.Point(3, 3);
            this.receivingPanel.Name = "receivingPanel";
            this.receivingPanel.Size = new System.Drawing.Size(1338, 663);
            this.receivingPanel.TabIndex = 1;
            this.receivingPanel.Paint += new System.Windows.Forms.PaintEventHandler(this.receivingPanel_Paint);
            // 
            // reusePanel
            // 
            this.reusePanel.Controls.Add(this.receivingPanel);
            this.reusePanel.Controls.Add(this.label1);
            this.reusePanel.Controls.Add(this.textBox1);
            this.reusePanel.Controls.Add(this.checkBox1);
            this.reusePanel.Controls.Add(this.label2);
            this.reusePanel.Controls.Add(this.dateTimePicker1);
            this.reusePanel.Controls.Add(this.label3);
            this.reusePanel.Controls.Add(this.numericUpDown1);
            this.reusePanel.Controls.Add(this.label4);
            this.reusePanel.Controls.Add(this.textBox2);
            this.reusePanel.Controls.Add(this.label5);
            this.reusePanel.Controls.Add(this.textBox3);
            this.reusePanel.Controls.Add(this.button1);
            this.reusePanel.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.reusePanel.Location = new System.Drawing.Point(139, 13);
            this.reusePanel.Name = "reusePanel";
            this.reusePanel.Size = new System.Drawing.Size(1338, 663);
            this.reusePanel.TabIndex = 14;
            this.reusePanel.Paint += new System.Windows.Forms.PaintEventHandler(this.reusePanel_Paint);
            // 
            // label1
            // 
            this.label1.Enabled = false;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(3, 669);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(246, 53);
            this.label1.TabIndex = 0;
            this.label1.Text = "Original Client";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // textBox1
            // 
            this.textBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 26.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.textBox1.Location = new System.Drawing.Point(255, 672);
            this.textBox1.MaxLength = 200;
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(644, 47);
            this.textBox1.TabIndex = 1;
            this.textBox1.Text = "Source...";
            // 
            // checkBox1
            // 
            this.checkBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.checkBox1.Location = new System.Drawing.Point(905, 672);
            this.checkBox1.Name = "checkBox1";
            this.checkBox1.Size = new System.Drawing.Size(260, 47);
            this.checkBox1.TabIndex = 13;
            this.checkBox1.Text = "Taken from Pile";
            this.checkBox1.UseVisualStyleBackColor = true;
            // 
            // label2
            // 
            this.label2.Enabled = false;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(3, 722);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(246, 50);
            this.label2.TabIndex = 2;
            this.label2.Text = "Date Received";
            this.label2.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.Font = new System.Drawing.Font("Microsoft Sans Serif", 26.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dateTimePicker1.Location = new System.Drawing.Point(255, 725);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(910, 47);
            this.dateTimePicker1.TabIndex = 3;
            this.dateTimePicker1.Value = new System.DateTime(2014, 4, 15, 11, 41, 41, 0);
            // 
            // label3
            // 
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(3, 775);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(246, 50);
            this.label3.TabIndex = 4;
            this.label3.Text = "Weight";
            this.label3.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // numericUpDown1
            // 
            this.numericUpDown1.DecimalPlaces = 2;
            this.numericUpDown1.Font = new System.Drawing.Font("Microsoft Sans Serif", 26.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.numericUpDown1.Location = new System.Drawing.Point(255, 778);
            this.numericUpDown1.Maximum = new decimal(new int[] {
            276447231,
            23283,
            0,
            0});
            this.numericUpDown1.Name = "numericUpDown1";
            this.numericUpDown1.Size = new System.Drawing.Size(910, 47);
            this.numericUpDown1.TabIndex = 6;
            // 
            // label4
            // 
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(3, 828);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(246, 50);
            this.label4.TabIndex = 7;
            this.label4.Text = "Category";
            this.label4.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // textBox2
            // 
            this.textBox2.Font = new System.Drawing.Font("Microsoft Sans Serif", 26.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.textBox2.Location = new System.Drawing.Point(255, 831);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(910, 47);
            this.textBox2.TabIndex = 8;
            // 
            // label5
            // 
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(3, 881);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(246, 39);
            this.label5.TabIndex = 9;
            this.label5.Text = "Comments";
            this.label5.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // textBox3
            // 
            this.textBox3.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.textBox3.Location = new System.Drawing.Point(255, 884);
            this.textBox3.Multiline = true;
            this.textBox3.Name = "textBox3";
            this.textBox3.Size = new System.Drawing.Size(910, 202);
            this.textBox3.TabIndex = 11;
            // 
            // button1
            // 
            this.button1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.button1.Location = new System.Drawing.Point(3, 1092);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(177, 59);
            this.button1.TabIndex = 12;
            this.button1.Text = "Submit";
            this.button1.UseVisualStyleBackColor = true;
            // 
            // Main
            // 
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(130)))), ((int)(((byte)(162)))), ((int)(((byte)(106)))));
            this.ClientSize = new System.Drawing.Size(1464, 653);
            this.Controls.Add(this.menuListbox);
            this.Controls.Add(this.reusePanel);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Name = "Main";
            this.Load += new System.EventHandler(this.Main_Load_1);
            ((System.ComponentModel.ISupportInitialize)(this.receivingWeight)).EndInit();
            this.receivingPanel.ResumeLayout(false);
            this.receivingPanel.PerformLayout();
            this.reusePanel.ResumeLayout(false);
            this.reusePanel.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown1)).EndInit();
            this.ResumeLayout(false);

        }
        #endregion
        private System.Windows.Forms.ContextMenuStrip contextMenuStrip1;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem1;
        private System.Windows.Forms.TextBox SerialData;
        private System.Windows.Forms.ListBox menuListbox;
        private System.Windows.Forms.ContextMenuStrip contextMenuStrip2;
        private System.Windows.Forms.Button boxInputSubmitButton;
        private System.Windows.Forms.TextBox receivingComments;
        private System.Windows.Forms.Label receivingCommentsLabel;
        private System.Windows.Forms.TextBox receivingCategory;
        private System.Windows.Forms.Label receivingCategoryLabel;
        private System.Windows.Forms.NumericUpDown receivingWeight;
        private System.Windows.Forms.Label receivingWeightLabel;
        private System.Windows.Forms.DateTimePicker receivingDateReceived;
        private System.Windows.Forms.Label receivingDateReceivedLabel;
        private System.Windows.Forms.TextBox receivingGaylordSource;
        private System.Windows.Forms.CheckBox receivingPileCheckbox;
        private System.Windows.Forms.Label receivingClientLabel;
        private System.Windows.Forms.FlowLayoutPanel receivingPanel;
        private System.Windows.Forms.FlowLayoutPanel reusePanel;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.CheckBox checkBox1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.NumericUpDown numericUpDown1;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox textBox3;
        private System.Windows.Forms.Button button1;
    }
}

