<#if entries?has_content>
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">

  <div class="carousel-inner">
  	<#assign imageMimeTypes = propsUtil.getArray("dl.file.entry.preview.image.mime.types") />
  	<#assign count = 0>
  	<#list entries as entry>
		<#if imageMimeTypes?seq_contains(entry.getMimeType())>
		    <div class="carousel-item
		    <#if count==0>
		       active
		      </#if>">
		      <img class="d-block w-100" src="${dlUtil.getPreviewURL(entry, entry.getFileVersion(), themeDisplay, "")}" alt="${entry.getDescription()}">
		      <div class="carousel-caption d-none d-md-block" style="background-color: rgba(0,0,0,.5);">
		        <h5>${entry.getDescription()}</h5>
		      </div>
		    </div>
		    <#assign count = count + 1>
		</#if>
	</#list>
    
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<script type="text/javascript">
$('.carousel').carousel()
</script>
<style>
 .carousel-caption {
    right: 0 !important;
    bottom: 0 !important;
    left: 0 !important;
 }
</style>
</#if>
