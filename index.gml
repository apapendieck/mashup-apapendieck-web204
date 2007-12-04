<gm:page title="Picayune Assets" authenticate="false">

  <!--
    The mashup application demonstrates taking a external RSS feed with
    geo-location information and mapping it on a Google Map. Interaction
    between a list and a map is also demonstrated via the handleEvent tag.
    @author: GME Team
  -->

  <div class="gm-app-header">
    <h3>Pearl River County Assets: All Assets</h3>
    <h3><a href="https://spreadsheets.google.com/ccc?key=p24J_PxaAu_Sb-82YvGs_Uw&hl=en#">View Database</a></h3>
  </div>

  <table width="100%">
    <tr>
      <td style="padding-right:10px; width:250px" valign="top">
        <gm:list id="myList" data="http://spreadsheets.google.com/feeds/list/o17634829598942266075.5998631686442449819/od6/public/values"
            pagesize="10" template="myListTemplate">
          <gm:handleEvent event="select" src="myMap"/>
        </gm:list>
      </td>
      <td valign="top">
        <gm:map id="myMap" style="border:solid black 1px" control="large"
            maptypes="true" data="${myList}" geolocationref="gsx:location"
            infotemplate="myMapDetailsTemplate"
            lat="30.53" lng="-89.68" zoom="8">
          <gm:handleEvent event="select" src="myList"/>
        </gm:map>
      </td>
    </tr>    
  </table>

  <gm:template id="myListTemplate">
    <table class="blue-theme" style="width:250px">
      <tr repeat="true">
        <td><gm:text ref="gsx:name"/></td>
      </tr>
      <tfoot>
        <tr>
          <td align="center"><gm:pager compact="true"/></td>
        </tr>
      </tfoot>
    </table>
  </gm:template>

  <gm:template id="myMapDetailsTemplate">
    <div repeat="true">
      <b><gm:text ref="gsx:name"/></b><br/>
      Asset type: <gm:text ref="gsx:category"/><br/>
      Address: <gm:text ref="gsx:location"/><br/>
      Phone: <gm:text ref="gsx:telephone"/>
    </div>
  </gm:template>

</gm:page>
