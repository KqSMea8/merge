.class public Lcom/alibaba/appmonitor/pool/ReuseJSONObject;
.super Lcom/alibaba/fastjson/JSONObject;
.source "ReuseJSONObject.java"

# interfaces
.implements Lc8/xEb;


# static fields
.field private static final serialVersionUID:J = 0x14563300ad25b018L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 3

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/alibaba/appmonitor/pool/ReuseJSONObject;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 22
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Lc8/xEb;

    if-eqz v2, :cond_0

    .line 23
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v2

    check-cast v1, Lc8/xEb;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v2, v1}, Lc8/vEb;->offer(Lc8/xEb;)V

    goto :goto_0

    .line 26
    :cond_1
    invoke-super {p0}, Lcom/alibaba/fastjson/JSONObject;->clear()V

    .line 27
    return-void
.end method

.method public varargs fill([Ljava/lang/Object;)V
    .locals 0
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 31
    return-void
.end method
