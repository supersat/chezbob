# dlg.pl
#
# This file was intended to encapsulate the calls to the dialog program
# but that's too much of a pain.  Contains the location of the custom 
# dialog program we're using (bobdialog).
#
# $Id: dlg.pl,v 1.1 2001-05-18 05:41:44 mcopenha Exp $
#

$DLG = "./bobdialog";
$CANCEL = -1;

sub
confirm_win
{
  my ($win_title,$win_text,$w,$h) = @_;
  $h ||= 7;
  $w ||= 40;

  $retval = system("$DLG --title \"$win_title\" --clear --yesno \"" .
		   $win_text .  "\" $h $w 2> /dev/null");
  return ($retval == 0);
}


1;