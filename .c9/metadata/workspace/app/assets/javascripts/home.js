{"filter":false,"title":"home.js","tooltip":"/app/assets/javascripts/home.js","undoManager":{"mark":1,"position":1,"stack":[[{"start":{"row":3,"column":0},"end":{"row":35,"column":9},"action":"remove","lines":["$(document).ready(function(){","        ","        $(\"#contactsModal\").on(\"hidden.bs.modal\", function () {","          console.log('contacts modal is hidden')","          var node = $(\".modal-body #tableBody\")[0]; //TODO add check","          while (node.hasChildNodes()) {","            node.removeChild(node.lastChild);","          }","        });","        ","        $('#contactsModal').on('show.bs.modal', function(e) {","          console.log('contact entry clicked');","          console.log(e)","          console.log(e.isPropagationStopped());","          e.stopPropagation()","          var id = $(e.relatedTarget).data('id');","          var table_body = $(\".modal-body #tableBody\");","          var target = undefined","          ","          for (var i = 0; i < contacts.length; i++){","            if (contacts[i].contact_id == id){","              target = contacts[i]","            }","          }","          ","          for (var k in target){","            if (target.hasOwnProperty(k)) {","             table_body.append('<tr align=\"center\"><td>' + k + '</td>' +'<td>'+ target[k] +'</td>'+'</tr>')","            }","          }","        });","        ","      });"],"id":2}],[{"start":{"row":2,"column":0},"end":{"row":3,"column":0},"action":"remove","lines":["",""],"id":3}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":2,"column":0},"end":{"row":2,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1510102221792,"hash":"24e3f15c5bb60e2eeaea26c964b1c52fa9dcba44"}