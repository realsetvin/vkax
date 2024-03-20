```
                                              ÆÆÆÆÆÆÆÆ                                              
                                           ÆÆÆÆÆÆÆÆÆÆÆÆÆ                                            
                                          ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                                           
                                         ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                                          
                                         ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                                          
                                         ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                                          
                                          ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                                          
                                         ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                                         
                                        ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                                        
                                       ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                                       
                                      ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                                      
                                     ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                                     
                                    ÆÆÆÆÆÆÆÆÆÆÆÆÆ  ÆÆÆÆÆÆÆÆÆÆÆÆÆ                                    
                                   ÆÆÆÆÆÆÆÆÆÆÆÆÆ    ÆÆÆÆÆÆÆÆÆÆÆÆÆ                                   
                                  ÆÆÆÆÆÆÆÆÆÆÆÆÆ      ÆÆÆÆÆÆÆÆÆÆÆÆÆ                                  
                                 ÆÆÆÆÆÆÆÆÆÆÆÆÆ        ÆÆÆÆÆÆÆÆÆÆÆÆÆ                                 
                                ÆÆÆÆÆÆÆÆÆÆÆÆ           ÆÆÆÆÆÆÆÆÆÆÆÆÆ                                
                              ÆÆÆÆÆÆÆÆÆÆÆÆÆ             ÆÆÆÆÆÆÆÆÆÆÆÆÆ                               
                             ÆÆÆÆÆÆÆÆÆÆÆÆÆ               ÆÆÆÆÆÆÆÆÆÆÆÆÆ                              
                            ÆÆÆÆÆÆÆÆÆÆÆ                      ÆÆÆÆÆÆÆÆÆÆÆ                            
                           ÆÆÆÆÆÆÆÆÆ                            ÆÆÆÆÆÆÆÆÆ                           
      ÆÆÆÆ                ÆÆÆÆÆÆÆÆ                                ÆÆÆÆÆÆÆÆ                ÆÆÆÆ      
    ÆÆÆÆÆÆÆ              ÆÆÆÆÆÆÆÆ                                  ÆÆÆÆÆÆÆÆ             ÆÆÆÆÆÆÆÆ    
  ÆÆÆÆÆÆÆÆÆÆÆ           ÆÆÆÆÆÆÆ                                      ÆÆÆÆÆÆÆ           ÆÆÆÆÆÆÆÆÆÆ   
 ÆÆÆÆÆÆÆÆÆÆÆÆÆÆ        ÆÆÆÆÆÆÆ                                        ÆÆÆÆÆÆÆ        ÆÆÆÆÆÆÆÆÆÆÆÆÆÆ 
 ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ     ÆÆÆÆÆÆÆ                                          ÆÆÆÆÆÆÆ     ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ 
   ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ  ÆÆÆÆÆÆÆ                                            ÆÆÆÆÆÆÆ  ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ   
    ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                                              ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ     
      ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                                                ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ      
        ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                                                  ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ        
          ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                                                ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ          
            ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                                            ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ            
              ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                                        ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ              
               ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                                    ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                
                 ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                                ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                 
                   ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                             ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                   
                     ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                         ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                     
                       ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                      ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                       
                         ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                  ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                         
                           ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ              ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                           
                            ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ          ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                             
                              ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ      ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                              
                                ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ  ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                                
                                  ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                                  
                                    ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                                    
                                      ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                                      
                                        ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                                        
                                         ÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                                          
                                           ÆÆÆÆÆÆÆÆÆÆÆÆÆÆ                                           
                                             ÆÆÆÆÆÆÆÆÆÆ                                             
                                               ÆÆÆÆÆÆ                                               
                                                 ÆÆ                                                 
```


Vero Kum Abdite Xenium [VKAX]

"In truth we arise with a hidden gift"


Vkax Core [Community Staging Branch][v100.10.1]
===========================

|CI|master|develop|
|-|-|-|
|Gitlab|[![Build Status](https://gitlab.com/dashpay/dash/badges/master/pipeline.svg)](https://gitlab.com/dashpay/dash/-/tree/master)|[![Build Status](https://gitlab.com/dashpay/dash/badges/develop/pipeline.svg)](https://gitlab.com/dashpay/dash/-/tree/develop)|

Website: TBA

Explorer: https://x.butkoin.com/vkax

Proposed Changes:
Masternode Collateral from 10mil -> 1mil
Developer Fee down to 0%

If you agree with these changes and would like to participate by running a node, please "follow" and "star" this repository. Development is being done voluntarily, so no time frame for release is given at this moment. You are invited to participate in any way that you are able. Miners and online masternodes will be necessary to execute this hard fork successfully. 

What is Vkax?
-------------

Vkax is an experimental digital currency that enables instant, private
payments to anyone, anywhere in the world. Vkax uses peer-to-peer technology
to operate with no central authority: managing transactions and issuing money
are carried out collectively by the network. Vkax Core is the name of the open
source software which enables the use of this currency.

License
-------

Dash Core and Vkax project core is released under the terms of the MIT license. See [COPYING](COPYING) for more
information or see https://opensource.org/licenses/MIT.

Development Process
-------------------

This fork proposes to become the new `master` branch. Development is ongoing and caution is advised before proceeding.

Development
------------

If you believe you have an idea or change you would like to make, please use the 'issues' tab to create a discussion!

Testing
-------

Testing and code review is the bottleneck for development; we get more pull
requests than we can review and test on short notice. Please be patient and help out by testing
other people's pull requests, and remember this is a security-critical project where any mistake might cost people
lots of money.

### Automated Testing

Developers are strongly encouraged to write [unit tests](src/test/README.md) for new code, and to
submit new unit tests for old code. Unit tests can be compiled and run
(assuming they weren't disabled in configure) with: `make check`. Further details on running
and extending unit tests can be found in [/src/test/README.md](/src/test/README.md).

There are also [regression and integration tests](/test), written
in Python, that are run automatically on the build server.
These tests can be run (if the [test dependencies](/test) are installed) with: `test/functional/test_runner.py`

The Travis CI system makes sure that every pull request is built for Windows, Linux, and macOS, and that unit/sanity tests are run automatically.

### Manual Quality Assurance (QA) Testing

Changes should be tested by somebody other than the developer who wrote the
code. This is especially important for large or high-risk changes. It is useful
to add a test plan to the pull request description if testing the changes is
not straightforward.

