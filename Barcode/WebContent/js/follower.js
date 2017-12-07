/***********************/
/* fireskill@gmail.com */
/* http://blog.bits.kr */
/*          2009/10/16 */
/***********************/

/*
jquery���ш렇�몄�대��濡� jquery瑜� ����濡� �ъ�⑺�댁�� �������� �ㅽ�щ┰�몄������.

pageAlign : center ���� left
pageWidth : 而⑦��痢� 釉����� ��(����媛�)
type      : right ���� left(pageAlign�� 媛��� center濡� ������留� left媛� �ъ�⑷���)
topMargin : ���댁� 理����④낵�� 嫄곕━
minTop    : �ㅽ�щ· ������ 釉��쇱�곗�� ���④낵�� 嫄곕━(topMargin怨� 媛��� 媛��� �ｌ�쇰㈃ 媛��� ���� ��吏�)
margin    : 而⑦��痢� 釉���怨쇱�� 醫� ���� �곗�� 留�吏�(left�쇰���� �ㅻⅨ履� 留�吏�, right�쇰���� �쇱そ 留�吏�)
speed     : �곕�쇰�ㅻ���� ����
easing    : linear ���� swing (easing plugin ���ш렇�몄�� �대�ㅻ㈃ ���ш렇�� �듭��媛��� 紐⑤�� �ъ�⑺�� �� ����)
zindex    : �������ㅻ㈃...
*/
(function($) {
  var $doc = $(document);
  var $win = $(window);
  $.fn.scrollFollower = function (options){
    var options = $.extend({}, $.fn.scrollFollower.defaults, options);
		if (options.pageWidth)
			var pageWidth    = parseInt(options.pageWidth);
		else
		{
			alert('pageWidth�� ���� �듭��媛�������.\npageWidth is a necessary option value\npageWidth �ュ�誤��ゃ�ゃ���룔�㎯�녈���ㅳ�㎯��\npageWidth ��訝�訝ゅ�誤�����窈밧��');
			return false;
		}
    var $layer = $(this);
    var varType      = options.varType;
    var pageAlign    = options.pageAlign;
    var offset       = pageWidth/2;
    var layerPositon = options.type;
    var margin       = parseInt(options.margin);
    var speed        = parseInt(options.speed);
    var easing       = options.easing;
    var topMargin    = parseInt(options.topMargin);
    var minTop       = parseInt(options.minTop);
    var marginResult = offset + margin;
    $layer.css('z-index', options.zindex);
    $layer.css("position","absolute");
    if (layerPositon === 'left')
     varType = 'right';
    function resetXPosition()
    {
      if (pageAlign === 'center')
      {
        var $screenSize = $('body').width();
        var halfScreenSize = $screenSize/2;
        xPosition = halfScreenSize + marginResult;
      }
      else if (pageAlign === 'left')
      {
        varType   = 'left';
        xPosition = pageWidth + margin;
      }
      $layer.css(varType, xPosition);
    }
    resetXPosition();
    $layer.css('top',topMargin);
    $win.resize(resetXPosition);
    $win.scroll(function(){
      $top = $doc.scrollTop();
      if ($top > 300)
        yPosition = $top + minTop;
      else
        yPosition = topMargin;
      $layer.animate({"top":yPosition }, {duration:speed, easing:easing, queue:false});
    });	
  };
  $.fn.scrollFollower.defaults = {
    varType:'left',
    pageAlign:'left',
    type:'left',
    topMargin:0,
    minTop:0,
    margin:0,
    speed:400,
    easing:'linear',
    zindex:10
    };
})( jQuery );