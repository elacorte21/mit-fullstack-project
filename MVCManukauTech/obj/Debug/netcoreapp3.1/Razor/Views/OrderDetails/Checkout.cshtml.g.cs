#pragma checksum "C:\Users\eddri\MIT\FullStack\Project\F203_Eddril_Rockband\MVCManukauTech\Views\OrderDetails\Checkout.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "546fce61a76933ffadb2381ea950fb048f61b952"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_OrderDetails_Checkout), @"mvc.1.0.view", @"/Views/OrderDetails/Checkout.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Users\eddri\MIT\FullStack\Project\F203_Eddril_Rockband\MVCManukauTech\Views\_ViewImports.cshtml"
using MVCManukauTech;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\eddri\MIT\FullStack\Project\F203_Eddril_Rockband\MVCManukauTech\Views\_ViewImports.cshtml"
using MVCManukauTech.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"546fce61a76933ffadb2381ea950fb048f61b952", @"/Views/OrderDetails/Checkout.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"6c8c3f1b54521ca6ded33f5c95f0e5a26707cceb", @"/Views/_ViewImports.cshtml")]
    public class Views_OrderDetails_Checkout : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<MVCManukauTech.ViewModels.CheckoutViewModel>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 3 "C:\Users\eddri\MIT\FullStack\Project\F203_Eddril_Rockband\MVCManukauTech\Views\OrderDetails\Checkout.cshtml"
  
    ViewBag.Title = "Check Out";

#line default
#line hidden
#nullable disable
            WriteLiteral(@"
<script type=""text/javascript"">
    function XTest() {
        document.getElementById(""CustomerName"").value = ""Mr Tester"";
        //document.getElementById(""CustomerPhone"").value = ""1234 5678"";
        //document.getElementById(""CustomerEmail"").value = ""mr.tester@email.com"";
        document.getElementById(""AddressStreet"").value = ""555 Imaginary Rd"";
        document.getElementById(""Location"").value = ""Henderson"";
        document.getElementById(""Country"").value = ""New Zealand"";
        document.getElementById(""PostCode"").value = ""0612"";
        document.getElementById(""CardOwner"").value = ""Mr Tester"";
        document.getElementById(""CardType"").value = ""Visa"";
        document.getElementById(""CardNumber"").value = ""1111"";
        document.getElementById(""CSC"").value = ""111"";
    }
</script>

");
#nullable restore
#line 23 "C:\Users\eddri\MIT\FullStack\Project\F203_Eddril_Rockband\MVCManukauTech\Views\OrderDetails\Checkout.cshtml"
 using (Html.BeginForm())
{
    

#line default
#line hidden
#nullable disable
#nullable restore
#line 25 "C:\Users\eddri\MIT\FullStack\Project\F203_Eddril_Rockband\MVCManukauTech\Views\OrderDetails\Checkout.cshtml"
Write(Html.AntiForgeryToken());

#line default
#line hidden
#nullable disable
            WriteLiteral("    <div class=\"form-horizontal\">\r\n        <h2>Check Out</h2>\r\n        <hr />\r\n        ");
#nullable restore
#line 30 "C:\Users\eddri\MIT\FullStack\Project\F203_Eddril_Rockband\MVCManukauTech\Views\OrderDetails\Checkout.cshtml"
   Write(Html.ValidationSummary(true));

#line default
#line hidden
#nullable disable
            WriteLiteral(@"

        <div class=""form-group"">
            <label for=""CustomerName"" class=""control-label col-md-2"" style=""display:inline"">Customer Name:</label>
            <div class=""col-md-10"">
                <input type=""text"" id=""CustomerName"" name=""CustomerName""");
            BeginWriteAttribute("value", " value=\"", 1359, "\"", 1386, 1);
#nullable restore
#line 35 "C:\Users\eddri\MIT\FullStack\Project\F203_Eddril_Rockband\MVCManukauTech\Views\OrderDetails\Checkout.cshtml"
WriteAttributeValue("", 1367, Model.CustomerName, 1367, 19, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(" style=\"display:inline\"/>\r\n                <input type=\"button\" value=\"Test Data\" onclick=\"XTest();\" class=\"btn\" style=\"display:inline\" />\r\n                ");
#nullable restore
#line 37 "C:\Users\eddri\MIT\FullStack\Project\F203_Eddril_Rockband\MVCManukauTech\Views\OrderDetails\Checkout.cshtml"
           Write(Html.ValidationMessageFor(model => model.CustomerName));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </div>\r\n        </div>\r\n        \r\n        <div class=\"form-group\">\r\n            <label for=\"AddressStreet\" class=\"control-label col-md-2\">Street Address:</label>\r\n            <div class=\"col-md-10\">\r\n                ");
#nullable restore
#line 44 "C:\Users\eddri\MIT\FullStack\Project\F203_Eddril_Rockband\MVCManukauTech\Views\OrderDetails\Checkout.cshtml"
           Write(Html.EditorFor(model => model.AddressStreet));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                ");
#nullable restore
#line 45 "C:\Users\eddri\MIT\FullStack\Project\F203_Eddril_Rockband\MVCManukauTech\Views\OrderDetails\Checkout.cshtml"
           Write(Html.ValidationMessageFor(model => model.AddressStreet));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\"form-group\">\r\n            <label for=\"Location\" class=\"control-label col-md-2\">City or Location:</label>\r\n            <div class=\"col-md-10\">\r\n                ");
#nullable restore
#line 52 "C:\Users\eddri\MIT\FullStack\Project\F203_Eddril_Rockband\MVCManukauTech\Views\OrderDetails\Checkout.cshtml"
           Write(Html.EditorFor(model => model.Location));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                ");
#nullable restore
#line 53 "C:\Users\eddri\MIT\FullStack\Project\F203_Eddril_Rockband\MVCManukauTech\Views\OrderDetails\Checkout.cshtml"
           Write(Html.ValidationMessageFor(model => model.Location));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\"form-group\">\r\n            <label for=\"Country\" class=\"control-label col-md-2\">Country:</label>\r\n            <div class=\"col-md-10\">\r\n                ");
#nullable restore
#line 60 "C:\Users\eddri\MIT\FullStack\Project\F203_Eddril_Rockband\MVCManukauTech\Views\OrderDetails\Checkout.cshtml"
           Write(Html.EditorFor(model => model.Country));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                ");
#nullable restore
#line 61 "C:\Users\eddri\MIT\FullStack\Project\F203_Eddril_Rockband\MVCManukauTech\Views\OrderDetails\Checkout.cshtml"
           Write(Html.ValidationMessageFor(model => model.Country));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\"form-group\">\r\n            <label for=\"PostCode\" class=\"control-label col-md-2\">Post Code:</label>\r\n            <div class=\"col-md-10\">\r\n                ");
#nullable restore
#line 68 "C:\Users\eddri\MIT\FullStack\Project\F203_Eddril_Rockband\MVCManukauTech\Views\OrderDetails\Checkout.cshtml"
           Write(Html.EditorFor(model => model.PostCode));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                ");
#nullable restore
#line 69 "C:\Users\eddri\MIT\FullStack\Project\F203_Eddril_Rockband\MVCManukauTech\Views\OrderDetails\Checkout.cshtml"
           Write(Html.ValidationMessageFor(model => model.PostCode));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\"form-group\">\r\n            <label for=\"CardOwner\" class=\"control-label col-md-2\">Card Owner:</label>\r\n            <div class=\"col-md-10\">\r\n                ");
#nullable restore
#line 76 "C:\Users\eddri\MIT\FullStack\Project\F203_Eddril_Rockband\MVCManukauTech\Views\OrderDetails\Checkout.cshtml"
           Write(Html.EditorFor(model => model.CardOwner));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                ");
#nullable restore
#line 77 "C:\Users\eddri\MIT\FullStack\Project\F203_Eddril_Rockband\MVCManukauTech\Views\OrderDetails\Checkout.cshtml"
           Write(Html.ValidationMessageFor(model => model.CardOwner));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\"form-group\">\r\n            <label for=\"CardType\" class=\"control-label col-md-2\">Card Type:</label>\r\n            <div class=\"col-md-10\">\r\n                ");
#nullable restore
#line 84 "C:\Users\eddri\MIT\FullStack\Project\F203_Eddril_Rockband\MVCManukauTech\Views\OrderDetails\Checkout.cshtml"
           Write(Html.EditorFor(model => model.CardType));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                ");
#nullable restore
#line 85 "C:\Users\eddri\MIT\FullStack\Project\F203_Eddril_Rockband\MVCManukauTech\Views\OrderDetails\Checkout.cshtml"
           Write(Html.ValidationMessageFor(model => model.CardType));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\"form-group\">\r\n            <label for=\"CardNumber\" class=\"control-label col-md-2\">Card Number:</label>\r\n            <div class=\"col-md-10\">\r\n                ");
#nullable restore
#line 92 "C:\Users\eddri\MIT\FullStack\Project\F203_Eddril_Rockband\MVCManukauTech\Views\OrderDetails\Checkout.cshtml"
           Write(Html.EditorFor(model => model.CardNumber));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                ");
#nullable restore
#line 93 "C:\Users\eddri\MIT\FullStack\Project\F203_Eddril_Rockband\MVCManukauTech\Views\OrderDetails\Checkout.cshtml"
           Write(Html.ValidationMessageFor(model => model.CardNumber));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\"form-group\">\r\n            <label for=\"CSC\" class=\"control-label col-md-2\">CSC:</label>\r\n            <div class=\"col-md-10\">\r\n                ");
#nullable restore
#line 100 "C:\Users\eddri\MIT\FullStack\Project\F203_Eddril_Rockband\MVCManukauTech\Views\OrderDetails\Checkout.cshtml"
           Write(Html.EditorFor(model => model.CSC));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                ");
#nullable restore
#line 101 "C:\Users\eddri\MIT\FullStack\Project\F203_Eddril_Rockband\MVCManukauTech\Views\OrderDetails\Checkout.cshtml"
           Write(Html.ValidationMessageFor(model => model.CSC));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </div>\r\n        </div>\r\n\r\n\r\n        <div class=\"form-group\">\r\n            <div class=\"col-md-offset-2 col-md-10\">\r\n                <input type=\"submit\" value=\"Submit\" class=\"btn btn-dark\" />\r\n            </div>\r\n        </div>\r\n    </div>\r\n");
#nullable restore
#line 112 "C:\Users\eddri\MIT\FullStack\Project\F203_Eddril_Rockband\MVCManukauTech\Views\OrderDetails\Checkout.cshtml"
}

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n\r\n");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<MVCManukauTech.ViewModels.CheckoutViewModel> Html { get; private set; }
    }
}
#pragma warning restore 1591
