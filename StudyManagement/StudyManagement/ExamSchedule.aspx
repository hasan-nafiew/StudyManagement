<%@ Page Title="" Language="C#" MasterPageFile="~/StudyManagement/studyManagement.Master" AutoEventWireup="true" CodeBehind="ExamSchedule.aspx.cs" Inherits="StudyManagement.StudyManagement.ExamSchedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- second banner -->
    <div class="banner_2_parallax">
        <div class="banner_overlay">
            <div class="container">
                <div class="banner_2_content">
                    <h1 class="text_white">Exam Schedule</h1>
                </div>
            </div>
        </div>
    </div>
    <!-- //second banner -->
    <div class="exam_schedule_area padding_top_bottom">
        <div class="container">
            <div class="exam_schedule">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <table class="table table-responsive table-striped">
                            <thead>
                            <tr>
                                <th>Course Name</th>
                                <th>Exam Date</th>
                                <th>Exam Time</th>
                                <th>Exam Descrption</th>
                            </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="rptrExamSchedule" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%#Eval("CourseName") %></td>
                                            <td><%#Eval("Date") %></td>
                                            <td ><%#Eval("Time") %></td>
                                            <td><%#Eval("ExamName")%></td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
