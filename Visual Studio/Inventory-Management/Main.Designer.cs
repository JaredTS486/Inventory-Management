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
            this.boxSource = new System.Windows.Forms.TextBox();
            this.objectSubmit = new System.Windows.Forms.FlowLayoutPanel();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.boxDateCreated = new System.Windows.Forms.DateTimePicker();
            this.label3 = new System.Windows.Forms.Label();
            this.boxWeight = new System.Windows.Forms.NumericUpDown();
            this.listBox1 = new System.Windows.Forms.ListBox();
            this.label4 = new System.Windows.Forms.Label();
            this.boxDescription = new System.Windows.Forms.TextBox();
            this.boxInputSubmitButton = new System.Windows.Forms.Button();
            this.label5 = new System.Windows.Forms.Label();
            this.boxParentID = new System.Windows.Forms.NumericUpDown();
            this.boxParentCheckbox = new System.Windows.Forms.CheckBox();
            this.objectSubmit.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.boxWeight)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.boxParentID)).BeginInit();
            this.SuspendLayout();
            // 
            // boxSource
            // 
            this.boxSource.Location = new System.Drawing.Point(3, 16);
            this.boxSource.MaxLength = 200;
            this.boxSource.Name = "boxSource";
            this.boxSource.Size = new System.Drawing.Size(716, 20);
            this.boxSource.TabIndex = 1;
            this.boxSource.Text = "Where it comes from";
            // 
            // objectSubmit
            // 
            this.objectSubmit.Controls.Add(this.label1);
            this.objectSubmit.Controls.Add(this.boxSource);
            this.objectSubmit.Controls.Add(this.label2);
            this.objectSubmit.Controls.Add(this.boxDateCreated);
            this.objectSubmit.Controls.Add(this.label3);
            this.objectSubmit.Controls.Add(this.boxWeight);
            this.objectSubmit.Controls.Add(this.label4);
            this.objectSubmit.Controls.Add(this.boxDescription);
            this.objectSubmit.Controls.Add(this.label5);
            this.objectSubmit.Controls.Add(this.boxParentCheckbox);
            this.objectSubmit.Controls.Add(this.boxParentID);
            this.objectSubmit.Controls.Add(this.boxInputSubmitButton);
            this.objectSubmit.Location = new System.Drawing.Point(139, 12);
            this.objectSubmit.Name = "objectSubmit";
            this.objectSubmit.Size = new System.Drawing.Size(736, 630);
            this.objectSubmit.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.Enabled = false;
            this.label1.Location = new System.Drawing.Point(3, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(287, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Original Client";
            this.label1.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // label2
            // 
            this.label2.Enabled = false;
            this.label2.Location = new System.Drawing.Point(3, 39);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(287, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Date Created";
            this.label2.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // boxDateCreated
            // 
            this.boxDateCreated.Location = new System.Drawing.Point(3, 55);
            this.boxDateCreated.Name = "boxDateCreated";
            this.boxDateCreated.Size = new System.Drawing.Size(716, 20);
            this.boxDateCreated.TabIndex = 3;
            this.boxDateCreated.Value = new System.DateTime(2014, 4, 15, 11, 41, 41, 0);
            this.boxDateCreated.ValueChanged += new System.EventHandler(this.dateTimePicker1_ValueChanged);
            // 
            // label3
            // 
            this.label3.Location = new System.Drawing.Point(3, 78);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(261, 13);
            this.label3.TabIndex = 4;
            this.label3.Text = "Weight";
            this.label3.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // boxWeight
            // 
            this.boxWeight.DecimalPlaces = 2;
            this.boxWeight.Location = new System.Drawing.Point(3, 94);
            this.boxWeight.Maximum = new decimal(new int[] {
            276447231,
            23283,
            0,
            0});
            this.boxWeight.Name = "boxWeight";
            this.boxWeight.Size = new System.Drawing.Size(716, 20);
            this.boxWeight.TabIndex = 6;
            // 
            // listBox1
            // 
            this.listBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.listBox1.FormattingEnabled = true;
            this.listBox1.ItemHeight = 29;
            this.listBox1.Items.AddRange(new object[] {
            "Box",
            "Item"});
            this.listBox1.Location = new System.Drawing.Point(13, 13);
            this.listBox1.Name = "listBox1";
            this.listBox1.Size = new System.Drawing.Size(120, 236);
            this.listBox1.TabIndex = 2;
            this.listBox1.SelectedIndexChanged += new System.EventHandler(this.listBox1_SelectedIndexChanged);
            // 
            // label4
            // 
            this.label4.Location = new System.Drawing.Point(3, 117);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(314, 13);
            this.label4.TabIndex = 7;
            this.label4.Text = "Object Description";
            this.label4.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // boxDescription
            // 
            this.boxDescription.Location = new System.Drawing.Point(3, 133);
            this.boxDescription.Multiline = true;
            this.boxDescription.Name = "boxDescription";
            this.boxDescription.Size = new System.Drawing.Size(716, 104);
            this.boxDescription.TabIndex = 8;
            // 
            // boxInputSubmitButton
            // 
            this.boxInputSubmitButton.Location = new System.Drawing.Point(3, 292);
            this.boxInputSubmitButton.Name = "boxInputSubmitButton";
            this.boxInputSubmitButton.Size = new System.Drawing.Size(75, 23);
            this.boxInputSubmitButton.TabIndex = 12;
            this.boxInputSubmitButton.Text = "Submit";
            this.boxInputSubmitButton.UseVisualStyleBackColor = true;
            // 
            // label5
            // 
            this.label5.Location = new System.Drawing.Point(3, 240);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(422, 13);
            this.label5.TabIndex = 9;
            this.label5.Text = "ID of Box Taken From ";
            this.label5.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // boxParentID
            // 
            this.boxParentID.Location = new System.Drawing.Point(3, 266);
            this.boxParentID.Maximum = new decimal(new int[] {
            268435455,
            1042612833,
            542101086,
            0});
            this.boxParentID.Name = "boxParentID";
            this.boxParentID.Size = new System.Drawing.Size(716, 20);
            this.boxParentID.TabIndex = 11;
            // 
            // boxParentCheckbox
            // 
            this.boxParentCheckbox.AutoSize = true;
            this.boxParentCheckbox.Location = new System.Drawing.Point(431, 243);
            this.boxParentCheckbox.Name = "boxParentCheckbox";
            this.boxParentCheckbox.Size = new System.Drawing.Size(116, 17);
            this.boxParentCheckbox.TabIndex = 10;
            this.boxParentCheckbox.Text = "Not taken from box";
            this.boxParentCheckbox.UseVisualStyleBackColor = true;
            this.boxParentCheckbox.CheckedChanged += new System.EventHandler(this.boxParentCheckbox_CheckedChanged);
            // 
            // Main
            // 
            this.ClientSize = new System.Drawing.Size(875, 637);
            this.Controls.Add(this.listBox1);
            this.Controls.Add(this.objectSubmit);
            this.Name = "Main";
            this.Load += new System.EventHandler(this.Main_Load_1);
            this.objectSubmit.ResumeLayout(false);
            this.objectSubmit.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.boxWeight)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.boxParentID)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.ContextMenuStrip contextMenuStrip1;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem1;
        private System.Windows.Forms.TextBox SerialData;
        private System.Windows.Forms.TextBox boxSource;
        private System.Windows.Forms.FlowLayoutPanel objectSubmit;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DateTimePicker boxDateCreated;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.NumericUpDown boxWeight;
        private System.Windows.Forms.ListBox listBox1;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox boxDescription;
        private System.Windows.Forms.Button boxInputSubmitButton;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.CheckBox boxParentCheckbox;
        private System.Windows.Forms.NumericUpDown boxParentID;
    }
}

