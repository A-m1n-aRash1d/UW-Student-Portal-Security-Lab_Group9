<mxfile host="app.diagrams.net" agent="Mozilla/5.0" version="24.7.17" type="device">
  <diagram id="uw-class-diagram" name="UW Student Portal Class Diagram">
    <mxGraphModel dx="1200" dy="800" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="1200" pageHeight="800" math="0" shadow="0">
      <root>
        <mxCell id="0" /><mxCell id="1" parent="0" />

        <!-- Classes -->
        <mxCell id="portal-ui" value="&lt;b&gt;PortalUI&lt;/b&gt;&lt;hr&gt;&amp;nbsp;&lt;hr&gt;+ render()&lt;br&gt;+ showResult(id)&lt;br&gt;+ searchCourses(q)" style="swimlane;fontStyle=1;align=center;verticalAlign=top;childLayout=stackLayout;horizontal=1;startSize=26;horizontalStack=0;resizeParent=1;resizeParentMax=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="50" y="250" width="220" height="150" as="geometry" />
        </mxCell>
        <mxCell id="user" value="&lt;b&gt;User&lt;/b&gt;&lt;hr&gt;- id: int&lt;br&gt;- name: string&lt;br&gt;- role: string&lt;hr&gt;+ verifyLogin()" style="swimlane;fontStyle=1;align=center;verticalAlign=top;childLayout=stackLayout;horizontal=1;startSize=26;horizontalStack=0;resizeParent=1;resizeParentMax=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="350" y="100" width="220" height="160" as="geometry" />
        </mxCell>
        <mxCell id="result" value="&lt;b&gt;Result&lt;/b&gt;&lt;hr&gt;- course: string&lt;br&gt;- marks: int&lt;hr&gt;&amp;nbsp;" style="swimlane;fontStyle=1;align=center;verticalAlign=top;childLayout=stackLayout;horizontal=1;startSize=26;horizontalStack=0;resizeParent=1;resizeParentMax=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="350" y="300" width="220" height="130" as="geometry" />
        </mxCell>
        <mxCell id="course" value="&lt;b&gt;Course&lt;/b&gt;&lt;hr&gt;- courseName: string&lt;hr&gt;&amp;nbsp;" style="swimlane;fontStyle=1;align=center;verticalAlign=top;childLayout=stackLayout;horizontal=1;startSize=26;horizontalStack=0;resizeParent=1;resizeParentMax=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="350" y="480" width="220" height="110" as="geometry" />
        </mxCell>
        <mxCell id="session" value="&lt;b&gt;SessionState&lt;/b&gt;&lt;hr&gt;- uid: string&lt;hr&gt;+ getSession()&lt;br&gt;+ setSession()&lt;br&gt;+ clearSession()" style="swimlane;fontStyle=1;align=center;verticalAlign=top;childLayout=stackLayout;horizontal=1;startSize=26;horizontalStack=0;resizeParent=1;resizeParentMax=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="650" y="250" width="220" height="150" as="geometry" />
        </mxCell>

        <!-- Security Notes -->
        <mxCell id="note_portal" value="{untrusted input}" style="shape=note;whiteSpace=wrap;html=1;background=#FFF2CC;fillColor=#FFF2CC;borderColor=#D6B656;strokeColor=#D6B656;align=center;verticalAlign=middle;" vertex="1" parent="1">
          <mxGeometry x="50" y="150" width="140" height="50" as="geometry" />
        </mxCell>
        <mxCell id="note_user" value="{synthetic data}" style="shape=note;whiteSpace=wrap;html=1;background=#FFF2CC;fillColor=#FFF2CC;borderColor=#D6B656;strokeColor=#D6B656;align=center;verticalAlign=middle;" vertex="1" parent="1">
          <mxGeometry x="620" y="100" width="140" height="50" as="geometry" />
        </mxCell>
        <mxCell id="note_result" value="{synthetic data}" style="shape=note;whiteSpace=wrap;html=1;background=#FFF2CC;fillColor=#FFF2CC;borderColor=#D6B656;strokeColor=#D6B656;align=center;verticalAlign=middle;" vertex="1" parent="1">
          <mxGeometry x="620" y="300" width="140" height="50" as="geometry" />
        </mxCell>
        <mxCell id="note_session" value="{client-side only}&lt;br&gt;{server-side control required}" style="shape=note;whiteSpace=wrap;html=1;background=#FFF2CC;fillColor=#FFF2CC;borderColor=#D6B656;strokeColor=#D6B656;align=center;verticalAlign=middle;" vertex="1" parent="1">
          <mxGeometry x="900" y="250" width="170" height="60" as="geometry" />
        </mxCell>

        <!-- Connections -->
        <mxCell id="edge_ui_user" edge="1" parent="1" source="portal-ui" target="user" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=none;">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="edge_ui_result" edge="1" parent="1" source="portal-ui" target="result" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=none;">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="edge_ui_session" edge="1" parent="1" source="portal-ui" target="session" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=none;">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="edge_result_course" edge="1" parent="1" source="result" target="course" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=none;">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>

        <!-- Note Connections -->
        <mxCell id="edge_note_portal" edge="1" parent="1" source="note_portal" target="portal-ui" style="edgeStyle=orthogonalEdgeStyle;rounded=0;dashed=1;html=1;endArrow=none;">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="edge_note_user" edge="1" parent="1" source="note_user" target="user" style="edgeStyle=orthogonalEdgeStyle;rounded=0;dashed=1;html=1;endArrow=none;">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="edge_note_result" edge="1" parent="1" source="note_result" target="result" style="edgeStyle=orthogonalEdgeStyle;rounded=0;dashed=1;html=1;endArrow=none;">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="edge_note_session" edge="1" parent="1" source="note_session" target="session" style="edgeStyle=orthogonalEdgeStyle;rounded=0;dashed=1;html=1;endArrow=none;">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>

      </root>
    </mxGraphModel>
  </diagram>
</mxfile>