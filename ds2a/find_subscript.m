## Copyright (C) 2015 wang
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {Function File} {@var{retval} =} find_subscript (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: wang <wang@wang-VirtualBox>
## Created: 2015-12-08


function [sub_m, sub_n] = find_subscript (size_of_matrix, index_of_min_value)

% Get the subscripts of the minimal value in the temprary matrix.

		     [sub_m, sub_n] = ind2sub(size_of_matrix, index_of_min_value(1));

% (1) --> In case there are two identical minimal values. 

endfunction
