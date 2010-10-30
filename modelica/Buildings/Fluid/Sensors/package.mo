within Buildings.Fluid;
package Sensors "Package with sensor models"
annotation (preferedView="info",
Documentation(info="<html>
<p align = justify>
Package <code>Sensors</code> consists of idealized sensor components that
provide variables of a medium model and/or fluid ports as
output signals. These signals can be, e.g., further processed
with components of the 
<a href=\"modelica://Modelica.Blocks\">
Modelica.Blocks</a> 
library.
Also more realistic sensor models can be built, by further
processing (e.g., by attaching block 
<a href=\"modelica://Modelica.Blocks.Continuous.FirstOrder\">
Modelica.Blocks.Continuous.FirstOrder</a> to
model the time constant of the sensor).
</p>
</html>",
      revisions="<html>
<ul>
<li><i>22 Dec 2008</i>
    by R&uuml;diger Franke
    <ul>
    <li>flow sensors based on Interfaces.PartialTwoPort</li>
    <li>adapted documentation to stream connectors, i.e. less need for two port sensors</li>
    </ul>
<li><i>4 Dec 2008</i>
    by Michael Wetter<br>
       included sensors for trace substance</li>
<li><i>31 Oct 2007</i>
    by Carsten Heinrich<br>
       updated sensor models, included one and two port sensors for thermodynamic state variables</li>
</ul>
</html>"));
end Sensors;
