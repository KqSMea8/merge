.class public Lc8/Uqb;
.super Ljava/lang/Object;
.source "WXWindVaneModule.java"

# interfaces
.implements Lc8/pH;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Vqb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WXWVEventListener"
.end annotation


# instance fields
.field private mWXSDKInstance:Lc8/nVf;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Uqb;->mWXSDKInstance:Lc8/nVf;

    .line 201
    return-void
.end method

.method public varargs onEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;
    .locals 7
    .param p1, "i"    # I
    .param p2, "wvEventContext"    # Landroid/taobao/windvane/service/WVEventContext;
    .param p3, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 175
    const/16 v5, 0xbc5

    if-ne p1, v5, :cond_0

    .line 177
    if-eqz p3, :cond_0

    :try_start_0
    iget-object v5, p0, Lc8/Uqb;->mWXSDKInstance:Lc8/nVf;

    if-eqz v5, :cond_0

    .line 178
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 179
    .local v3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    array-length v5, p3

    const/4 v6, 0x3

    if-lt v5, v6, :cond_1

    .line 180
    const/4 v5, 0x2

    aget-object v5, p3, v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "parameters":Ljava/lang/String;
    invoke-static {v4}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 182
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 183
    .local v2, "keySets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 184
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keySets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "parameters":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 192
    :cond_0
    :goto_1
    const/4 v5, 0x0

    return-object v5

    .line 187
    .restart local v3    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    iget-object v6, p0, Lc8/Uqb;->mWXSDKInstance:Lc8/nVf;

    const/4 v5, 0x1

    aget-object v5, p3, v5

    if-nez v5, :cond_2

    const-string/jumbo v5, ""

    :goto_2
    invoke-virtual {v6, v5, v3}, Lc8/nVf;->fireGlobalEventCallback(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    aget-object v5, p3, v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_2
.end method

.method public setWXSDKInstance(Lc8/nVf;)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;

    .prologue
    .line 196
    iput-object p1, p0, Lc8/Uqb;->mWXSDKInstance:Lc8/nVf;

    .line 197
    return-void
.end method
