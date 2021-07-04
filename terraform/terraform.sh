#!/bin/bash

# script it just a short cut to add the $DO_TOKEN as a variable 

terraform $@ -var="do_token=$DO_TOKEN" 
