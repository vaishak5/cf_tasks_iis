<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Employment Application</title>
        <link rel="stylesheet" href="./Assets/css/jquery-ui.css">
        <link rel="stylesheet" href="./Assets/css/style.css">
        <script src="./Script/Src/sourceFirst.js"></script>
        <script src="./Script/Src/sourceSecond.js"></script>
        <script src="./Script/Src/sourceThird.js"></script>
        <script src="./Script/Src/jquery.min.js"></script>
        <script src="./Script/Src/jquery-ui.min.js"></script>
        <script src="./Script/ques23.js"></script> 
        <script src="./Script/script.js"></script>
    </head>
    <body>
        <div class="mainBody">
            <div class="mainConts">
                <div class="logo">
                    <img src="./Assets/wufooImage.PNG" alt="img">
                </div>
                <div class="secondMain" id="formContainer">
                    <form id="employmentForm" action="index.cfm" method="post">
                        <div class="secondMainFt">
                            <div class="head">
                                <h2>Employment Application</h2>
                                <p>Infinity Box Inc.</p>
                            </div>
                        </div>
                        <div class="errorTxt" id="msgError">
                            <p>There was a problem with your submission.</p>
                            <span>Errors have been <b class="highlighted">highlighted</b> below</span>
                        </div>
                        <div class="errorContainer" id="errorContainers">
                            <div class="boxFirst" id="boxx">
                                <div class="position" >
                                    <p class="positionTxt" id="positionTxtt">Which position are you applying for?</p>
                                    <span class="redIcon">*</span>
                                </div>
                                <div class="selectSet">
                                    <select id="selectConts" name="positionField">
                                        <option value="" selected="selected"></option>
                                        <option value="Interface Designer">Interface Designer</option>
                                        <option value="Software Engineer">Software Engineer</option>
                                        <option value="System Administrator">System Administrator </option>
                                        <option value="Office Manager">Office Manager </option>
                                    </select>
                                </div>
                                <span id="fieldError" class="error"></span>
                            </div>
                        </div>
                        <div id="relocateCont" class="relocates">
                            <div class="relocate">
                                <p class="relocateTxtCont">Are you willing to relocate? </p>
                                <span class="redIcon">*</span>         
                            </div>
                            <div class="radioBtnCont" id="radioContainer">
                                <div class="btnOne">
                                    <div class="rdBtn">
                                        <input type="radio" name="relocate" id="firstButton" value="yes"><span>Yes</span>
                                    </div>
                                    <div class="rdBtn">
                                        <input type="radio" name="relocate" id="secondButon" value="no"><span>No</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="errorContainerSd">
                            <div class="boxSecond" id="boxxSecond">
                                <div class="relocate">
                                    <p class="relocateTxt">When can you start?</p>
                                    <span class="redIcon">*</span>         
                                </div>
                                <div class="inputSet">
                                    <div class="inputConts">
                                        <div class="box">
                                            <input type="text" class="field text dateInputOne" id="textBoxFt" maxlength="2" name="month" onkeyup="moveCursor(this, 'textBoxSnd')">
                                            <p class="month">MM</p>
                                        </div>
                                        <div class="symbols">
                                            <p class="symbol">/</p>
                                        </div>
                                    </div>
                                    <div class="inputConts">
                                        <div class="box">
                                            <input type="text" class="field text dateInputOne" id="textBoxSnd" maxlength="2" name="date" onkeyup="moveCursor(this, 'textBoxThd')">
                                            <p class="month">DD</p>
                                        </div>
                                        <div class="symbols">
                                            <p class="symbol">/</p>
                                        </div>
                                    </div>
                                    <div class="inputContss">
                                        <div class="box">
                                            <input type="text" class="field text dateInputTwo" id="textBoxThd" maxlength="4" name="yr">
                                            <p class="month">YYYY</p>
                                        </div>
                                    </div>
                                </div>
                                <span id="monthError" class="error"></span>
                            </div>
                        </div>
                        <div class="errorContainerThd" id="thdBox">
                            <div class="boxThird" id="boxxThird">
                            
                                <div class="portflio">
                                    <p class="relocateTxt">Portfolio Web Site</p>
                                    <div class="httpTxt">
                                        <input type="text" value="http://" id="urlCont" name="urlLink">
                                    </div>
                                </div>
                            
                                <span id="urlError" class="error"></span>
                            </div>
                        </div>
                        <div id="fileCont" class="fileConts">
                            <div class="attach">
                                <p class="attachTxt">Attach a Copy of Your Resume</p>
                            </div>
                            <div class="chooseBtn" id="chooseImg">
                                <input type="file" id="myFile">
                                <p>Word or PDF Documents Only</p>
                            </div>
                        </div>
                        <div class="salary" id="salaryCont">
                            <p class="salaryTxt">Salary Requirements</p>
                            <div class="symbolBox">
                                <span class="symbolSd">$</span>
                                <div class="inputConts">
                                    <div class="box">
                                        <input type="text" class="textBoxThd" id="salaryBox">
                                        <p class="month">Dollars</p>
                                    </div>
                                    <div class="symbols">
                                        <p class="symbol">.</p>
                                    </div>
                                </div>
                                <div class="inputConts">
                                    <div class="box">
                                        <input type="text" class="textBox" id="salaryBox">
                                        <p class="month">Cents</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="contact">
                            <p>Your Contact Information</p>
                        </div>
                        <div class="errorContainerForth">
                            <div class="boxForth" id="boxxFourth">
                                <div class="portflioName">
                                    <p class="relocateTxt">Name</p>
                                    <span class="redIcon">*</span> 
                                </div>
                                <div class="firstLast">
                                    <div class="inputConts">
                                        <div class="boxx">
                                            <input type="text" id="firstname" name="firstName">
                                            <label for="firstName">First</label>
                                        </div>
                                    </div>
                                    <div class="inputConts">
                                        <div class="boxx">
                                            <input type="text" id="lastname" name="lastName">
                                            <label for="lastName">Last</label>
                                        
                                        </div>
                                    </div>
                                </div>
                                <span id="nameError" class="error"></span><br>
                            </div>
                        </div>
                        <div class="errorContainerFifth">
                            <div class="boxFifth" id="boxxFifth">
                                <div class="portflioEmail">
                                    <p class="email">Email Address</p>
                                    <span class="redIcon">*</span>
                                </div>
                                <div class="boxx">
                                    <input type="email" id="email" name="email">
                                </div>
                                <span id="emailError" class="error"></span><br>
                            </div>
                        </div>    
                        <div class="errorContainerSixth">
                            <div class="boxSixth" id="boxSix">
                                <div class="portflioPhone">
                                    <p class="relocateTxt">Phone</p>
                                    <span class="redIcon">*</span>
                                </div>
                                <div class="inputSet">
                                    <div class="inputConts">
                                        <div class="box">
                                            <input type="text" id="phoneFt" maxlength="3" name="phoneFtField" onkeyup="moveCursor(this, 'phoneSnd')">
                                            <label for="phoneFt">###</label>
                                        </div>
                                        <div class="symbols">
                                            <p class="symbol">-</p>
                                        </div>
                                    </div>
                                    <div class="inputConts">
                                        <div class="box">
                                            <input type="text" id="phoneSnd" maxlength="3" name="phoneSndField" onkeyup="moveCursor(this, 'phoneThd')">
                                            <label for="phoneSnd">###</label>
                                        </div>
                                        <div class="symbols">
                                            <p class="symbol">-</p>
                                        </div>
                                    </div>
                                    <div class="inputContss">
                                        <div class="box">
                                            <input type="text" id="phoneThd" maxlength="4" name="phoneThdField">
                                            <label for="phoneThd">####</label>
                                        </div>
                                    </div>
                                </div>

                                <span id="mobileError" class="error"></span><br>
                            </div>
                        </div>
                        <div class="subButton">
                            <input type="submit" class="submit" name="submit" id="submitBtn" value="Submit">
                        </div>
                    </form>
                    <p id="formDetails"></p>
                    <div class="lastCont">
                        <p class="lastContTxt">This site is protected by reCAPTCHA Enterprise and the Google
                        <a href="#"> Privacy Policy   </a>   and <a href="#"> Terms of Service</a> apply</p>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>