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
## @deftypefn {Function File} {@var{retval} =} find_min_value (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: wang <wang@wang-VirtualBox>
## Created: 2015-12-08

function edge_with_min_value = find_min_value (temp_matrix)

% Find the minimal edge value in a column.
min_value_colum = min(temp_matrix);

% Find the minimal edge value in a row vector. Elements in this vector selected by operation above.
min_value_row = min(min_value_colum);

% Return the smallest value of edges in the temporary matrix.
edge_with_min_value = min_value_row; 


endfunction
