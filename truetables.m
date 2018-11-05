## Copyright (C) 2018 Mario
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

## Generates the all possible combinations of values to be used in a true table. 
## it is not restricted only a binary values
## Sintaxis example
## [TT]=truetables(2,3) generates a 2^3 rows x 3 columns
## 

## Author: Mario <mario@mario-Jojoa>
## Created: 2018-10-30

function TT=truetables(baseP,powerP)
con=0:1:baseP-1; 
T=zeros(powerP,baseP^powerP);
ka=baseP^powerP;

for cc=0:powerP-1
    cota=baseP^cc;
    cc=cc+1;

vector=zeros(1,ka); 
n=size(con,2);
lim=floor(ka/n);
i=1;
c=1;

for m=1:ka
  vector(m)=con(i);

  if c==cota
    i=i+1;
    c=0;
   endif

  if i==n+1
    i=1;
  endif

  c=c+1;


endfor

T(powerP+1-cc,:)=vector;

endfor
TT=T';

endfunction
