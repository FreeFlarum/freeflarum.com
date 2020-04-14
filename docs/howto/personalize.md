# Personalization

To give your forum a distinct look and feel, there are several options:

- Change the welcome message, which is displayed to new visitors
  - To achieve this, go to Administration section of your forum and click on "Basics"
  
    ![The basics](https://cdn.discordapp.com/attachments/585143304467906581/699554932369653780/unknown.png)
    
    The rest is simple - edit "Welcome Banner" to your liking.
    
    ![Welcome Banner](https://cdn.discordapp.com/attachments/585143304467906581/699555483152941096/unknown.png)
    
    Very basic [HTML](https://www.w3schools.com/TAGS/default.ASP) tags are supported, such as `<h1>` (heading text/title/big text), `<br/>` (line break), etc. 
    Get creative. Here is template I use for my forum that you can modify:
    
  ```
  <h1><b>Welcome!</b></h2>
  <hr/>

  Read the <a href="https://link.to.info">Information</a> page for information about translations and rules.
  <br/><br/>
  <h4>Thank you</h4>
  ```
  
- Change the color schema of your forum.
  - Go into "Appearance" in the "Administration" left sidebar. Edit HEX values in the "Colors" section on top of the page. You can use [color picker](https://www.google.com/search?q=color+picker) to obtain HEX values of colors.
- Add a custom header or menu bar.
  - The Links extension is capable of doing this.
- Add a background.
  - Put `body { background: url("https://owo.com/image_url.png"); }` in your "Custom Styles" section of your forum in the "Appearance" section of the Administration. You can learn more about backgrounds with HTMl & CSS [here](https://www.w3schools.com/cssref/css3_pr_background.asp).


# Some nice & creative examples:

- [Giffgaff](https://community.giffgaff.com//)
- [Bunq Bank](https://together.bunq.com/)
- [French Saviors](https://frenchsaviors.freeflarum.com/)
- [Moccato](https://moccato.de/)
- [Forest](https://forest.freeflarum.com/)
