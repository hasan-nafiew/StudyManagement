<%@ Page Title="" Language="C#" MasterPageFile="~/StudyManagement/studyManagement.Master" AutoEventWireup="true" CodeBehind="teacher_details.aspx.cs" Inherits="StudyManagement.StudyManagement.teacher_profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- second banner -->
    <div class="banner_2_parallax">
        <div class="banner_overlay">
            <div class="container">
                <div class="banner_2_content">
                    <h1 class="text_white">Teachers Details</h1>
                </div>
            </div>
        </div>
    </div>
    <!-- //second banner -->
    <div class="teacher_details_area padding_top_bottom">
        <div class="container">
            <div class="teacher_details">
                <div class="row">
                    <div class="col-xs-12 col-sm-5 col-md-4">
                        <div class="teacher_details_photo text-center">
                            <img class="img-responsive" src="../images/teacher-1.jpg" alt=""/>
                            <h4>Martin</h4>
                            <h5>Professor</h5>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6">
                        <div class="teacher_details_about">
                            <h3>About</h3>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam vero expedita fugiat illo quasi doloremque, in unde omnis sint assumenda! Quaerat in, reprehenderit corporis voluptatum natus sequi reiciendis ullam. Quam eaque dolorum voluptates cupiditate explicabo.
                            </p>
                            <div class="teacher_details_contact_area">
                                <div class="teacher_details_contact">
                                    <i class="fas fa-map-marker"></i>
                                    <div class="teacher_details_contact_content">
                                        <h5>Address</h5>
                                        <p>Dhanmondi, Dhaka, Bangladesh</p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                           
                                <div class="teacher_details_contact">
                                    <i class="fas fa-phone"></i>
                                    <div class="teacher_details_contact_content">
                                        <h5>Contact</h5>
                                        <p>Phone : 0170000000</p>
                                        <p>Email : you@email.com</p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
