within Buildings.Experimental.OpenBuildingControl.CDL.Logical.Validation;
model Change "Validation model for the Change block."
extends Modelica.Icons.Example;

  Buildings.Experimental.OpenBuildingControl.CDL.Sources.BooleanPulse booPul(
    width = 0.5,
    period = 1.0)
    "Block that outputs cyclic on and off"
    annotation (Placement(transformation(extent={{-40,-10},{-20,10}})));

  Buildings.Experimental.OpenBuildingControl.CDL.Logical.Change change
    "Outputs true if the input changes"
    annotation (Placement(transformation(extent={{0,-10},{20,10}})));

  Buildings.Experimental.OpenBuildingControl.CDL.Sources.Ramp ramp2(
    duration=5,
    offset=0,
    height=20) "Block that generates ramp signal"
    annotation (Placement(transformation(extent={{0,40},{20,60}})));

  Discrete.TriggeredSampler triggeredSampler "Triggered sampler"
    annotation (Placement(transformation(extent={{40,40},{60,60}})));
equation
  connect(booPul.y, change.u)
    annotation (Line(points={{-19,0},{-6,0},{-2,0}},color={255,0,255}));
  connect(ramp2.y, triggeredSampler.u)
    annotation (Line(points={{21,50},{29.5,50},{38,50}}, color={0,0,127}));
  connect(change.y, triggeredSampler.trigger) annotation (Line(points={{21,0},{
          50,0},{50,38.2}}, color={255,0,255}));
  annotation (
  experiment(StopTime=5.0, Tolerance=1e-06),
  __Dymola_Commands(file="modelica://Buildings/Resources/Scripts/Dymola/Experimental/OpenBuildingControl/CDL/Logical/Validation/Change.mos"
        "Simulate and plot"),
    Documentation(info="<html>
<p>
Validation test for the block
<a href=\"modelica://Buildings.Experimental.OpenBuildingControl.CDL.Logical.Change\">
Buildings.Experimental.OpenBuildingControl.CDL.Logical.Change</a>.
</p>
</html>", revisions="<html>
<ul>
<li>
April 1, 2017, by Jianjun Hu:<br/>
First implementation.
</li>
</ul>

</html>"));
end Change;