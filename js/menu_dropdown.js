(function(a){
    a.fn.menu_dropdown=function(p){
        var p=p||{};

        var g=p&&p.m_t_c?p.m_t_c:"blue";
        var h=p&&p.m_b_s?p.m_b_s:"1";
        var i=p&&p.m_bg_c?p.m_bg_c:"#FFF";
        var j=p&&p.m_w?p.m_w:"100";
        var k=p&&p.m_bg_h_c?p.m_bg_h_c:"red";
        var l=p&&p.m_c_c?p.m_c_c:"red";
        var m=p&&p.m_s?p.m_s:"medium";
        var n=p&&p.s_s?p.s_s:"fast";
        h = h+'px';
        j = j+'px';
        var o=a(this);
        if(o.children("ul").length==0||o.children("ul").children("li").length==0){
            o.append("Require menu content");
            return null
            }
            s_m_b(o.children("ul").children("li"),o.find("li"),h,i,j,l);
        s_m_t_c(o.find("a"),g);
        s_m_s(o,m);
        o.children("ul").children("li").hover(function(){
            if(n=='no-wait'){
                $(this).children("ul").show()
                }else{
                $(this).children("ul").slideDown(n)
                }
            },function(){
            if(n=='no-wait'){
                $(this).children("ul").hide()
                }else{
                $(this).children("ul").slideUp(n)
                }
            });
o.children("ul").children("li").children("ul").children("li").hover(function(){
    $(this).css("background-color",k)
    },function(){
    $(this).css("background-color",i)
    });
function s_m_s(a,b){
    switch(b){
        case'large':
            menu_height='40px';
            sub_menu_height='30px';
            font_size='16px';
            a_padding='10px';
            break;
        case'medium':
            sub_menu_height='25px';
            font_size='13px';
            menu_height='30px';
            a_padding='5px';
            break;
        case'small':
            sub_menu_height='20px';
            font_size='12px';
            menu_height='20px';
            a_padding='2px';
            break;
        default:
            sub_menu_height='25px';
            font_size='13px';
            menu_height='35px';
            a_padding='10px'
            }
            o.children("ul").css("font-size",font_size);
    o.children("ul").children("li").css("height",menu_height);
    o.children("ul").children("li").children("a").css("line-height",menu_height);
    o.children("ul").children("li").children("a").css("padding",a_padding);
    o.children("ul").children("li").children("ul").css("top",menu_height);
    o.children("ul").children("li").children("ul").css("left","0px");
    o.children("ul").children("li").children("ul").children("li").children("a").css("line-height",sub_menu_height)
    }
    function s_m_t_c(a,b){
    a.css("color",b)
    }
    function s_m_b(a,b,c,d,e,f){
    style="background-color:"+d+"; margin-left: "+c+"; width: "+e+";";
    a.attr("style",style);
    a.filter(".current").css("background-color",f);
    style1="background-color:"+d+"; width: "+e+";";
    b.children("ul").attr("style",style1)
    }
}
})(jQuery);

