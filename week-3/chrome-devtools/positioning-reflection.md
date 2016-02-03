[3.3.1 Change Colors](imgs/3.3.1-Change-colors.png)
[3.3.2 Columns](imgs/3.3.2-Columns.png)
[3.3.3 Row](imgs/3.3.3-Row.png)
[3.3.4 Make Equidistant](imgs/3.3.4-Make-equidistant.png)
[3.3.5 Squares](imgs/3.3.5-Squares.png)
[3.3.6 Footer](imgs/3.3.6-Footer.png)
[3.3.7 Header](imgs/3.3.7-Header.png)
[3.3.8 Sidebar](imgs/3.3.8-Sidebar.png)
[3.3.9 Get Creative](3.3.9-Get-creative.png)

##How can you use Chrome's DevTools inspector to help you format or position elements?
Chrome's DevTools inspector is great for interacting directly with an HTML file and CSS style sheet.  You see the results of your code changes instantly as you tinker with DevTools inspector. It allows extra practice and experimentation with your code.

##How can you resize elements on the DOM using CSS?
Resizing elements using CSS is done through margin, padding and border property and subsequent value changes. Plus, you can also resize directly by using the "font-size" property.

##What are the differences between absolute, fixed, static, and relative positioning? Which did you find easiest to use? Which was most difficult?
Static positioning is the default positioning for all HTML elements. It means that elements will flow into the page as they normally would. Static positioned elements are not affected by top, bottom, left or right properties.
An element with a relative position is set relative to its normal position. If you set the position on an element to relative but utilize no other positioning attributes (top, bottom, left, right), it will have no effect on its positioning at all. It will be as if you left the position static. BUT if you do give it some other positioning attribute,it will shift the element's position form where it would have normally been. Also, it is imperative to remember that any element that is a child of the relatively positioned element can be absolutely positioned within that block.
Absolute positioning, then, is a powerful positioning tool that allows a developer to place an element anywhere they want. These placements will be relative to the next parent element (with relative or absolute positioning) of the absolute element. It is critical to remember that these absolute elements are removed form the flow on the page now. This kind of positioning means absolute elements will neither be affected by nor themselves affect other elements.
Lastly, we have fixed elements. Fixed elements are positioned relative to the browser window itself. When the page is scrolled, a fixed element will stay exactly where it is positioned in the page and not move. This can keep a site's navigaiton present at all times or be used for advertising purposes. The downside is when you scroll down, a bottom dwelling fixed element will cover up the footer content.
Fixed elements were definitely the easiest to use and adjust. No matter what we did, they were going to be in that specific spot and stay there whether the screen was scrolled up, down or not at all.
The difficult positioning tool to use was the relative and absolute. Remembering the relation of an element to its parent and how that could affect the page was both challenging and frustrating. We had to work with these two quite a bit.

##What are the differences between margin, border, and padding?
Padding is directly next to content and clears an area around it. Border is a border around the padding and content. It is the next "shell" out from the content. Finally, is the margin. The is the furthest "shell" out from the content of an element and clears an area outside of the border.

##What was your impression of this challenge overall? (love, hate, and why?)
I found this challenge to be pretty useful. I definitely needed more practice with CSS positioning properties and values. I only wish we had done this challenge before 3.3. It would have helped quite a bit conceptually as we tried to mimick the Berkshire Hathaway site.