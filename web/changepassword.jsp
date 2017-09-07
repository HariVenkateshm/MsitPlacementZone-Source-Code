<!DOCTYPE html>
<html>

  <head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.css" />
    <script src="https://code.angularjs.org/1.3.0-rc.2/angular.js"></script>
    <script src="https://code.angularjs.org/1.3.0-rc.2/angular-messages.js"></script>
   
    <link rel="stylesheet" href="cs/changepassword.css" />
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
      <link rel="stylesheet" href="css/addpc.css">
<!--    <script src="js/changepassword.js"></script>-->
  </head>
  <script>
      var app = angular.module('myapp', ['UserValidation']);

angular.module('UserValidation', []).directive('validPasswordC', function () {
    return {
        require: 'ngModel',
        link: function (scope, elm, attrs, ctrl) {
            ctrl.$parsers.unshift(function (viewValue, $scope) {
                var noMatch = viewValue != scope.myForm.password.$viewValue
                ctrl.$setValidity('noMatch', !noMatch)
            })
        }
    }
})
</script>


<div class="main">
      <div class="one">
        <div ng-app="myapp" class="register">
       <form name="myForm" action="Change_Password">
          <h3>Change Password</h3>
          
            <div>
              <label for="cname">Current Password</label>
              <input type="Password" id="username" name="username" ng-model="formData.username" ng-minlength="5" ng-maxlength="20" ng-pattern="/^[A-z][A-z0-9]*$/" required  />
            </div>
            
            <div>
              <label for="date">New Password</label>
<!--              <input type="date" id="rollno" name="date" spellcheck="false" placeholder="Date" />-->
              <input type="password" id="password" name="password" ng-model="formData.password" ng-minlength="8" ng-maxlength="20" ng-pattern="/(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z])/" required  />
              <span ng-show="myForm.password.$error.required && myForm.password.$dirty">required</span>
   <span ng-show="!myForm.password.$error.required && (myForm.password.$error.minlength || myForm.password.$error.maxlength) && myForm.password.$dirty">Passwords must be between 8 and 20 characters.</span>
   <span ng-show="!myForm.password.$error.required && !myForm.password.$error.minlength && !myForm.password.$error.maxlength && myForm.password.$error.pattern && myForm.password.$dirty">Must contain one lower &amp; uppercase letter, and one non-alpha character (a number or a symbol.)</span>
            </div>
              <div>
              <label for="venue">Confirm Password</label>
<!--              <input type="text" id="venue" name="venue" spellcheck="false" placeholder="Venue"/>-->
              <input type="password" id="password_c" name="password_c" ng-model="formData.password_c" valid-password-c required  />
   <span ng-show="myForm.password_c.$error.required && myForm.password_c.$dirty">Please confirm your password.</span>
   <span ng-show="!myForm.password_c.$error.required && myForm.password_c.$error.noMatch && myForm.password.$dirty">Passwords do not match.</span>
            </div>
            
            <div>
              <label></label>
              <input type="submit" value="Submit" id="create-account" class="button"/>
            </div>
          </form>
          </div>
        </div>
      </div>
 
<!--   <label for="email">Email</label>
   <input type="email" id="email" name="email" ng-model="formData.email" required/>
   <span ng-show="myForm.email.$error.required && myForm.email.$dirty">required</span>
   <span ng-show="!myForm.email.$error.required && myForm.email.$error.email && myForm.email.$dirty">invalid email</span>
       <br />
   <label for="email">Name</label>
   <input type="text" id="name" name="name" ng-model="formData.name" required/>
   <span ng-show="myForm.name.$error.required && myForm.name.$dirty">required</span>
       <br />-->
<!--       <label for="username">Current Password</label>-->
       
<!--   <span ng-show="myForm.username.$error.required && myForm.username.$dirty">required</span>
   <span ng-show="!myForm.username.$error.minLength && !myForm.username.$error.maxLength && myForm.username.$error.pattern && myForm.username.$dirty">Must start with a letter, and contain letters &amp; numbers only.</span>
   <span ng-show="!myForm.username.$error.required && (myForm.username.$error.minlength || myForm.username.$error.maxlength) && myForm.username.$dirty">Username ust be between 5 and 20 characters.</span>
       <br />-->
       
<!--<br>
       <label for="password">Password</label>
       <input type="password" id="password" name="password" ng-model="formData.password" ng-minlength="8" ng-maxlength="20" ng-pattern="/(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z])/" required  />
   <span ng-show="myForm.password.$error.required && myForm.password.$dirty">required</span>
   <span ng-show="!myForm.password.$error.required && (myForm.password.$error.minlength || myForm.password.$error.maxlength) && myForm.password.$dirty">Passwords must be between 8 and 20 characters.</span>
   <span ng-show="!myForm.password.$error.required && !myForm.password.$error.minlength && !myForm.password.$error.maxlength && myForm.password.$error.pattern && myForm.password.$dirty">Must contain one lower &amp; uppercase letter, and one non-alpha character (a number or a symbol.)</span>
       <br />-->
       
<!--       
       <label for="password_c">Confirm Password</label>
       <input type="password" id="password_c" name="password_c" ng-model="formData.password_c" valid-password-c required  />
   <span ng-show="myForm.password_c.$error.required && myForm.password_c.$dirty">Please confirm your password.</span>
   <span ng-show="!myForm.password_c.$error.required && myForm.password_c.$error.noMatch && myForm.password.$dirty">Passwords do not match.</span>
       <br />-->
	</form>
   </div>
</html>
