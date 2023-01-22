<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="task.aspx.cs" Inherits="_22_1.task" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   

    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <section class="vh-100 gradient-custom">
            <div class="container py-5 h-100">

                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                        <div class="card bg-dark text-white" style="border-radius: 1rem;">
                            <div class="card-body p-5 text-center">

                                <div class="mb-md-5 mt-md-4 pb-5">

                                    <h2 class="fw-bold mb-2 text-uppercase">Admin</h2>
                                    <br />
                                    <div class="form-outline form-white mb-4">
                                        <div class="input-group">
                                            <asp:TextBox ID="TextBox1" runat="server"  class="form-control rounded" placeholder="Search" aria-label="Search" aria-describedby="search-addon" ></asp:TextBox>
                                            <asp:Button ID="Button2" runat="server" class="btn btn-outline-primary" Text="search" OnClick="Button2_Click" />
                                        </div>
                                    </div>
                                 
                                        <asp:Label ID="Label7" runat="server" Text=""></asp:Label><br />
                                        <asp:Label ID="Label8" runat="server" Text="" ></asp:Label><br />
                                        <asp:Label ID="Label9" runat="server" Text=""></asp:Label><br /><br />
                                   
                                    <div class="form-outline form-white mb-4">
                                        <asp:GridView ID="GridView1" runat="server" style="width:100%"   >
                                            <Columns>
                                                
                                                <asp:ImageField DataImageUrlField="photo" HeaderText="Image">
                <ControlStyle Height="50px" Width="50px" />
            </asp:ImageField>
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                    <asp:Button ID="Button3" runat="server" Text="Add Product" OnClick="Button3_Click" />
                                   <asp:PlaceHolder ID="PlaceHolder1" runat="server" Visible="false">
                                    <div class="form-outline form-white mb-4">
                                        <asp:Label ID="Label1" runat="server" Text="Name :" Style="font-weight: bold; display: inline-block"></asp:Label><asp:TextBox Style="width: 70%; margin-left: 20px" ID="TxtName" runat="server"></asp:TextBox>
                                    </div>
                                    
                                    <div class="form-outline form-white mb-4">
                                        <asp:Label ID="Label2" runat="server" Text="Age :" Style="font-weight: bold; display: inline-block"></asp:Label><asp:TextBox Style="width: 70%; margin-left: 25px" ID="TxtAge" runat="server"></asp:TextBox>
                                    </div>
                                   
                                    <div class="form-outline form-white mb-4">
                                        <asp:Label ID="Label5" runat="server" Text="Phone :" Style="font-weight: bold; display: inline-block"></asp:Label><asp:TextBox Style="width: 70%; margin-left: 20px" ID="TxtPhone" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="form-outline form-white mb-4">
                                        <asp:Label ID="Label6" runat="server" Text="Email :" Style="font-weight: bold; display: inline-block"></asp:Label><asp:TextBox Style="width: 70%; margin-left: 20px" ID="TxtEmail" runat="server"></asp:TextBox>
                                    </div>
                                    <br />
                                    
                                    <div class="form-outline form-white mb-4">
                                        <div class="custom-file">
                                            <asp:Label ID="Label4" runat="server" Text="City :" Style="font-weight: bold; display: inline-block;margin-left:-230px "></asp:Label>
                                            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                                        </div>

                                    </div>
                                    <br />
                                    <div class="form-outline form-white mb-4">
                                        <div class="custom-file">
                                            <asp:Label ID="Label3" runat="server" Text="Photo :" Style="font-weight: bold; display: inline-block;margin-left:0px"></asp:Label>
                                           <asp:FileUpload ID="FileUpload1"  class="custom-file-input"  runat="server" />
                                        </div>

                                    </div>
                                    <div class="form-outline form-white mb-4">

                                        <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
                                    </div>
                                       </asp:PlaceHolder>
                                </div>
                            </div>
                        </div>
                    </div>
                </div></div>
        </section>
    </form>
</body>
</html>
