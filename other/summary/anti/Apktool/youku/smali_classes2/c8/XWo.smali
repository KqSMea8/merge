.class public Lc8/XWo;
.super Ljava/lang/Object;
.source "RichText.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/YWo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextViewOnTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/YWo;


# direct methods
.method private constructor <init>(Lc8/YWo;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lc8/XWo;->this$0:Lc8/YWo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/YWo;Lc8/WWo;)V
    .locals 0
    .param p1, "x0"    # Lc8/YWo;
    .param p2, "x1"    # Lc8/WWo;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lc8/XWo;-><init>(Lc8/YWo;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 22
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 64
    const/4 v13, 0x0

    .line 65
    .local v13, "ret":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/XWo;->this$0:Lc8/YWo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lc8/YWo;->getDomObject()Lc8/qYf;

    move-result-object v14

    check-cast v14, Lc8/eXo;

    .line 66
    .local v14, "richTextDom":Lc8/eXo;
    invoke-virtual {v14}, Lc8/eXo;->getTextSpanned()Landroid/text/Spanned;

    move-result-object v18

    if-eqz v18, :cond_0

    invoke-virtual {v14}, Lc8/eXo;->getLayout()Landroid/text/Layout;

    move-result-object v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/XWo;->this$0:Lc8/YWo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lc8/YWo;->getHostView()Landroid/view/View;

    move-result-object v18

    if-nez v18, :cond_1

    .line 67
    :cond_0
    const/16 v18, 0x0

    .line 110
    :goto_0
    return v18

    .line 69
    :cond_1
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v18

    invoke-virtual {v14}, Lc8/eXo;->getTextSpanned()Landroid/text/Spanned;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v15

    .line 70
    .local v15, "stext":Landroid/text/Spannable;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 72
    .local v4, "action":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v4, v0, :cond_2

    if-nez v4, :cond_5

    .line 74
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 75
    .local v16, "x":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 77
    .local v17, "y":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/XWo;->this$0:Lc8/YWo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lc8/YWo;->getHostView()Landroid/view/View;

    move-result-object v18

    check-cast v18, Lc8/gXo;

    invoke-virtual/range {v18 .. v18}, Lc8/gXo;->getPaddingLeft()I

    move-result v18

    sub-int v16, v16, v18

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/XWo;->this$0:Lc8/YWo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lc8/YWo;->getHostView()Landroid/view/View;

    move-result-object v18

    check-cast v18, Lc8/gXo;

    invoke-virtual/range {v18 .. v18}, Lc8/gXo;->getPaddingTop()I

    move-result v18

    sub-int v17, v17, v18

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/XWo;->this$0:Lc8/YWo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lc8/YWo;->getHostView()Landroid/view/View;

    move-result-object v18

    check-cast v18, Lc8/gXo;

    invoke-virtual/range {v18 .. v18}, Lc8/gXo;->getScrollX()I

    move-result v18

    add-int v16, v16, v18

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/XWo;->this$0:Lc8/YWo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lc8/YWo;->getHostView()Landroid/view/View;

    move-result-object v18

    check-cast v18, Lc8/gXo;

    invoke-virtual/range {v18 .. v18}, Lc8/gXo;->getScrollY()I

    move-result v18

    add-int v17, v17, v18

    .line 83
    invoke-virtual {v14}, Lc8/eXo;->getLayout()Landroid/text/Layout;

    move-result-object v9

    .line 84
    .local v9, "layout":Landroid/text/Layout;
    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v10

    .line 85
    .local v10, "line":I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v9, v10, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v12

    .line 87
    .local v12, "off":I
    const-class v18, Landroid/text/style/URLSpan;

    move-object/from16 v0, v18

    invoke-interface {v15, v12, v12, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/style/URLSpan;

    .line 88
    .local v11, "link":[Landroid/text/style/URLSpan;
    array-length v0, v11

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 89
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_4

    .line 90
    new-instance v5, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 91
    .local v5, "array":Lcom/alibaba/fastjson/JSONArray;
    const/16 v18, 0x0

    aget-object v18, v11, v18

    invoke-virtual/range {v18 .. v18}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lc8/pVf;->getWXBridgeManager()Lc8/ZWf;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/XWo;->this$0:Lc8/YWo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lc8/YWo;->getInstanceId()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "event"

    const-string/jumbo v21, "openURL"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v5}, Lc8/ZWf;->callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    .line 93
    const/16 v18, 0x0

    aget-object v18, v11, v18

    invoke-virtual/range {v18 .. v18}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, "href":Ljava/lang/String;
    const-string/jumbo v8, ""

    .line 95
    .local v8, "id":Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v18, v11, v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/youku/weex/component/richtext/HtmlToSpannedConverter$MyURLSpan;

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 96
    const/16 v18, 0x0

    aget-object v18, v11, v18

    check-cast v18, Lcom/youku/weex/component/richtext/HtmlToSpannedConverter$MyURLSpan;

    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/youku/weex/component/richtext/HtmlToSpannedConverter$MyURLSpan;->mId:Ljava/lang/String;

    .line 98
    :cond_3
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v6, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v18, "href"

    move-object/from16 v0, v18

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string/jumbo v18, "id"

    move-object/from16 v0, v18

    invoke-interface {v6, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/XWo;->this$0:Lc8/YWo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lc8/YWo;->getDomObject()Lc8/qYf;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v18

    const-string/jumbo v19, "linkclick"

    invoke-virtual/range {v18 .. v19}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/XWo;->this$0:Lc8/YWo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lc8/YWo;->getInstance()Lc8/nVf;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/XWo;->this$0:Lc8/YWo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lc8/YWo;->getRef()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "linkclick"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2, v6}, Lc8/nVf;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 107
    .end local v5    # "array":Lcom/alibaba/fastjson/JSONArray;
    .end local v6    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "href":Ljava/lang/String;
    .end local v8    # "id":Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v13, 0x1

    .end local v9    # "layout":Landroid/text/Layout;
    .end local v10    # "line":I
    .end local v11    # "link":[Landroid/text/style/URLSpan;
    .end local v12    # "off":I
    .end local v16    # "x":I
    .end local v17    # "y":I
    :cond_5
    move/from16 v18, v13

    .line 110
    goto/16 :goto_0

    .line 103
    .restart local v5    # "array":Lcom/alibaba/fastjson/JSONArray;
    .restart local v6    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v7    # "href":Ljava/lang/String;
    .restart local v8    # "id":Ljava/lang/String;
    .restart local v9    # "layout":Landroid/text/Layout;
    .restart local v10    # "line":I
    .restart local v11    # "link":[Landroid/text/style/URLSpan;
    .restart local v12    # "off":I
    .restart local v16    # "x":I
    .restart local v17    # "y":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/XWo;->this$0:Lc8/YWo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lc8/YWo;->getDomObject()Lc8/qYf;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v18

    const-string/jumbo v19, "linkClick"

    invoke-virtual/range {v18 .. v19}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/XWo;->this$0:Lc8/YWo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lc8/YWo;->getInstance()Lc8/nVf;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/XWo;->this$0:Lc8/YWo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lc8/YWo;->getRef()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "linkClick"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2, v6}, Lc8/nVf;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method
