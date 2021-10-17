using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Final_Project_Part_1.GUI;


namespace Final_Project_Part_1.GUI
{
    public partial class FormChooseOption : Form
    {
        public FormChooseOption()
        {
            InitializeComponent();
        }
        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            

        }
        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }
        private void radioButton3_CheckedChanged(object sender, EventArgs e)
        {

        }
        private void radioButton4_CheckedChanged(object sender, EventArgs e)
        {

        }
        private void radioButton5_CheckedChanged(object sender, EventArgs e)
        {

        }
        private void button1_Click(object sender, EventArgs e)
        {
            if (radioButton1.Checked)
            {
                if (textBox1.Text == " " || textBox2.Text == " ")
                {
                    MessageBox.Show("Please enter UserId and Passsword");
                }
                else
                {
                    string temp1 = textBox1.Text.Trim();
                    string temp2 = textBox2.Text.Trim();
                    if (!Validator.IsValidId(temp1, 4))
                    {
                        MessageBox.Show("Invalid User Id", "Error");
                        textBox1.Clear();
                        textBox1.Focus();
                        return;
                    }
                    HiTech us = new HiTech();
                    us = us.GetUser(Convert.ToInt32(textBox1.Text.Trim()));
                    if (us != null)
                    {
                        if (textBox1.Text == us.UserId.ToString() && textBox2.Text != us.Password)
                        {
                            MessageBox.Show("Invalid Password!!!", "Warning");
                            textBox2.Clear();
                            textBox2.Focus();
                            return;
                        }
                        else if (textBox1.Text == us.UserId.ToString() && textBox2.Text == us.Password && us.EmployeeId == 222)
                        {
                            FormHiTech fh = new FormHiTech();
                            fh.ShowDialog();
                        }
                        else if (textBox1.Text == us.UserId.ToString() && textBox2.Text == us.Password && us.EmployeeId != 222)
                        {
                            MessageBox.Show("Sorry !! Only MIS Managers can modity tables User & Employee !! ", "Warning");
                        }
                    }
                }
            }
            else if (radioButton2.Checked)
            {
                if (textBox1.Text == " " || textBox2.Text == " ")
                {
                    MessageBox.Show("Please enter UserId and Passsword");
                }
                else
                {
                    string temp1 = textBox1.Text.Trim();
                    string temp2 = textBox2.Text.Trim();
                    if (!Validator.IsValidId(temp1, 4))
                    {
                        MessageBox.Show("Invalid User Id", "Error");
                        textBox1.Clear();
                        textBox1.Focus();
                        return;
                    }
                    HiTech us = new HiTech();
                    us = us.GetUser(Convert.ToInt32(textBox1.Text.Trim()));
                    if (us != null)
                    {
                        if (textBox1.Text == us.UserId.ToString() && textBox2.Text != us.Password)
                        {
                            MessageBox.Show("Invalid Password!!!", "Warning");
                            textBox2.Clear();
                            textBox2.Focus();
                            return;
                        }
                        else if (textBox1.Text == us.UserId.ToString() && textBox2.Text == us.Password && us.JobId == 3333)
                        {
                            //FormCustomer fc = new FormCustomer();
                            //fc.ShowDialog();
                        }
                        else if (textBox1.Text == us.UserId.ToString() && textBox2.Text == us.Password && us.JobId != 2222)
                        {
                            MessageBox.Show("Sorry !! Only Sales Managers can modity table Customer !! ", "Warning");
                        }
                    }
                }
            }
            else if (radioButton3.Checked)
            {
                if (textBox1.Text == " " || textBox2.Text == " ")
                {
                    MessageBox.Show("Please enter UserId and Passsword");
                }
                else
                {
                    string temp1 = textBox1.Text.Trim();
                    string temp2 = textBox2.Text.Trim();
                    if (!Validator.IsValidId(temp1, 4))
                    {
                        MessageBox.Show("Invalid User Id", "Error");
                        textBox1.Clear();
                        textBox1.Focus();
                        return;
                    }
                    HiTech us = new HiTech();
                    us = us.GetUser(Convert.ToInt32(textBox1.Text.Trim()));
                    if (us != null)
                    {
                        if (textBox1.Text == us.UserId.ToString() && textBox2.Text != us.Password)
                        {
                            MessageBox.Show("Invalid Password!!!", "Warning");
                            textBox2.Clear();
                            textBox2.Focus();
                            return;
                        }
                        else if (textBox1.Text == us.UserId.ToString() && textBox2.Text == us.Password && us.JobId == 3333)
                        {
                            //FormCustomer fc = new FormCustomer();
                            //fc.ShowDialog();
                        }
                        else if (textBox1.Text == us.UserId.ToString() && textBox2.Text == us.Password && us.JobId != 2222)
                        {
                            MessageBox.Show("Sorry !! Only Inventory Controllers can modity table Book !! ", "Warning");
                        }
                    }
                }
            }
            else if (radioButton4.Checked)
            {
                if (textBox1.Text == " " || textBox2.Text == " ")
                {
                    MessageBox.Show("Please enter UserId and Passsword");
                }
                else
                {
                    string temp1 = textBox1.Text.Trim();
                    string temp2 = textBox2.Text.Trim();
                    if (!Validator.IsValidId(temp1, 4))
                    {
                        MessageBox.Show("Invalid User Id", "Error");
                        textBox1.Clear();
                        textBox1.Focus();
                        return;
                    }
                    HiTech us = new HiTech();
                    us = us.GetUser(Convert.ToInt32(textBox1.Text.Trim()));
                    if (us != null)
                    {
                        if (textBox1.Text == us.UserId.ToString() && textBox2.Text != us.Password)
                        {
                            MessageBox.Show("Invalid Password!!!", "Warning");
                            textBox2.Clear();
                            textBox2.Focus();
                            return;
                        }
                        else if (textBox1.Text == us.UserId.ToString() && textBox2.Text == us.Password && us.JobId == 3333)
                        {
                            //FormCustomer fc = new FormCustomer();
                            //fc.ShowDialog();
                        }
                        else if (textBox1.Text == us.UserId.ToString() && textBox2.Text == us.Password && us.JobId != 2222)
                        {
                            MessageBox.Show("Sorry !! Only Order Clerks can modity table Order !! ", "Warning");
                        }
                    }
                }
            }
            else if (radioButton5.Checked)
            {
                if (textBox1.Text == " " || textBox2.Text == " ")
                {
                    MessageBox.Show("Please enter UserId and Passsword");
                }
                else
                {
                    string temp1 = textBox1.Text.Trim();
                    string temp2 = textBox2.Text.Trim();
                    if (!Validator.IsValidId(temp1, 4))
                    {
                        MessageBox.Show("Invalid User Id", "Error");
                        textBox1.Clear();
                        textBox1.Focus();
                        return;
                    }
                    HiTech us = new HiTech();
                    us = us.GetUser(Convert.ToInt32(textBox1.Text.Trim()));
                    if (us != null)
                    {
                        if (textBox1.Text == us.UserId.ToString() && textBox2.Text != us.Password)
                        {
                            MessageBox.Show("Invalid Password!!!", "Warning");
                            textBox2.Clear();
                            textBox2.Focus();
                            return;
                        }
                        else if (textBox1.Text == us.UserId.ToString() && textBox2.Text == us.Password && us.JobId == 3333)
                        {
                            //FormCustomer fc = new FormCustomer();
                            //fc.ShowDialog();
                        }
                        else if (textBox1.Text == us.UserId.ToString() && textBox2.Text == us.Password && us.JobId != 2222)
                        {
                            MessageBox.Show("Sorry !! Only Accountant can modity table Invoices !! ", "Warning");
                        }
                    }
                }
            }
        }
    }

        
    
}
