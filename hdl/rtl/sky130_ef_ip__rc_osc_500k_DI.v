/*
	Copyright 2020 Efabless Corp.
	
	Licensed under the Apache License, Version 2.0 (the "License"); 
	you may not use this file except in compliance with the License. 
	You may obtain a copy of the License at:
	http://www.apache.org/licenses/LICENSE-2.0
	Unless required by applicable law or agreed to in writing, software 
	distributed under the License is distributed on an "AS IS" BASIS, 
	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
	See the License for the specific language governing permissions and 
	limitations under the License.
*/

`timescale          1ns/1ps
`default_nettype    none

module sky130_ef_ip__rc_osc_500k_DI (
`ifdef USE_POWER_PINS
    input   wire    vdda1,
    input   wire    vssa1,
    input   wire    vccd1,
    input   wire    vssd1,
`endif
    input   wire    ena,
    output  wire    dout
);

sky130_ef_ip__rc_osc_500k mprj (
`ifdef USE_POWER_PINS
    .avdd(vdda1),
    .avss(vssa1),
    .dvdd(vccd1),
    .dvss(vssd1),
`endif
    .ena(ena),
    .dout(dout)
);

endmodule