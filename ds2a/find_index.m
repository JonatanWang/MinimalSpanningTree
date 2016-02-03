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
## @deftypefn {Function File} {@var{retval} =} find_index (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: wang <wang@wang-VirtualBox>
## Created: 2015-12-08

	 function index_of_the_min_value = find_index (temp_matrix, min_value)

% Find the location/index of the minimal value in the temprary matrix.
						 index_of_the_min_value = find((temp_matrix) == (min_value));

endfunction
