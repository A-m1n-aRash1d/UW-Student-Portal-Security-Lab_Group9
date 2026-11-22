<mxfile host="app.diagrams.net" agent="Mozilla/5.0" version="24.7.17" type="device">
  <diagram id="uw-use-case" name="UW Student Portal Use Case Diagram">
    <mxGraphModel dx="1200" dy="800" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="1200" pageHeight="800" math="0" shadow="0">
      <root>
        <mxCell id="0" /><mxCell id="1" parent="0" />
        
        <!-- System Boundary -->
        <mxCell id="boundary" value="UW Student Portal" style="swimlane;html=1;childLayout=stackLayout;horizontal=0;startSize=30;horizontalStack=0;resizeParent=1;resizeParentMax=0;fillColor=none;strokeColor=#000000;strokeWidth=2;fontStyle=1;verticalAlign=top;" vertex="1" parent="1">
          <mxGeometry x="250" y="80" width="500" height="540" as="geometry" />
        </mxCell>
        
        <!-- Use Cases -->
        <mxCell id="login" value="Login" style="ellipse;whiteSpace=wrap;html=1;align=center;verticalAlign=middle;" vertex="1" parent="1">
          <mxGeometry x="420" y="120" width="160" height="60" as="geometry" />
        </mxCell>
        <mxCell id="search" value="Search Courses" style="ellipse;whiteSpace=wrap;html=1;align=center;verticalAlign=middle;" vertex="1" parent="1">
          <mxGeometry x="420" y="220" width="160" height="60" as="geometry" />
        </mxCell>
        <mxCell id="result" value="View Result" style="ellipse;whiteSpace=wrap;html=1;align=center;verticalAlign=middle;" vertex="1" parent="1">
          <mxGeometry x="420" y="320" width="160" height="60" as="geometry" />
        </mxCell>
        <mxCell id="admin" value="View Admin Panel" style="ellipse;whiteSpace=wrap;html=1;align=center;verticalAlign=middle;" vertex="1" parent="1">
          <mxGeometry x="410" y="420" width="180" height="60" as="geometry" />
        </mxCell>
        <mxCell id="logout" value="Logout" style="ellipse;whiteSpace=wrap;html=1;align=center;verticalAlign=middle;" vertex="1" parent="1">
          <mxGeometry x="420" y="520" width="160" height="60" as="geometry" />
        </mxCell>

        <!-- Actors -->
        <mxCell id="student" value="Student" style="shape=umlActor;verticalLabelPosition=bottom;verticalAlign=top;html=1;align=center;" vertex="1" parent="1">
          <mxGeometry x="100" y="120" width="40" height="80" as="geometry" />
        </mxCell>
        <mxCell id="teacher" value="Teacher" style="shape=umlActor;verticalLabelPosition=bottom;verticalAlign=top;html=1;align=center;" vertex="1" parent="1">
          <mxGeometry x="100" y="320" width="40" height="80" as="geometry" />
        </mxCell>
        <mxCell id="admin_actor" value="Administrator" style="shape=umlActor;verticalLabelPosition=bottom;verticalAlign=top;html=1;align=center;" vertex="1" parent="1">
          <mxGeometry x="860" y="120" width="40" height="80" as="geometry" />
        </mxCell>
        <mxCell id="attacker" value="Attacker" style="shape=umlActor;verticalLabelPosition=bottom;verticalAlign=top;html=1;align=center;" vertex="1" parent="1">
          <mxGeometry x="860" y="420" width="40" height="80" as="geometry" />
        </mxCell>

        <!-- Security Notes -->
        <mxCell id="note_login" value="{client-side demo only}" style="shape=note;whiteSpace=wrap;html=1;background=#FFF2CC;fillColor=#FFF2CC;borderColor=#D6B656;strokeColor=#D6B656;align=center;verticalAlign=middle;" vertex="1" parent="1">
          <mxGeometry x="270" y="110" width="130" height="50" as="geometry" />
        </mxCell>
        <mxCell id="note_admin" value="{client-side demo only}" style="shape=note;whiteSpace=wrap;html=1;background=#FFF2CC;fillColor=#FFF2CC;borderColor=#D6B656;strokeColor=#D6B656;align=center;verticalAlign=middle;" vertex="1" parent="1">
          <mxGeometry x="620" y="425" width="130" height="50" as="geometry" />
        </mxCell>

        <!-- Connections -->
        <mxCell id="s_login" edge="1" parent="1" source="student" target="login" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=none;">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="s_search" edge="1" parent="1" source="student" target="search" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=none;">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="s_result" edge="1" parent="1" source="student" target="result" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=none;">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="s_logout" edge="1" parent="1" source="student" target="logout" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=none;">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>

        <mxCell id="t_login" edge="1" parent="1" source="teacher" target="login" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=none;">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="t_search" edge="1" parent="1" source="teacher" target="search" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=none;">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="t_logout" edge="1" parent="1" source="teacher" target="logout" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=none;">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>

        <mxCell id="a_login" edge="1" parent="1" source="admin_actor" target="login" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=none;">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="a_admin" edge="1" parent="1" source="admin_actor" target="admin" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=none;">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="a_logout" edge="1" parent="1" source="admin_actor" target="logout" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=none;">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>

        <mxCell id="at_login" edge="1" parent="1" source="attacker" target="login" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=none;">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="at_result" edge="1" parent="1" source="attacker" target="result" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=none;">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        
        <mxCell id="note_login_edge" edge="1" parent="1" source="note_login" target="login" style="edgeStyle=orthogonalEdgeStyle;rounded=0;dashed=1;html=1;endArrow=none;">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="note_admin_edge" edge="1" parent="1" source="note_admin" target="admin" style="edgeStyle=orthogonalEdgeStyle;rounded=0;dashed=1;html=1;endArrow=none;">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>

      </root>
    </mxGraphModel>
  </diagram>
</mxfile>