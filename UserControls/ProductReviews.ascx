﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ProductReviews.ascx.cs"
    Inherits="UserControls_ProductReviews" %>
<p class="ReviewHead">
    Customer Reviews</p>
<asp:DataList ID="list" runat="server" ShowFooter="true" CssClass="ReviewTable">
    <ItemStyle CssClass="ReviewTable" />
    <ItemTemplate>
        <p>
            Review by <strong>
                <%# Eval("UserName") %></strong> on
            <%# String.Format("{0:D}", Eval("DateCreated")) %>:
            <br />
            <i>
                <%# Eval("Review") %> | Rating: <%# Eval("Rating") %></i>

        </p>
    </ItemTemplate>
    <FooterTemplate>
    </FooterTemplate>
</asp:DataList>
<asp:Panel ID="addReviewPanel" runat="server">
    <p>
        Write your own review!</p>
    <p>
        <asp:TextBox runat="server" ID="reviewTextBox" Rows="3" Columns="88" TextMode="MultiLine" />
    </p>
    <p>
        <asp:Label Text="Rating: " runat="server" AssociatedControlID="ratingBox" />
        <asp:DropDownList runat="server" ID="ratingBox">
            <asp:ListItem Text="1" />
            <asp:ListItem Text="2" />
            <asp:ListItem Text="3" />
            <asp:ListItem Text="4" />
            <asp:ListItem Text="5" />
        </asp:DropDownList>
    </p>
    <asp:LinkButton ID="addReviewButton" runat="server" OnClick="addReviewButton_Click">Add Review</asp:LinkButton>
</asp:Panel>
<asp:LoginView ID="LoginView1" runat="server">
    <AnonymousTemplate>
        <p>
            Please log in to write your own review.</p>
    </AnonymousTemplate>
</asp:LoginView>
