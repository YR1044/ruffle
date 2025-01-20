/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
package {
import flash.display.MovieClip;
public class Test extends MovieClip {}
}

import com.adobe.test.Assert;

// var SECTION = "Definitions";           // provide a document reference (ie, ECMA section)
// var VERSION = "AS3";                   // Version of JavaScript or ECMA
// var TITLE   = "Testing try block with multiple catch blocks, the  catch block with parameter of type Error catching the Range error when there is no catch block with parameter of type Range Error defined ";  // Provide ECMA section title or a description
var BUGNUMBER = "";



thisError = "no error";
       
try {
     throw new RangeError();
    } catch(e:ReferenceError){
       thisError="This is Reference Error";
    }catch(e1:ArgumentError){
       thisError="This is Argument Error";
    }catch(e2:URIError){
       thisError="This is URI Error";
    }catch(e3:EvalError){
       thisError="This is Eval Error";
    }catch(e4:TypeError){
       thisError="This is Type Error";
    }catch(e5:SecurityError){
       thisError="This is security Error";
    }catch(e6:DefinitionError){
       thisError="This is Definition Error";
    }catch(e7:UninitializedError){
       thisError="This is Uninitialized Error";
    }catch(e8:SyntaxError){
       thisError="This is Syntax Error";
    }catch(e9:VerifyError){
       thisError="This is Verify Error";
    }catch(e10:Error){
      thisError = e10.toString();
    }finally{
    Assert.expectEq( "Testing try block with throw statement", "Error: RangeError"        ,Error(thisError)+"" );
     }


              // displays results.
