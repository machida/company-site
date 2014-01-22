var add_tag_field, change_tag_list, remove_tag_field, set_tag_watch;

set_tag_watch = function() {
  return $(document).on("keyup", ".tag_input", function() {
    return change_tag_list();
  });
};

add_tag_field = function(content) {
  return $("#article_tags").append(content);
};

remove_tag_field = function(link) {
  $(link).closest(".tag_list").remove();
  return change_tag_list();
};

change_tag_list = function() {
  var buf;
  buf = [];
  $(".tag_input").each(function() {
    var str;
    str = $(this).val();
    if (str !== "") {
      return buf.push(str);
    }
  });
  return $("#article_tag_list").val(buf.join(","));
};

$(document).ready(function() {
  return set_tag_watch();
});

$(document).on("page:change", function() {
  return set_tag_watch();
});
