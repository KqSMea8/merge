.class public Lc8/tZf;
.super Lc8/sZf;
.source "UpdateAttributeAction.java"

# interfaces
.implements Lc8/fYf;
.implements Lc8/rYf;


# instance fields
.field private final mData:Lcom/alibaba/fastjson/JSONObject;

.field private final mRef:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 41
    invoke-direct {p0}, Lc8/sZf;-><init>()V

    .line 42
    iput-object p1, p0, Lc8/tZf;->mRef:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lc8/tZf;->mData:Lcom/alibaba/fastjson/JSONObject;

    .line 44
    return-void
.end method


# virtual methods
.method public executeDom(Lc8/gYf;)V
    .locals 4
    .param p1, "context"    # Lc8/gYf;

    .prologue
    .line 48
    invoke-interface {p1}, Lc8/gYf;->isDestory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-interface {p1}, Lc8/gYf;->getInstance()Lc8/nVf;

    move-result-object v1

    .line 52
    .local v1, "instance":Lc8/nVf;
    iget-object v2, p0, Lc8/tZf;->mRef:Ljava/lang/String;

    invoke-interface {p1, v2}, Lc8/gYf;->getDomByRef(Ljava/lang/String;)Lc8/HYf;

    move-result-object v0

    .line 53
    .local v0, "domObject":Lc8/HYf;
    if-nez v0, :cond_2

    .line 54
    if-eqz v1, :cond_0

    .line 55
    const-string/jumbo v2, "domModule"

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_UPDATEATTRS:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v1, v2, v3}, Lc8/nVf;->commitUTStab(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;)V

    goto :goto_0

    .line 60
    :cond_2
    iget-object v2, p0, Lc8/tZf;->mData:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, v2}, Lc8/HYf;->updateAttr(Ljava/util/Map;)V

    .line 61
    invoke-interface {p1, p0}, Lc8/gYf;->postRenderTask(Lc8/rYf;)V

    .line 63
    if-eqz v1, :cond_0

    .line 64
    const-string/jumbo v2, "domModule"

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_SUCCESS:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v1, v2, v3}, Lc8/nVf;->commitUTStab(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;)V

    goto :goto_0
.end method

.method public executeRender(Lc8/sYf;)V
    .locals 2
    .param p1, "context"    # Lc8/sYf;

    .prologue
    .line 70
    iget-object v1, p0, Lc8/tZf;->mRef:Ljava/lang/String;

    invoke-interface {p1, v1}, Lc8/sYf;->getComponent(Ljava/lang/String;)Lc8/tbg;

    move-result-object v0

    .line 71
    .local v0, "comp":Lc8/tbg;
    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lc8/tZf;->mData:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, v1}, Lc8/tbg;->updateProperties(Ljava/util/Map;)V

    goto :goto_0
.end method
