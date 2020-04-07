using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Collections;
namespace OnlineExam
{
    public partial class Test : System.Web.UI.Page
    {
        int TotQus = 0, ResultId = 100;
        static int count = 0;
        static int viewradio = 0;
        float sepmarks = 0.0f;
        static float marks = 0.0f, correct = 0.0f;
        int totalSeconds = 0, seconds = 60, minutes = 60, selectedcount = 0, originalcount = 0, crt = 0, wr = 0;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["teststring"].ConnectionString);
        string selected, subject_name, Result = null, UserName = null;
        static String CrtAns = null, ChoiceType = null;
        string con_str = "Data Source=DESKTOP-EH88R88;Initial Catalog=OnlineExam;Integrated Security=True";
        DataTable dt;
        DataSet ds;
        SqlDataAdapter ad;
        static int rowindex = -1;

        protected void Page_Load(object sender, EventArgs e)
        {
            subject_name = Request.QueryString["Subject_name"].ToString().Trim();
            String oldSelectedSubject = subject_name;
            UserName = Session["UserName"].ToString();
            Session["Subject_name"] = oldSelectedSubject;

            string noofqns = "SELECT [NumberOfQuestions] FROM [tblTestSetting]";
            SqlCommand cmd = new SqlCommand(noofqns, con);
            con.Open();
            TotQus = Convert.ToInt32(cmd.ExecuteScalar());



            String cmd11 = "SELECT TOP " + TotQus + " [SerialNumber], [SubjectName], [Question], [Option1], [Option2], [Option3], [Option4], [Answer], [ChoiceType] FROM [tblQuestions] where [SubjectName]='" + oldSelectedSubject + "'order by newid()";
            ds = new DataSet();

            ad = new SqlDataAdapter(cmd11, con);
            ad.Fill(ds, "tblQuestions");
            dt = ds.Tables["tblQuestions"];
            con.Close();


            if (viewradio == 0)
            {
                RadioInvisible();
            }

            else
            {
                RadioVisible();
            }
            viewradio += 1;

            CheckBoxInvisible();
        }



        protected void Timer1_Tick(object sender, EventArgs e)
        {

            Session["time"] = Convert.ToInt16(Session["time"]) - 1;
            if (Convert.ToInt16(Session["time"]) <= 0)
            {
                clock.Text = "TimeOut!";
                img_Next.Visible = false;
                img_submitnop.Visible = false;
                RadioInvisible();
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "OpenWindow", "window.open('Score.aspx?marks=" + marks + "');", true);
                string strscript = "<script language=javascript>window.opener='';window.top.close();</script>";
                Page.RegisterStartupScript("clientScript", strscript);
                // Chu thich
                ProcessDb.RunActionQuery(String.Format ("Câu Insert");
            }

            else
            {
                totalSeconds = Convert.ToInt16(Session["time"]);
                seconds = totalSeconds % 60;
                minutes = totalSeconds / 60;
                clock.Text = minutes + ":" + seconds;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void call()
        {

            rowindex = rowindex + 1;
            if (ChoiceType == "Single")
            {
                selected = SelectedAnswer();
                if (CrtAns == selected)
                {
                    correct = correct + 1;

                }
            }
            else
            {

                selected = ChoosedAnswer();
                string selectednew = selected.Remove(selected.Length - 1, 1);
                ArrayList userSelected = new ArrayList();
                ArrayList originalvalues = new ArrayList();
                string[] originalAns = CrtAns.Split(',');
                string[] str = selectednew.Split(',');

                foreach (string orignal in originalAns)
                {
                    originalvalues.Add(orignal);
                }


                foreach (string orignal in str)
                {
                    userSelected.Add(orignal);
                }

                selectedcount = userSelected.Count;
                originalcount = originalvalues.Count;
                float orgcnt = (float)originalcount;
                sepmarks = (1.0f) / orgcnt;

                if (selectedcount > originalcount)
                {
                    crt = 0;
                    Response.Write(" Crt :" + crt);
                }
                else
                {
                    for (int i = 0; i < selectedcount; i++)
                    {
                        if (originalvalues.Contains(userSelected[i]))
                        {
                            crt += 1;

                        }

                        else
                        {
                            wr += 1;
                        }

                    }
                }
                correct += (sepmarks * crt);
                Response.Write(correct);
            }

            RadioUncheck();
            CheckBoxUnchek();
            DisplayQuestion();
        }


        public string SelectedAnswer()
        {
            if (RadioButton1.Checked)
            {
                return "A";
            }
            else if (RadioButton2.Checked)
            {
                return "B";
            }
            else if (RadioButton3.Checked)
            {
                return "C";
            }

            else if (RadioButton4.Checked)
            {
                return "D";
            }
            else
            {
                return "nothing";
            }
        }

        protected string ChoosedAnswer()
        {
            string choose = null;

            if (CheckBox1.Checked)
            {
                choose = "A,";

            }
            if (CheckBox2.Checked)
            {
                choose += "B,";
            }
            if (CheckBox3.Checked)
            {
                choose += "C,";
            }

            if (CheckBox4.Checked)
            {
                choose += "D,";
            }
            return choose;
        }


        protected void RadioUncheck()
        {
            RadioButton1.Checked = false;
            RadioButton2.Checked = false;
            RadioButton3.Checked = false;
            RadioButton4.Checked = false;
        }

        protected void CheckBoxUnchek()
        {
            CheckBox1.Checked = false;
            CheckBox2.Checked = false;
            CheckBox3.Checked = false;
            CheckBox4.Checked = false;
        }

        protected void RadioInvisible()
        {
            RadioButton1.Visible = false;
            RadioButton2.Visible = false;
            RadioButton3.Visible = false;
            RadioButton4.Visible = false;

        }


        protected void RadioVisible()
        {
            RadioButton1.Visible = true;
            RadioButton2.Visible = true;
            RadioButton3.Visible = true;
            RadioButton4.Visible = true;

        }


        protected void CheckBoxInvisible()
        {
            CheckBox1.Visible = false;
            CheckBox2.Visible = false;
            CheckBox3.Visible = false;
            CheckBox4.Visible = false;
        }

        protected void CheckBoxVisible()
        {
            CheckBox1.Visible = true;
            CheckBox2.Visible = true;
            CheckBox3.Visible = true;
            CheckBox4.Visible = true;

        }

        protected void DisplayQuestion()
        {
            try
            {
                if (Session["Subject_name"] != subject_name)
                {
                    rowindex = 0;
                    count = 1;
                }
                if (rowindex < TotQus)
                {
                    count += 1;
                    ChoiceType = dt.Rows[rowindex]["ChoiceType"].ToString();
                    lblnoofquestions.Text = count.ToString() + "  of  " + TotQus;
                    lblQuestion.Text = dt.Rows[rowindex]["Question"].ToString();
                    Option1.Text = dt.Rows[rowindex]["Option1"].ToString();
                    Option2.Text = dt.Rows[rowindex]["Option2"].ToString();
                    Option3.Text = dt.Rows[rowindex]["Option3"].ToString();
                    Option4.Text = dt.Rows[rowindex]["Option4"].ToString();
                    CrtAns = dt.Rows[rowindex]["Answer"].ToString();

                    if (ChoiceType == "Single")
                    {
                        RadioVisible();
                        CheckBoxInvisible();
                    }
                    else
                    {
                        RadioInvisible();
                        CheckBoxVisible();
                    }
                }
                else
                {

                    img_Next.Visible = false;
                    img_submitnop.Visible = false;
                    RadioInvisible();
                    CheckBoxInvisible();
                    marks = (float)(((float)(correct) / (float)(TotQus)) * 100);
                    if (marks >= 50)
                    {
                        Result = "pass";
                    }
                    else
                    {
                        Result = "fail";
                    }
                    Report();
                    ScriptManager.RegisterStartupScript(Page, typeof(Page), "OpenWindow", "window.open('Score.aspx?marks=" + marks + "');", true);
                    string strscript = "<script language=javascript>window.opener='';window.top.close();</script>";
                    Page.RegisterStartupScript("clientScript", strscript);
                }
            }
            catch (IndexOutOfRangeException)
            {
                Response.Write("Questions Over");
            }
        }


        protected void img_Start_Click1(object sender, ImageClickEventArgs e)
        {
            string query = "SELECT [TimeLimit] FROM [tblTestSetting]";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            int timeget = (int)cmd.ExecuteScalar();
            totalSeconds = timeget * 60;
            Timer1.Enabled = true;
            Session["time"] = totalSeconds;
            rowindex = rowindex + 1;
            DisplayQuestion();

            img_Start.Visible = false;
            img_Next.Visible = true;
            img_submitnop.Visible = true;
            con.Close();
        }
        protected void Button2_Click(object sender, ImageClickEventArgs e)
        {
            call();
        }

        protected void Report()
        {
            try
            {
                string InsQuery = "insert into tblResult values ('" + ResultId.ToString() + "','" + UserName + "','" + subject_name + "','" + DateTime.Today + "','" + TotQus + "','" + marks + "','" + Result + "')";
                con.Open();
                SqlCommand cmd2 = new SqlCommand(InsQuery, con);
                cmd2.ExecuteNonQuery();
                //lblDB.Text = "Success";
                //lblDB.Visible = true;

            }

            catch (Exception ex)
            {
                Response.Write("Try Again");
            }
            finally
            {
                con.Close();
            }
        }

    }
}