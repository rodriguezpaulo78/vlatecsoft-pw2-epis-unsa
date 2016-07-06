/****************************************************************************************
 Script to provide the correct countries for each continent using only one pulldown menu
                      Written by Mark Wilton-Jones, 13/9/2001
*****************************************************************************************

Please see http://www.howtocreate.co.uk/jslibs/ for details and a demo of this script
Please see http://www.howtocreate.co.uk/jslibs/termsOfUse.html for terms of use

To use this, the form must be called 'mainform' and the continent and country menus must
exactly match those shown below. If you change anything on the menus, you will have to
work out what to change in the script. Don't use any <body onload="whatever"> code.

The full countires list is given after the script.

To use this script, insert the following line between the <head> tags:

<script src="PATH TO SCRIPT/countryselect.js" type="text/javascript" language="javascript1.2"></script>

_______________________________________________________________________________________*/

var contin = new Array(); //each cell will hold an array of all the countries in a continent
var numincont = new Array(0,8,8,8,4,5,4,4,5,5,10,10,10); //number of countries in each continent
//prepare the continent arrays
for( var z = 1; z < numincont.length; z++ ) { contin[z] = new Array(); }
//tell it to set up the select menu when the page loads
window.onload = myprep;

function myprep() {
	//Because Netscape 4 will act strangely on reloading . . .
	if( document.mainform.Country.options.length < 60 ) { self.location.reload(); }
	//now that the document has fully loaded, take out all of the countries and put them into
	//an array representing that continent (the continent arrays)
	var y = 1; //y = number of options to bypass at the start - 1
	for( var z = 1; z < numincont.length; z++ ) {
		//each continent in turn. start at 1 because options[0] is 'Please select one'
		for( x = 1; x <= numincont[z]; x++ ) {
			//insert countries into arrays
			contin[z][x] = new Option(document.mainform.Country.options[x+y].text,document.mainform.Country.options[x+y].value);
		}
		//offset by the number we have already done
		y += numincont[z] + 1; //the 1 allows for the '       ------ Continent name ------' options
	}
	refillme();
}

function refillme() {
	//erase the select menu then refill it with all countries from the selected continent
	//the reason I deconstruct then reconstruct is to allow non JavaScript browsers to work
	while( document.mainform.Country.options.length ) { document.mainform.Country.options[0] = null; }
	if( document.mainform.Continent.selectedIndex ) {
		//they have selected a continent. insert a 'Please select one' option
		document.mainform.Country.options[0] = new Option("Selecciona Una","");
		for( var z = 1; z < contin[document.mainform.Continent.selectedIndex].length; z++ ) {
			//for the selected continent, put in each country
			document.mainform.Country.options[z] = contin[document.mainform.Continent.selectedIndex][z];
		}
		//give them an 'Other' option and enable the select menu (if it was disabled)
		document.mainform.Country.options[z] = new Option("Otro(Usa el cuadro de abajo)","Otro");
		document.mainform.Country.disabled = false;
	} else {
		//wait for them to select a continent
		document.mainform.Country.options[0] = new Option("Por favor selecciona un área","");
		document.mainform.Country.disabled = true;
	}
	document.mainform.Country.options[0].selected = true;
	document.mainform.other.disabled = true;
}

function ableother() {
	//If they have selected "other", enable the "other" box
	if( document.mainform.Country.options.length > 1 && document.mainform.Country.selectedIndex == document.mainform.Country.options.length - 1 ) {
		document.mainform.other.disabled = false;
	} else {
		document.mainform.other.disabled = true;
	}
}

/*_______________________________________________________________________________________

The continent menu:

				<select name="Continent" size="1" onChange="if(!window.refillme){return;}refillme();">
					<option selected>Please select one</option>
					<option value="Africa">Africa</option>
					<option value="Antarctica">Antarctica (just in case)</option>
					<option value="Asia">Asia</option>
					<option value="Australasia">Australasia</option>
					<option value="Europe">Europe</option>
					<option value="North_America">North America</option>
					<option value="South_America">South America</option>
				</select>

The countries menu:

				<select name="Country" size="1" onchange="if(!window.ableother){return;}ableother();">
					<option selected>Please select one</option>
					<!-- The countries for Africa -->
					<option>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ------ Africa ------</option>
					<option value="Algeria">Algeria</option>
					<option value="Angolia">Angolia</option>
					<option value="Benin">Benin</option>
					<option value="Botswana">Botswana</option>
					<option value="Burkina">Burkina</option>
					<option value="Burundi">Burundi</option>
					<option value="Cameroon">Cameroon</option>
					<option value="Central_African_Republic">Central African Republic</option>
					<option value="Chad">Chad</option>
					<option value="Chana">Chana</option>
					<option value="Comoros_Is.">Comoros Is.</option>
					<option value="Congo">Congo</option>
					<option value="Congo_(Zaire)">Congo (Zaire)</option>
					<option value="Cote_D'Ivoire">Cote D'Ivoire</option>
					<option value="Djibouti">Djibouti</option>
					<option value="Egypt">Egypt</option>
					<option value="Equatorial_Guinea">Equatorial Guinea</option>
					<option value="Eritrea">Eritrea</option>
					<option value="Ethiopia">Ethiopia</option>
					<option value="Gabon">Gabon</option>
					<option value="Guinea">Guinea</option>
					<option value="Guinea_Bissau">Guinea Bissau</option>
					<option value="Kenya">Kenya</option>
					<option value="Lesotho">Lesotho</option>
					<option value="Liberia">Liberia</option>
					<option value="Libya">Libya</option>
					<option value="Madagascar">Madagascar</option>
					<option value="Malawi">Malawi</option>
					<option value="Mali">Mali</option>
					<option value="Mauritania">Mauritania</option>
					<option value="Mauritius">Mauritius</option>
					<option value="Morocco">Morocco</option>
					<option value="Mozambique">Mozambique</option>
					<option value="Namibia">Namibia</option>
					<option value="Niger">Niger</option>
					<option value="Nigeria">Nigeria</option>
					<option value="Rwanda">Rwanda</option>
					<option value="Sao_Tomi_and_Principe">Sao Tomi and Principe</option>
					<option value="Senegal">Senegal</option>
					<option value="Seychelles">Seychelles</option>
					<option value="Sierra_Leone">Sierra Leone</option>
					<option value="Somalia">Somalia</option>
					<option value="South_Africa_Rep.Of">South Africa Rep.Of</option>
					<option value="Sudan">Sudan</option>
					<option value="Swaziland">Swaziland</option>
					<option value="Tanzania">Tanzania</option>
					<option value="Tunisia">Tunisia</option>
					<option value="Togo">Togo</option>
					<option value="Uganda">Uganda</option>
					<option value="Zambia">Zambia</option>
					<option value="Zimbabwe">Zimbabwe</option>
					<!-- Then the countries for Antarctica -->
					<option>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ------ Antarctica ------</option>
					<option value="Antarctica">Mainland Antarctica</option>
					<option value="UK_Is">United Kingdom (Islands only)</option>
					<!-- Then the countries for Asia -->
					<option>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  ------ Asia ------</option>
					<option value="Afghanistan">Afghanistan</option>
					<option value="Armenia">Armenia</option>
					<option value="Azerbaijan">Azerbaijan</option>
					<option value="Bahrain">Bahrain</option>
					<option value="Bangladesh">Bangladesh</option>
					<option value="Bhutan">Bhutan</option>
					<option value="Brunei">Brunei</option>
					<option value="Cambodia">Cambodia</option>
					<option value="China">China</option>
					<option value="Cyprus">Cyprus</option>
					<option value="Georgia">Georgia</option>
					<option value="Iran">Iran</option>
					<option value="Iraq">Iraq</option>
					<option value="India">India</option>
					<option value="Indonesia">Indonesia</option>
					<option value="Israel">Israel and Gaza</option>
					<option value="Japan">Japan</option>
					<option value="Jordan">Jordan</option>
					<option value="Kazakstan">Kazakstan</option>
					<option value="Kuwait">Kuwait</option>
					<option value="Kyrgzstan">Kyrgzstan</option>
					<option value="Laos">Laos</option>
					<option value="Lebanon">Lebanon</option>
					<option value="Malaysia">Malaysia</option>
					<option value="Mongolia">Mongolia</option>
					<option value="Myanmar_(Burma)">Myanmar (Burma)</option>
					<option value="Nepal">Nepal</option>
					<option value="North_Korea">North Korea</option>
					<option value="Oman">Oman</option>
					<option value="Pakistan">Pakistan</option>
					<option value="Palau">Palau</option>
					<option value="Phillipines">Phillipines</option>
					<option value="Quatar">Quatar</option>
					<option value="Russian_Federation">Russian Federation</option>
					<option value="Saudi_Arabia">Saudi Arabia</option>
					<option value="South_Korea">South Korea</option>
					<option value="Sri_Lanka">Sri Lanka</option>
					<option value="Syria">Syria</option>
					<option value="Taiwan">Taiwan</option>
					<option value="Tajikstan">Tajikstan</option>
					<option value="Thailand">Thailand</option>
					<option value="Turkey">Turkey</option>
					<option value="Turkmenistan">Turkmenistan</option>
					<option value="United_Arab_Emirates">United Arab Emirates</option>
					<option value="Uzbekistan">Uzbekistan</option>
					<option value="Vietnam">Vietnam</option>
					<option value="Yemen">Yemen</option>
					<!-- Then the countries for Australasia -->
					<option>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ------ Australasia ------</option>
					<option value="Australia">Australia</option>
					<option value="Fiji">Fiji</option>
					<option value="France_(Islands_only)">France (Islands only)</option>
					<option value="Kiribati">Kiribati</option>
					<option value="Marshall_Islands">Marshall Islands</option>
					<option value="Micronesia_F_S_O">Micronesia, F.S.O</option>
					<option value="Nauru">Nauru</option>
					<option value="New_Zealand">New Zealand</option>
					<option value="Papua_New_Guinea">Papua New Guinea</option>
					<option value="Solomon_Islands">Solomon Islands</option>
					<option value="Tonga">Tonga</option>
					<option value="Tuvalu">Tuvalu</option>
					<option value="UK_Is">United Kingdom (Islands only)</option>
					<option value="Vanuatu">Vanuatu</option>
					<option value="Western_Samoa">Western Samoa</option>
					<!-- Then the countries for Europe -->
					<option>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ------ Europe ------</option>
					<option value="Albania">Albania</option>
					<option value="Andorra">Andorra</option>
					<option value="Austria">Austria</option>
					<option value="Belarus">Belarus</option>
					<option value="Belgium">Belgium</option>
					<option value="Bosnia_Herzegovina">Bosnia-Herzegovina</option>
					<option value="Bulgaria">Bulgaria</option>
					<option value="Cape_Verde">Cape Verde</option>
					<option value="Croatia">Croatia</option>
					<option value="Czech_Republic">Czech Republic</option>
					<option value="Denmark_and_Greenland">Denmark and Greenland</option>
					<option value="Estonia">Estonia</option>
					<option value="Finland">Finland</option>
					<option value="France">France</option>
					<option value="Germany">Germany</option>
					<option value="Greece">Greece</option>
					<option value="Hungary">Hungary</option>
					<option value="Iceland">Iceland</option>
					<option value="Ireland">Ireland Rep.Of</option>
					<option value="Italy">Italy</option>
					<option value="Latvia">Latvia</option>
					<option value="Liechtenstein">Liechtenstein</option>
					<option value="Lithuania">Lithuania</option>
					<option value="Luxembourg">Luxembourg</option>
					<option value="Macedonia">Macedonia</option>
					<option value="Malta">Malta</option>
					<option value="Moldova">Moldova</option>
					<option value="Netherlands">Netherlands</option>
					<option value="Norway">Norway</option>
					<option value="Poland">Poland</option>
					<option value="Portugal">Portugal</option>
					<option value="Romania">Romania</option>
					<option value="Russian_Federation">Russian Federation</option>
					<option value="Slovakia">Slovakia</option>
					<option value="Slovenia">Slovenia</option>
					<option value="Spain">Spain</option>
					<option value="Sweden">Sweden</option>
					<option value="Switzerland">Switzerland</option>
					<option value="Turkey">Turkey</option>
					<option value="Ukraine">Ukraine</option>
					<option value="UK">United Kingdom</option>
					<option value="Yugoslavia">Yugoslavia</option>
					<!-- Then the countries for North America -->
					<option>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ------ America ------</option>
					<option value="Antigua_and_Barbuda">Antigua and Barbuda</option>
					<option value="Barbados">Barbados</option>
					<option value="Bahamas">Bahamas</option>
					<option value="Belize">Belize</option>
					<option value="Canada">Canada</option>
					<option value="Costa_Rica">Costa Rica</option>
					<option value="Cuba">Cuba</option>
					<option value="Dominica">Dominica</option>
					<option value="Dominican_Republic">Dominican Republic</option>
					<option value="El_Salvador">El Salvador</option>
					<option value="France_Is">France (Islands only)</option>
					<option value="Greenland_(Denmark)">Greenland (Denmark)</option>
					<option value="Grenada">Grenada</option>
					<option value="Guatemala">Guatemala</option>
					<option value="Haiti">Haiti</option>
					<option value="Honduras">Honduras</option>
					<option value="Jamaica">Jamaica</option>
					<option value="Mexico">Mexico</option>
					<option value="Netherlands_Is">Netherlands (Islands only)</option>
					<option value="Pacific_Islands_Inc._Hawaii">Pacific Islands Inc. Hawaii</option>
					<option value="Panama">Panama</option>
					<option value="St_Kitts-Nevis">St Kitts-Nevis</option>
					<option value="St_Lucia">St Lucia</option>
					<option value="St_Vincent_and_the_Grenadines">St Vincent and the Grenadines</option>
					<option value="Trinidad_and_Tobago">Trinidad and Tobago</option>
					<option value="UK_Is">United Kingdom (Islands only)</option>
					<option value="USA">United States Of America</option>
					<option value="Uruguay">Uruguay</option>
					<option value="Venezuela">Venezuela</option>
					<!-- Then the countries for South America -->
					<option value="Argentina">Argentina</option>
					<option value="Bolivia">Bolivia</option>
					<option value="Brazil">Brazil</option>
					<option value="Chile">Chile</option>
					<option value="Colombia">Colombia</option>
					<option value="Ecuador">Ecuador</option>
					<option value="French_Guiana">French Guiana</option>
					<option value="Guyana">Guyana</option>
					<option value="Nicaragua">Nicaragua</option>
					<option value="Paraguay">Paraguay</option>
					<option value="Peru">Peru</option>
					<option value="Suriname">Suriname</option>
					<option value="UK_Is">United Kingdom (Islands only)</option>
					<option value="Uruguay">Uruguay</option>
					<option value="Venezuela">Venezuela</option>
					<!-- Then the countries I might have missed -->
					<option>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ------ Other ------</option>
					<option value="Other">Other (please use the box below)</option>
				</select>

The 'other' box

				<input type="text" name="other" value="Use this for other" size="20">

*/