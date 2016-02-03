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
## @deftypefn {Function File} {@var{retval} =} mst (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: wang <wang@wang-VirtualBox>
## Created: 2015-12-08

	 function minimalspanningtree = minimalspanningtree (weighted_adjacency_matrix)

						 disp("\nThe minimal spanning tree is: ");

% Initialize the mininal spanning tree.

						 proto_tree = [];

% Get the no of nodes.
						 no_of_nodes = getNodes(weighted_adjacency_matrix);

% Transform the matrix to set infinite values into 0:s.
revised_matrix = revise_wam(weighted_adjacency_matrix);

% Begin the search of minimal values from node 1.
nodes_checked = 1;
nodes_unchecked = [2 : no_of_nodes];

% Loop to check the minimal values.
while getNodes(nodes_checked) <  no_of_nodes,

temp_matrix = revised_matrix(nodes_checked, nodes_unchecked);

% Find the minimal value in temprary matrices.
edge_with_min_value = find_min_value(temp_matrix);

% Find the location/index of the minimal value. 
index_of_the_min_value = find_index(temp_matrix, edge_with_min_value);

% Get the size of temp_matrix.
size_of_temp_matrix = size(temp_matrix);

% Get the subscripts of the index of the minimal value.
[sub_m, sub_n] = find_subscript(size_of_temp_matrix, index_of_the_min_value);


% Get the subscripts(m, n) of the_revised_matrix.
  m = nodes_checked(sub_m); n = nodes_unchecked(sub_n);

% Reset the numbers of checked/unchecked nodes -> build new temprary matrice -> new search for minimal values.
% Remove n from nodes_unchecked to nodes_checked as the minimal values sub_n == n.
 nodes_checked = [nodes_checked n]; 
 nodes_unchecked = setdiff(nodes_unchecked, n);

% Compare the value of m, n
% and write them into minimal spanning tree in acending order.

                              if m > n,
			      tmp = m;
                              m = n;
                              n = tmp;
                              end;

% Add the nodes in the set of minimal spanning tree.
% Add the edge with min value for purpose of sorting too.
proto_tree = [proto_tree;[m n edge_with_min_value]];

% Sort the edges acendingly according to the values of the 3rd column.
sorted_tree = sortrows(proto_tree,3);

% Show merely the 1st & 2nd columns(%nodes in the set of mst).
minimalspanningtree = sorted_tree(:,[1 2]);

end;% End the loop.





endfunction
