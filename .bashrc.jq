function jqdbg {
  jq -R '. as $raw | try fromjson catch $raw'
}

function strip_log_with_errors {
  awk -F'{' '{ st = index($0,"{"); print "{"substr($0,st+1)}' $1 | jq -R '. as $raw | try fromjson catch $raw'
}
function strip_log {
  awk -F'{' '{ st = index($0,"{"); print "{"substr($0,st+1)}' $1 | jq -R 'fromjson?'
}
