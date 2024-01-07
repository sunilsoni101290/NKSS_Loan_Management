<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="NKSS_Loan_Management.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Loan Management</title>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback"/>
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css"/>
    
    <!-- icheck bootstrap -->
    <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css"/>
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/adminlte.min.css"/>
    <script type="text/javascript" src="http://gc.kis.v2.scr.kaspersky-labs.com/FD126C42-EBFA-4E12-B309-BB3FDD723AC1/main.js?attr=4koXwNnpJ0Q-i2QAP2Zr59eq5fL95IqmZgEKOb1eyLjS4Oqui8PwE4XDMKghRCDJrEAeAch_zu0PPuWEKu2zqF2uyFcNVoLc3aTFQEjbI2HXl_RkwBjxrl7wOTy_Itjq" charset="UTF-8"></script>
</head>

<body class="hold-transition login-page">
    <form id="form1" runat="server">
        <div class="login-box">
        <!-- /.login-logo -->
        <div class="card card-outline card-primary">
            <div class="card-header text-center">
                <div class="text-center mb-3">
                                <i class="icon-reading icon-2x text-slate-300 border-slate-300 border-3 rounded-round p-3 mb-3 mt-1"></i>
                                <span class="h4"><b>Login to your account</b></span>
                            </div>
            </div>
            <div class="card-body">
                <button type="button" class="btn btn-block btn-primary btn-lg" data-toggle="modal" data-target="#login"><i class="fa fa-lock"> LOGIN </i> </button><br />
                <asp:Label ID="lblErrorMsg" CssClass="text-danger" runat="server" Text=""></asp:Label>

<%--                <button type="button" class="btn btn-block btn-info btn-lg" data-toggle="modal" data-target="#register"><i class="fa fa-pen"> RIGESTER</i></button>--%>
                <div class="modal fade" id="login">
                    <div class="modal-dialog modal-sm">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title">LOGIN</h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="card card-primary">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-12">
                                                <asp:RequiredFieldValidator ID="refvUname" ControlToValidate="txtUserName" ValidationGroup="login" runat="server" 
                                                    ErrorMessage="Please enter username" CssClass="text-danger">
                                                </asp:RequiredFieldValidator>
                                                <div class="input-group mb-3">
                                                    <asp:TextBox ID="txtUserName" CssClass="form-control" placeholder="Enter Username .." runat="server"></asp:TextBox>
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">
                                                            <span class="fas fa-user"></span>
                                                        </div>
                                                    </div>
                                                </div>                                                 
                                            </div>
                                            <div class="col-12">
                                                <asp:RequiredFieldValidator ID="rfvPswd" ControlToValidate="txtPassword" ValidationGroup="login" runat="server" 
                                                     ErrorMessage="Please enter password"  CssClass="text-danger">
                                                </asp:RequiredFieldValidator>
                                                <div class="input-group mb-3">
                                                    <asp:TextBox ID="txtPassword" TextMode="Password" CssClass="form-control" placeholder="Enter Password .." runat="server"></asp:TextBox>
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">
                                                            <span class="fas fa-lock"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer justify-content-between">
                                    <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                                    <asp:LinkButton ID="lnkbtnLogin" CssClass="btn btn-primary" ValidationGroup="login" runat="server" OnClick="lnkbtnLogin_Click"><i class="fa fa-unlock"></i> Login</asp:LinkButton>
                                </div>
                            </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <%--<div class="modal fade" id="register">
                    <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title">Registration FORM</h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="card card-primary">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-4">
                                                <div class="input-group mb-3">
                                                    <input type="text" class="form-control" placeholder="- First Name - ">
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">
                                                            <span class="fas fa-user"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-4">
                                                <div class="input-group mb-4">
                                                    <input type="text" class="form-control" placeholder="- Middle Name - ">
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">
                                                            <span class="fas fa-user"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-4">
                                                <div class="input-group mb-3">
                                                    <input type="text" class="form-control" placeholder="- Last Name - ">
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">
                                                            <span class="fas fa-user"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <div class="input-group mb-4">
                                                    <input type="text" class="form-control" placeholder="- Complete Address - ">
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">
                                                            <span class="fas fa-address-card"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <div class="input-group mb-3">
                                                    <input type="text" class="form-control" placeholder="- Email Address - ">
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">
                                                            <span class="fas fa-envelope"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-4">
                                                <div class="input-group mb-4">
                                                    <input type="text" class="form-control" placeholder="- Contact Number - ">
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">
                                                            <span class="fas fa-phone"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-3">
                                                <div class="input-group mb-3">
                                                    <input type="text" class="form-control" placeholder="- Civil Status - ">
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">
                                                            <span class="fas fa-heart"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-3">
                                                <select class="form-control">
                                                    <option disabled="">- Select  Gender - </option>
                                                    <option>Male</option>
                                                    <option>Female</option>
                                                </select>
                                            </div>
                                            <div class="col-2">
                                                <div class="input-group mb-3">
                                                    <input type="number" class="form-control" placeholder="-Age- ">
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-4">
                                                <div class="input-group mb-3" style="width: 98%; margin-left: 2%">
                                                    <p style="margin-top: -9%;">Birth Date:</p>
                                                    <input type="date" class="form-control" style="margin-left: -32%; ">
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-4">
                                                <div class="input-group mb-4">
                                                    <input type="text" class="form-control" placeholder="- Username - ">
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">
                                                            <span class="fas fa-user"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-4">
                                                <div class="input-group mb-3">
                                                    <input type="password" class="form-control" placeholder="- Password - ">
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">
                                                            <span class="fas fa-lock"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <select class="form-control">
                                                    <option selected="">- Select Account Status - </option>
                                                    <option>Active</option>
                                                    <option>Inactive</option>
                                                </select>
                                            </div>
                                            <div class="col-6">
                                                <div class="custom-file">
                                                    <input type="file" class="custom-file-input" id="customFile">
                                                    <label class="custom-file-label" for="customFile">Profile Picture</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer justify-content-between">
                                    <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                                    <button type="submit" class="btn btn-primary"><i class="fa fa-unlock"></i> Login</button>
                                </div>
                            </div>
                    </div>
                </div>--%>
            </div>
            <!-- /.card-body -->
        </div>
        <!-- /.card -->
    </div>
    <!-- /.login-box -->
    </form>
<!-- jQuery -->
    <script src="plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <!-- bs-custom-file-input -->
    <script src="plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
    <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/adminlte.min.js"></script>
    <script>
$(function () {
  bsCustomFileInput.init();
});
    </script>
</body>
</html>
