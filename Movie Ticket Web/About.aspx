<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Movie_Ticket_Web.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
              main {
        background: #000;
        text-align: center;
        color: #fff;
      }
      .buff {
        width: 98.9vw;
        object-fit: cover;
        object-position: center;
      }
      .achieve {
        text-align: center;
        padding: 70px;
        color: #fff;
        font-size: 20px;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
      }
      .achieve p {
        margin-bottom: 20px;
        background-color: #222;
      }
      #ach-p {
        padding: 20px 10px;
        border-radius: 10px;
        margin-bottom: 30px;
      }
      .achieve-container {
        display: flex;
        justify-content: space-between;
        width: 50%;
      }
      .achieve-container .achievements {
        background-color: #222;
        width: 200px;
        border-radius: 20px;
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
      }
      .achieve-container .achievements h1 {
        margin-bottom: 10px;
      }
      .quick-facts{
        background:#000;
        color: #fff;
        padding: 20px 40px;
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
      }
      .quick-container{
        width: 70%;
        /* text-align: center; */
        display: flex;
        justify-content: space-between;
        align-items: center;
      }
      .info{
        text-align: center;
      }
      .info-img img{
        background-color: #222;
        border-radius: 20px;
        object-fit: cover;
        object-position: center;
        width: 150px;
        height: 150px;
      }
      .quick-facts h1{
        margin: 60px 0;
        font-size: 35px;
      }
      .lower-section h3{
          background-color: red;
          display: inline-block;
          border-radius: 15px;
      }
      .info-list .info{
        text-align: start;
        display: flex;
        flex-direction: column;
        padding: 20px 30px;
      }
      .info-list .info h3{
        padding-bottom: 10px;
      }
      .privary-section{
        border-top: 2px solid #fff;
        border-bottom: 2px solid #fff;
        margin: 0 40px;
        padding: 40px 0;
      }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <main>
      <section class="buff">
        <img src="Images/Buff.png" alt="" width="100%" />
      </section>
      <section class="achieve">
        <p id="ach-p">
          "24 years ago in South Africa a seed of an idea was planted, a dream
          was shared. Inception happened. 22 years on, we look back at what
          we've built. Leave it up to us, and we'd love to do it all over again.
          Here's our story"
        </p>
        <div class="achieve-container">
          <div class="achievements">
            <h1>50<br />Million+</h1>
            <p>APP DOWNLOADS</p>
          </div>
          <div class="achievements">
            <h1>15<br />Million+</h1>
            <p>TICKETS A MONTH</p>
          </div>
          <div class="achievements">
            <h1>2<br />Billion+</h1>
            <p>PAGE VIEWS A MONTH</p>
          </div>
        </div>
      </section>
      <section class="privary-section">
        <ul class="info-list">
          <li class="info">
            <h1 style="color: red; font-size: 30px;">WEBSITE OFFERES</h1>
            <br>
            <br>
            <h3>TOP MOVIES TO WATCH ONLINE</h3>
            <p>
              Batman: The Long Halloween Part 1 | Peter Grill and the Philosophers
              Time Super Season (S1) EP11 | Brian and Charles | 47 Dhansukh Bhawan
              | The Roundup | A Mighty Heart | Ouija | Isn't It Romantic | The
              Boss Baby: Family Business | Eyes Of Laura Mars | The Salesman | The
              Great Indian Kitchen (Malayalam) | The Diplomat - Episode 2 | A Few
              Good Men | Street Fighter: Assassin's Fist | Victor Lessard Season
              3: Ep 2 | Enter the Dragon | Deya Neya | Shrek Forever After | One
              Fine Morning
            </p>
          </li>
          <li class="info">
            <h3>TOP ONLINE PREMIERE MOVIES</h3>
            <p>
              Gran Turismo | Dampyr | King Lear | Follow Me | Babylon 5: The Road
              Home | Scooby-Doo and Krypto Too | It Aint Over | Welcome To Demon
              School Iruma Kun Season 1 | Rewind | Barbie | A Honeymoon to
              Remember | Beau Is Afraid | Cycle | Winter Sleep | The Only Way Out
              | The Invitation | Happy Valley Series 3 | Are You There God? Its
              Me, Margaret | The Machine | Mending the Line
            </p>
          </li>
          <li class="info">
            <h3>TOP ONLINE EXCLUSIVE MOVIES</h3>
            <p>
              The Witnesses | The Assassination of JFK | The Speech | Hotel
              Coppelia | The Exorcism of God | On the Edge | Trash | Scumbag |
              Employee of the Month | To The Stars | The Generation Of Evil | Mid
              Century | My Babysitter: The Superhero | Gatecrash | Doodhpither
              Gachh | Game Of Power | One For All | Cycle | The People Upstairs |
              A Friendly Tale
            </p>
          </li>
          <li class="info">
            <h3>MOVIES RELEASING SOON ON STREAM</h3>
            <p>
              Gran Turismo | Are You There God? Its Me, Margaret | Tumse Milkar |
              Asteroid City
            </p>
          </li>
          <li class="info">
            <h3>ONLINE BUNDLES</h3>
            <p>
              Online Streaming Online Movies | Recommended Online Movies |
              Rediscover Indian Cinema Online Movies | Archives Online Movies |
              Blockbusters Online Movies | BIGBLAST75 Online Movies | Recent
              Premieres Online Movies | Movies in Dubbed Language Online Movies |
              Flash Buy Online Movies | Premieres Online Movies | Holiday Season
              Offer - 50% Off Online Movies | Recently Added Online Movies |
              Regional Cinema @ 70% Discount Online Movies | Missed in Theatres
              Online Movies | 60% off on selected titles Online Movies | Comedy
              Remedy Online Movies | Stream 1st Anniversary Online Movies |
              Animated Online Movies | Oscars collection Online Movies | STREAM
              Diwali Delight Offer Online Movies | Award Winning Movies Online
              Movies | Get Spooked Online Movies | Rent mega-hits @50% Off Online
              Movies | Spidey All The Way! Online Movies | POP movies Online
              Movies | All Time Favourites Online Movies | Coming soon Online
              Movies | Exclusives Online Movies | Family films Online Movies |
              Spotlight Online Movies | Pongal Offer Online Movies | On Discount
              Online Movies | Flashback - Hollywood 80s 90s Online Movies | Oscar
              Special Offer Online Movies | Charlie Chaplin Keystone Collection
              Online Movies | Around the World Online Movies | Own a title @ Rs 89
              Online Movies |
            </p>
            <p>
              Best Of Regional @ 50% Off Online Movies | Spooktacular Online
              Movies | TV Series Online Movies | World Cinema Online Movies |
              Women's Day Offer Online Movies | Best of Bengali Movies Online
              Movies | KickAss Action Online Movies | Premium Movies on Discount
              Online Movies | Dubbed Movies @ 50% Discount Online Movies | Free
              Access For Limited Period Online Movies | Oscar Collectibles Online
              Movies | DC FanDome Online Movies | Flashback - 80s 90s Online
              Movies
            </p>
          </li>
          <li class="info">
            <h3>ONLINE MOVIES BY LANGUAGE</h3>
            <p>
              Online Movies in Chattisgarhi | Online Movies in Khasi | Online
              Movies in English 7D | Online Movies in Spanish | Online Movies in
              Nepali | Online Movies in French | Online Movies in Tulu | Online
              Movies in Japanese | Online Movies in Assamese | Online Movies in
              Odia | Online Movies in Portuguese | Online Movies in Rajasthani |
              Online Movies in Konkani | Online Movies in English | Online Movies
              in Sindhi | Online Movies in Punjabi | Online Movies in Tamil |
              Online Movies in Gujarati | Online Movies in Kannada | Online Movies
              in Bhojpuri | Online Movies in Marathi | Online Movies in Haryanavi
              | Online Movies in Hindi | Online Movies in Bengali | Online Movies
              in Malayalam | Online Movies in Urdu | Online Movies in Telugu
            </p>
          </li>
          <li class="info">
            <h3>MORE ENGLISH MOVIES YOU MIGHT LIKE</h3>
            <p>
              The Nun II | A Haunting in Venice | Saw X | The Creator |
              Expend4bles | Teenage Mutant Ninja Turtles: Mutant Mayhem
            </p>
          </li>
          <li class="info">
            <h3>MORE ENGLISH MOVIES YOU MIGHT LIKE</h3>
            <p>
              The Nun II | A Haunting in Venice | Saw X | The Creator |
              Expend4bles | Teenage Mutant Ninja Turtles: Mutant Mayhem
            </p>
          </li>
          <li class="info">
            <h3>MORE ADVENTURE MOVIES YOU MIGHT LIKE</h3>
            <p>Teenage Mutant Ninja Turtles: Mutant Mayhem</p>
          </li>
          <li class="info">
            <h3>MORE DRAMA MOVIES YOU MIGHT LIKE</h3>
            <p>
              Gadar 2: The Katha Continues | Sukhee | Hu ane Tu | The Vaccine War
              | Dream Girl 2 | OMG 2 | Skanda | The Great Indian Family | Jailer |
              Dilwale Dulhania Le Jayenge
            </p>
          </li>
          <li class="info">
            <h3>MORE ROMANTIC MOVIES YOU MIGHT LIKE</h3>
            <p>
              Hu ane Tu | Dream Girl 2 | Rocky Aur Rani Kii Prem Kahaani | Dilwale
              Dulhania Le Jayenge | Gaddi Jaandi Ae Chalaangaan Maardi
            </p>
          </li>
          <li class="info">
            <h3>ONLINE MOVIES BY GENRE</h3>
            <p>
              Drama Online Movies | Action Online Movies | Comedy Online Movies |
              Adventure Online Movies | Thriller Online Movies | Crime Online
              Movies | Romantic Online Movies | Mystery Online Movies | Horror
              Online Movies | Animation Online Movies | Sci-Fi Online Movies |
              Fantasy Online Movies | Anime Online Movies | Biography Online
              Movies | Musical Online Movies | Historical Online Movies | Suspense
              Online Movies | War Online Movies | Classic Online Movies | Sports
              Online Movies | Heist Online Movies | Political Online Movies |
              Psychological Online Movies | Period Online Movies | Bollywood
              Online Movies | Adaptation Online Movies | Mythological Online
              Movies | Noir Online Movies | Supernatural Online Movies | Tragedy
              Online Movies | Adult Online Movies | Devotional Online Movies
            </p>
          </li>
          <li class="info">
            <h3>MOVIE REVIEWS AND TRENDING ARTICLES</h3>
            <p>
              Trending Articles | Latest News on Movies, Events, Plays and Sports
              | Movie Celebrities
            </p>
          </li>
          <li class="info">
            <h3>COUNTRIES</h3>
            <p>Indonesia Singapore | UAE | Sri Lanka | West Indies</p>
          </li>
          <li class="info">
            <h3>HELP</h3>
            <p>
              About Us | Contact Us | Current Opening | Press Release | Press
              Coverage | Sitemap | FAQs | Terms and Conditions | Privacy Policy
            </p>
          </li>
          <li class="info">
            <h3>BOOKMYSHOW EXCLUSIVES</h3>
            <p>
              Lollapalooza India | Superstar | BookASmile | Corporate Vouchers |
              Gift Cards | List My Show | Offers | Stream | Buzz | Movie Trailers
              | Summer Activities
            </p>
          </li>
        </ul>
      </section>
      <section class="quick-facts">
        <h1>QUICK FACTS</h1>
        <div class="quick-container">
            <div class="info">
                <div class="info-img">
                  <img src="Images/People.png" alt="">
                </div>
                <h4>30 Million+</h4>
                <span>CUSTOMERS</span>
            </div>
            <div class="info">
                <div class="info-img">
                  <img src="Images/earth.png" alt="">
                </div>
                <h4>5</h4>
                <span>COUNTRIES</span>
            </div>
            <div class="info">
                <div class="info-img">
                  <img src="Images/india.png" alt="">
                </div>
                <h4>650+</h4>
                <span>TOWN AND CITIES</span>
            </div>
            <div class="info">
                <div class="info-img">
                  <img src="Images/screen.png" alt="">
                </div>
                <h4>5000+</h4>
                <span>SCREENS</span>
            </div>
        </div>
      </section>
    </main>
</asp:Content>
