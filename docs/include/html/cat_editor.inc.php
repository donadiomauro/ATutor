<?php
/****************************************************************/
/* ATutor														*/
/****************************************************************/
/* Copyright (c) 2002-2003 by Greg Gay & Joel Kronenberg        */
/* Adaptive Technology Resource Centre / University of Toronto  */
/* http://atutor.ca												*/
/*                                                              */
/* This program is free software. You can redistribute it and/or*/
/* modify it under the terms of the GNU General Public License  */
/* as published by the Free Software Foundation.				*/
/****************************************************************/
if (!defined('AT_INCLUDE_PATH')) { exit; }
if ($_SESSION['course_id'] > -1) { exit; }

if (isset($_POST['delete'], $cat_id)) {
	if (is_array($categories[$cat_id]['children'])) {
		$errors[] = AT_ERROR_CAT_HAS_SUBS;
		print_errors($errors);
		return;
	}

	$warnings[] = array(AT_WARNING_DELETE_CAT_CATEGORY , stripslashes(htmlspecialchars($categories[$cat_id]['cat_name'])));

	print_warnings($warnings);

	echo '<p align="center"><a href="'.$_SERVER['PHP_SELF'].'?d=1'.SEP.'cat_id='.$cat_id.'">'._AT('yes_delete').'</a>, <a href="">'._AT('no_cancel').'</a></p>';

	return;
}
if (isset($cat_id)) {
	echo '<p><a href="'.$_SERVER['PHP_SELF'].'?pcat_id='.$cat_id.'">'._AT('cats_add_subcategory').'</a></p>';
}
?>
<form action ="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST" name="form">
<input type="hidden" name="cat_id" value="<?php echo $cat_id; ?>" />
<input type="hidden" name="form_submit" value="1" />
<table cellspacing="1" cellpadding="0" border="0" class="bodyline" summary="" align="center">
<tr>
	<th colspan="2"><?php 
		if (isset($cat_id)) {
			echo _AT('cats_edit_categories'); 
		} else {
			echo _AT('cats_add_categories'); 
		}?></th>
</tr>
<tr>
	<td height="1" class="row2" colspan="2"></td>
</tr>
<tr>
	<td class="row1"><label for="category_name"><?php echo _AT('cats_category_name'); ?></label>:</td>
	<td class="row1"><input type="text" id="category_name" name="cat_name" value="<?php echo stripslashes(htmlspecialchars($categories[$cat_id]['cat_name'])); ?>" class="formfield" /></td>
</tr>
<tr>
	<td height="1" class="row2" colspan="2"></td>
</tr>
<tr>
	<td class="row1"><label for="category_parent"><?php echo _AT('cats_parent_category'); ?></label>:</td>
	<td class="row1"><select name="cat_parent_id" id="category_parent"><?php

				if ($pcat_id) {
					$current_cat_id = $pcat_id;
					$exclude = false; /* don't exclude the children */
				} else {
					$current_cat_id = $cat_id;
					$exclude = true; /* exclude the children */
				}

				echo '<option value="0">&nbsp;&nbsp;&nbsp;[ '._AT('cats_none').' ]&nbsp;&nbsp;&nbsp;</option>';
				echo '<option value="0"></option>';

				/* @See: include/lib/admin_categories */
				select_categories($categories, 0, $current_cat_id, $exclude);
			?></select><br /><br /></td>
</tr>
<tr>
	<td height="1" class="row2" colspan="2"></td>
</tr>
<tr>
	<td height="1" class="row2" colspan="2"></td>
</tr>
<tr>
	<td class="row1" align="center" colspan="2"><?php
		if (isset($cat_id)) {
			echo '<input type="submit" name="submit" value="  '._AT('edit').'  " class="button" accesskey="s" />&nbsp;&nbsp;&nbsp;';
			echo '<input type="submit" name="delete" value="'._AT('delete').'" class="button" />&nbsp;&nbsp;&nbsp;';
		} else {
			echo '<input type="submit" name="submit" value="'._AT('create').'" class="button" accesskey="s" />&nbsp;&nbsp;&nbsp;';
		}
		?><input type="submit" name="cancel" value="<?php echo _AT('cancel'); ?>" class="button" /></td>
</tr>
</table>
</form>