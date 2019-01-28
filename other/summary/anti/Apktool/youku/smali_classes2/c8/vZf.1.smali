.class public Lc8/vZf;
.super Lc8/sZf;
.source "UpdateStyleAction.java"

# interfaces
.implements Lc8/fYf;
.implements Lc8/rYf;


# instance fields
.field private mBorder:Lc8/IZf;

.field private final mData:Lcom/alibaba/fastjson/JSONObject;

.field private final mIsCausedByPesudo:Z

.field private mPadding:Lc8/IZf;

.field private final mRef:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/vZf;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Z)V

    .line 52
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Z)V
    .locals 0
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "byPesudo"    # Z

    .prologue
    .line 54
    invoke-direct {p0}, Lc8/sZf;-><init>()V

    .line 55
    iput-object p1, p0, Lc8/vZf;->mRef:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lc8/vZf;->mData:Lcom/alibaba/fastjson/JSONObject;

    .line 57
    iput-boolean p3, p0, Lc8/vZf;->mIsCausedByPesudo:Z

    .line 58
    return-void
.end method


# virtual methods
.method public executeDom(Lc8/gYf;)V
    .locals 6
    .param p1, "context"    # Lc8/gYf;

    .prologue
    .line 62
    invoke-interface {p1}, Lc8/gYf;->isDestory()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lc8/vZf;->mData:Lcom/alibaba/fastjson/JSONObject;

    if-nez v3, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-interface {p1}, Lc8/gYf;->getInstance()Lc8/nVf;

    move-result-object v2

    .line 66
    .local v2, "instance":Lc8/nVf;
    iget-object v3, p0, Lc8/vZf;->mRef:Ljava/lang/String;

    invoke-interface {p1, v3}, Lc8/gYf;->getDomByRef(Ljava/lang/String;)Lc8/HYf;

    move-result-object v1

    .line 67
    .local v1, "domObject":Lc8/HYf;
    if-nez v1, :cond_2

    .line 68
    if-eqz v2, :cond_0

    .line 69
    const-string/jumbo v3, "domModule"

    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_UPDATESTYLE:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v2, v3, v4}, Lc8/nVf;->commitUTStab(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;)V

    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v1}, Lc8/HYf;->getPadding()Lc8/IZf;

    move-result-object v3

    iput-object v3, p0, Lc8/vZf;->mPadding:Lc8/IZf;

    .line 74
    invoke-virtual {v1}, Lc8/HYf;->getBorder()Lc8/IZf;

    move-result-object v3

    iput-object v3, p0, Lc8/vZf;->mBorder:Lc8/IZf;

    .line 76
    iget-object v3, p0, Lc8/vZf;->mData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v4, "transform"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lc8/vZf;->mData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v4, "transformOrigin"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 77
    :cond_3
    invoke-virtual {v1}, Lc8/HYf;->getTransition()Lc8/QZf;

    move-result-object v3

    if-nez v3, :cond_4

    .line 78
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    .line 79
    .local v0, "animationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "transform"

    iget-object v4, p0, Lc8/vZf;->mData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v5, "transform"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string/jumbo v3, "transformOrigin"

    iget-object v4, p0, Lc8/vZf;->mData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v5, "transformOrigin"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v3, p0, Lc8/vZf;->mRef:Ljava/lang/String;

    invoke-interface {p1, v3, v0}, Lc8/gYf;->addAnimationForElement(Ljava/lang/String;Ljava/util/Map;)V

    .line 86
    .end local v0    # "animationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    iget-object v3, p0, Lc8/vZf;->mData:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 87
    iget-object v3, p0, Lc8/vZf;->mData:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v1, v3}, Lc8/HYf;->updateStyle(Ljava/util/Map;)V

    .line 88
    iget-object v3, p0, Lc8/vZf;->mData:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v1, v3}, Lc8/HYf;->applyStyle(Ljava/util/Map;)V

    .line 89
    iget-object v3, p0, Lc8/vZf;->mData:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 90
    invoke-interface {p1, p0}, Lc8/gYf;->postRenderTask(Lc8/rYf;)V

    .line 94
    :cond_5
    if-eqz v2, :cond_0

    .line 95
    const-string/jumbo v3, "domModule"

    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_SUCCESS:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v2, v3, v4}, Lc8/nVf;->commitUTStab(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;)V

    goto/16 :goto_0
.end method

.method public executeRender(Lc8/sYf;)V
    .locals 5
    .param p1, "context"    # Lc8/sYf;

    .prologue
    .line 101
    iget-object v3, p0, Lc8/vZf;->mRef:Ljava/lang/String;

    invoke-interface {p1, v3}, Lc8/sYf;->getComponent(Ljava/lang/String;)Lc8/tbg;

    move-result-object v1

    .line 102
    .local v1, "component":Lc8/tbg;
    if-nez v1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v3, p0, Lc8/vZf;->mData:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v1, v3}, Lc8/tbg;->updateProperties(Ljava/util/Map;)V

    .line 107
    iget-object v3, p0, Lc8/vZf;->mData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v4, "padding"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lc8/vZf;->mData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v4, "paddingTop"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lc8/vZf;->mData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v4, "paddingLeft"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lc8/vZf;->mData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v4, "paddingRight"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lc8/vZf;->mData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v4, "paddingBottom"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lc8/vZf;->mData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v4, "borderWidth"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    :cond_2
    iget-object v2, p0, Lc8/vZf;->mPadding:Lc8/IZf;

    .line 114
    .local v2, "padding":Lc8/IZf;
    iget-object v0, p0, Lc8/vZf;->mBorder:Lc8/IZf;

    .line 115
    .local v0, "border":Lc8/IZf;
    invoke-virtual {v1, v2, v0}, Lc8/tbg;->setPadding(Lc8/IZf;Lc8/IZf;)V

    goto :goto_0
.end method
