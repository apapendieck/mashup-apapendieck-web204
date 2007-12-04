<gm:page title="Picayune Assets" authenticate="false">

  <!--
    The mashup application demonstrates taking an external RSS feed from a google spreadsheet with
    and maps it to a Google Map using a "location" field and the "geolocationref" operator.
    @author: apapendieck@gmail.com
  -->

  <div class="gm-app-header">
    <h3>Pearl River County Assets: All Assets</h3> <h4><a href="http://spreadsheets.google.com/pub?key=p24J_PxaAu_Sb-82YvGs_Uw">View Database</a></h4>
  </div>

  
  <gm:tabs target="myContainer"/>

  <gm:container id="myContainer" style="width:600px">
      
    <gm:section id="section1" title="Static text">
      Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nulla
      dictum porta lorem. In eu elit quis lorem laoreet venenatis. Aenean
      ullamcorper. Duis risus ante, varius id, posuere posuere, ultricies
      vitae, pede. In id felis. Mauris ligula. Sed tempus tortor a mauris.
      Nam non eros. Suspendisse massa tellus, feugiat vel, suscipit vitae,
      venenatis quis, ante. Fusce sit amet turpis. Nam a ligula nec magna
      facilisis varius. Donec faucibus lobortis neque. Morbi tellus neque,
      consequat a, interdum eu, bibendum vel, est.
    </gm:section>

  
  <table width="100%">
    <tr>
      <td style="padding-right:10px; width:250px" valign="top">
        <gm:list id="myList" data="http://spreadsheets.google.com/feeds/list/o17634829598942266075.5998631686442449819/od6/public/values?sq=category%3D${categorylist}"
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
<iframe width='100%' height='500' frameborder='0' src='http://spreadsheets.google.com/pub?key=p24J_PxaAu_Sb-82YvGs_Uw&output=html&gid=0&single=true&widget=true'></iframe>
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

  
  
    <gm:section id="section2" title="RSS Feed">
      <gm:list id="myList" data="http://www.digg.com/rss/index.xml"
          pagesize="10"/>
    </gm:section>
    
  </gm:container>
  
</gm:page>
