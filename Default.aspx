<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Digital Demo</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css" />

    <!-- Include the jQuery Mobile library -->
    <script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>

    <link href="local.css" rel="stylesheet" />

    <script>
        $(function () {
            $("#accordion").accordion({
                collapsible: true
            });

            $("#tabs").tabs();

            //$("#myPanel").panel("open");
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div data-role="page" id="pageone">
            <div data-role="panel" id="myPanel">
                <h2>Menu</h2>
                <p>Click on the following items</p>
                <ul>
                    <li><a href="#" target="_top">Honor Roll of Donors</a></li>
                    <li><a href="Edit.aspx" target="_blank">Edit Page</a></li>
                    <li><a href="#" target="_top"></a></li>
                    <li><a href="#" target="_top"></a></li>
                </ul>
            </div>

            <div data-role="header">
                <a href="#myPanel" class="ui-btn ui-btn-inline">Side Menu</a>
                <h1>Honor Roll of Donors</h1>
            </div>
            <div data-role="main" class="ui-content w3-sand">
                <section>
                    <div class="w3-row">

                        <div id="accordion" runat="server" class="w3-col m6 l6 ">
                        </div>

                        <div id="tabs" runat="server" class="w3-col m6 l6 ">
                            <ul>
                                <li><a href="#fragment-1">Karma J. Shockey</a></li>
                                <li><a href="#fragment-2">Charles D. Thames</a></li>
                                <li><a href="#fragment-3">Matthew T. Perez</a></li>
                            </ul>
                            <div id="fragment-1">
                                <img class="photos" src="http://jamesgilberdphotography.weebly.com/uploads/1/3/6/5/13650410/3759007_orig.jpg?200" />
                                <p>
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut
                        laoreet dolore magna aliquam erat volutpat.
                                </p>
                            </div>
                            <div id="fragment-2">
                                <img class="photos" src="http://pahaldesign.com/wp-content/uploads/2012/11/SamplePhoto.jpg" />
                                <p>
                                    Cras dictum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum ante
                        ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia mauris vel
                        est.
                                </p>
                            </div>
                            <div id="fragment-3">
                                Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus. Class aptent taciti sociosqu ad litora torquent
                    per conubia nostra, per inceptos himenaeos.
                            </div>
                        </div>
                    </div>

                </section>
            </div>

            <footer data-role="footer">
                <h1>University of Pittsburgh at Bradford &copy;2016</h1>
            </footer>
        </div>
    </form>
</body>
</html>
