<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MainMaster.Master" AutoEventWireup="true" CodeBehind="AddNewMember.aspx.cs" Inherits="NKSS_Loan_Management.Admin.AddNewMember" %>
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
            <h1>Add New Member</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="Dashboard.aspx">Home</a></li>
              <li class="breadcrumb-item active">Add New Member</li>
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
                <h3 class="card-title">Add New Member Details</h3> 
                <a href="membermanagement.aspx" class="btn btn-primary btn-xs" style="margin-left:82%"> <i class="fa fa-arrow-left"></i></a>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                  <div class="modal-content">
                                <div class="card card-primary">
                                    <div class="card-body">
                                        <div class="row">
                                            <%--start Valadation Col--%>
                                            <div class="col-4">
                                                   <asp:RequiredFieldValidator ID="ReqFName" CssClass="text-danger"  ValidationGroup="vgAdd" ControlToValidate="txtFName" runat="server" ErrorMessage="Enter First Name">
                                                  </asp:RequiredFieldValidator>
                                             </div>
                                            <div class="col-4">
                                                   <asp:RequiredFieldValidator ID="reqMName" CssClass="text-danger"  ValidationGroup="vgAdd" ControlToValidate="txtMName" runat="server" ErrorMessage="Enter Middle Name">
                                                  </asp:RequiredFieldValidator>
                                             </div>
                                            <div class="col-4">
                                                   <asp:RequiredFieldValidator ID="reqLName" CssClass="text-danger"  ValidationGroup="vgAdd" ControlToValidate="txtLName" runat="server" ErrorMessage="Enter Last Name">
                                                  </asp:RequiredFieldValidator>
                                             </div>
                                            <%--end Valadation Col--%>
                                            <div class="col-4">
                                                <div class="input-group mb-3">                                                  
                                                    <asp:TextBox ID="txtFName" class="form-control" placeholder="- First Name - " runat="server"></asp:TextBox>
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">
                                                            <span class="fas fa-user"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>                                           
                                            <div class="col-4">
                                                <div class="input-group mb-4">
                                                    <asp:TextBox ID="txtMName" class="form-control" placeholder="- Middle Name - " runat="server"></asp:TextBox>
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">
                                                            <span class="fas fa-user"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-4">
                                                <div class="input-group mb-3">
                                                    <asp:TextBox ID="txtLName" class="form-control" placeholder="- Last Name - " runat="server"></asp:TextBox>
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">
                                                            <span class="fas fa-user"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <%--start Valadation Col--%>
                                            <div class="col-12">
                                                   <asp:RequiredFieldValidator ID="reqAddress" CssClass="text-danger"  ValidationGroup="vgAdd" ControlToValidate="txtAddress" runat="server" ErrorMessage="Enter Complete Address">
                                                  </asp:RequiredFieldValidator>
                                             </div>
                                            <%--end Valadation Col--%>
                                            <div class="col-12">
                                                <div class="input-group mb-4">
                                                    <asp:TextBox ID="txtAddress" TextMode="MultiLine" class="form-control" placeholder="- Complete Address - " runat="server"></asp:TextBox>
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">
                                                            <span class="fas fa-address-card"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <%--start Valadation Col--%>
                                            <div class="col-6">
                                                   <asp:RequiredFieldValidator ID="reqEmail" CssClass="text-danger"  ValidationGroup="vgAdd" ControlToValidate="txtEmail" runat="server" ErrorMessage="Enter Email Address">
                                                  </asp:RequiredFieldValidator>
                                             </div>
                                            <div class="col-3">
                                                   <asp:RequiredFieldValidator ID="reqContact" CssClass="text-danger"  ValidationGroup="vgAdd" ControlToValidate="txtContact" runat="server" ErrorMessage="Enter Contact Number">
                                                  </asp:RequiredFieldValidator>
                                             </div>
                                            <div class="col-3">
                                               <asp:RequiredFieldValidator ID="rfvddlgender" ValidationGroup="vgAdd" CssClass="text-danger" runat="server" 
                                                ErrorMessage="Please Select Gender" InitialValue="0" ControlToValidate="ddlGender"></asp:RequiredFieldValidator>
                                             </div>
                                            <%--end Valadation Col--%>
                                            <div class="col-6">
                                                <div class="input-group mb-3">
                                                    <asp:TextBox ID="txtEmail" class="form-control" placeholder="- Email Address - " runat="server"></asp:TextBox>
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">
                                                            <span class="fas fa-envelope"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-3">
                                                <div class="input-group mb-4">
                                                    <asp:TextBox ID="txtContact" class="form-control" placeholder="- Contact Number - " runat="server"></asp:TextBox>
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">
                                                            <span class="fas fa-phone"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-3">
                                                <asp:DropDownList ID="ddlGender" CssClass="form-control" runat="server">
                                                    <asp:ListItem Selected="True" Value="0">--Select Gender--</asp:ListItem>
                                                    <asp:ListItem Value="M">Male</asp:ListItem>
                                                    <asp:ListItem Value="F">Female</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <%--start Valadation Col--%>
                                             <div class="col-2"></div>

                                            <div class="col-4">
                                                   <asp:RequiredFieldValidator ID="reqDOB" CssClass="text-danger"  ValidationGroup="vgAdd" ControlToValidate="txtDOB" runat="server" ErrorMessage="Enter Date Of Birth">
                                                  </asp:RequiredFieldValidator>
                                             </div>
                                            <div class="col-6">
                                                   <asp:RequiredFieldValidator ID="reqFile" CssClass="text-danger"  ValidationGroup="vgAdd" ControlToValidate="FileUpload1" runat="server" ErrorMessage="Please Select Picture">
                                                  </asp:RequiredFieldValidator>
                                             </div>
                                            <%--end Valadation Col--%>
                                            <div class="col-2">
                                                <p>Birth Date:</p>
                                            </div>
                                            <div class="col-4">
                                                <div class="input-group mb-3">
                                                    <asp:TextBox ID="txtDOB" TextMode="Date" class="form-control" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <div class="custom-file">
                                                    <%--<input type="file" class="custom-file-input" id="customFile">--%>
                                                    <asp:FileUpload ID="FileUpload1" CssClass="custom-file-input" runat="server" />
                                                    <label class="custom-file-label" for="customFile">Profile Picture</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer justify-content-between">
                                    <asp:Button ID="btnReset" class="btn btn-danger" runat="server" Text="Reset" OnClick="btnReset_Click" />
                                    <asp:Button ID="btnSave" class="btn btn-primary" ValidationGroup="vgAdd" runat="server" Text="Save" OnClick="btnSave_Click" />
                                </div>
                            </div>
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
