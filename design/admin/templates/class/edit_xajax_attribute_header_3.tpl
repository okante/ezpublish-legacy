{default hasXajaxAccess=true()}

<div class="listbutton">
  <input id="moveDown_{$attribute.id}" type="image" src={'button-move_down.gif'|ezimage} alt="{'Down'|i18n( 'design/admin/class/edit' )}" name="MoveDown_{$attribute.id}" title="{'Use the order buttons to set the order of the class attributes. The up arrow moves the attribute one place up. The down arrow moves the attribute one place down.'|i18n( 'design/admin/class/edit' )}" {if $hasXajaxAccess}onclick="javascript:var result=xajax_moveClassAttribute( {$attribute.id}, 1 );return !result;"{/if} />&nbsp;
  <input id="moveUp_{$attribute.id}" type="image" src={'button-move_up.gif'|ezimage} alt="{'Up'|i18n( 'design/admin/class/edit' )}" name="MoveUp_{$attribute.id}" title="{'Use the order buttons to set the order of the class attributes. The up arrow moves the attribute one place up. The down arrow moves the attribute one place down.'|i18n( 'design/admin/class/edit' )}" {if $hasXajaxAccess}onclick="javascript:var result=xajax_moveClassAttribute( {$attribute.id}, 0 );return !result;"{/if} />
  <input style="display:none;" id="attrPriority_{$attribute.id}" size="2" name="ContentAttribute_priority[]" value="{$number}" type="box" />
</div>

{/default}
