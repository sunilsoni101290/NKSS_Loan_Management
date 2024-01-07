<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MainMaster.Master" AutoEventWireup="true" CodeBehind="membermanagement.aspx.cs" Inherits="NKSS_Loan_Management.Admin.membermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Member Management</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="Dashboard.aspx">Home</a></li>
              <li class="breadcrumb-item active">Member Management</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
       

            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Member Management Data</h3> 
              <a href="AddNewMember.aspx" class="btn btn-success btn-xs" style="margin-left: 74%">
                  <i class="fa fa-plus"></i> Add</a>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                  <asp:GridView ID="gdvUserRecord" AllowCustomPaging="false" AllowPaging="false" 
                            CssClass="table table-bordered table-striped" DataKeyNames="Member_Id" 
                AutoGenerateColumns="False" runat="server">
                <Columns>
                     <asp:TemplateField HeaderText="Sr.No">
                    <ItemTemplate>
                        <asp:Label ID="lblSrNo" runat="server" Text='<%# Eval("SrNo") %>'/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Avatar">
                    <ItemTemplate>
                        <asp:Image ID="imgEventImage" CssClass="img-square elevation-3" runat="server" ImageUrl='<%# "/images/Profile/"+ Eval("Profile_picture") %>' 
                            style="width:50px;  border-radius:10%;" alt="Profile Picture"/>
                    </ItemTemplate>  
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label ID="lblName" runat="server" Text='<%# Eval("Full_Name") %>'/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Username">
                    <ItemTemplate>
                        <asp:Label ID="lblUsername" runat="server" Text='<%# Eval("Username") %>'/>
                    </ItemTemplate>
                </asp:TemplateField>
                    <asp:TemplateField HeaderText="Password">
                    <ItemTemplate>
                        <asp:Label ID="lblPassword" runat="server" Text='<%# Eval("Password") %>'/>
                    </ItemTemplate>
                </asp:TemplateField>
                    <asp:TemplateField HeaderText="Gender">
                    <ItemTemplate>
                        <asp:Label ID="lblGender" runat="server" Text='<%# Eval("Gender") %>'/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Contact">
                    <ItemTemplate>
                        <asp:Label ID="lblContact" runat="server" Text='<%# Eval("Contact_Number") %>'/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email">
                    <ItemTemplate>
                        <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("Email_Id") %>'/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Created On">
                    <ItemTemplate>
                        <asp:Label ID="lblCreatedOn" runat="server" Text='<%# Convert.ToDateTime(Eval("Creation_Date")).ToString("dd-MM-yyyy") %>'/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Status">
                    <ItemTemplate>
                        <asp:Label ID="lblAmount" runat="server" Text='<%# Eval("Account_Status") %>'/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Actions">
                    <ItemTemplate>
                        <asp:HyperLink ID="hplnkEdit" NavigateUrl='<%# string.Format("~/EditMemberDetails.aspx?MemberId={0}",HttpUtility.UrlEncode(Eval("Member_Id").ToString())) %>' 
                            style="text-transform:none;"  ToolTip="Edit Member Details"  
                            CssClass="btn btn-success btn-xs"   
                            runat="server"><i class="fa fa-edit"></i></asp:HyperLink>
                        <asp:HyperLink ID="hplnkUserDetailsById"  ToolTip="View Member Details"  NavigateUrl='<%# string.Format("~/MemberDetails.aspx?MemberId={0}",HttpUtility.UrlEncode(Eval("Member_Id").ToString())) %>' 
                            style="text-transform:none;"  CssClass="btn btn-primary btn-xs"  runat="server">
                            <i class="fa fa-eye"></i></asp:HyperLink>
                        <asp:LinkButton ID="lnkbtnDelete" CssClass="btn btn-danger btn-xs" ToolTip="Delete Member" runat="server">
                            <i class="fa fa-trash"></i></asp:LinkButton>
                    </ItemTemplate>
            </asp:TemplateField>
            </Columns>
        <EmptyDataTemplate>
        <div class="text-danger text-center" style="font-size:18px;"><b>There is no records found!</b></div>
        </EmptyDataTemplate>         
    </asp:GridView>
                <%--<table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>Avatar</th>
                    <th>Name</th>
                    <th>Username</th>
                    <th>Password</th>
                    <th>Contact</th>
                    <th>Email</th>
                    <th>Created On</th>
                    <th>Status</th>
                    <th width="7%"></th>
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <td><img src="../dist/img/avatar.png" class="img-square elevation-3" style="width:50px;  border-radius:10%;" alt="User Image">   </td>
                    <td>Ashok Anil Singh</td>
                    <td>M301220231</td>
                    <td>**********</td>
                    <td>9856231470</td>
                    <td><i style="color: blue"><u>ashok@gmail.com</u></i></td>
                    <td>30-12-2023</td>
                    <td>Active</td>
                    <td><button class="btn btn-primary btn-xs" data-toggle="modal" data-target="#edit"><i class="fa fa-edit"></i></button> <button class="btn btn-danger btn-xs"><i class="fa fa-trash"></i></button></td>
                    
                  </tr>
                  <tr>
                    <td><img src="../dist/img/avatar.png" class="img-square elevation-3" style="width:50px;  border-radius:10%;" alt="User Image">   </td>
                    <td>Kamla Ashok Singh</td>
                    <td>M301220231</td>
                    <td>**********</td>
                    <td>9856231589</td>
                    <td><i style="color: blue"><u>kamlasingh@gmail.com</u></i></td>
                    <td>30-12-2023</td>
                    <td>Active</td>
                    <td>
                        <button class="btn btn-primary btn-xs" data-toggle="modal" data-target="#edit">
                            <i class="fa fa-edit"></i></button> 
                        <button class="btn btn-danger btn-xs"><i class="fa fa-trash"></i></button></td>                    
                  </tr>
                  </tbody>
                </table>--%>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
</asp:Content>
