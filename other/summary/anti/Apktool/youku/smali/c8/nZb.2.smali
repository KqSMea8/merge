.class public Lc8/nZb;
.super Ljava/lang/Object;
.source "FakeIConfigAdapter.java"

# interfaces
.implements Lcom/alibaba/poplayer/norm/IConfigAdapter;


# instance fields
.field public final mAdapter:Lcom/alibaba/poplayer/norm/IConfigAdapter;

.field public mConfig:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/alibaba/poplayer/norm/IConfigAdapter;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "adapter"    # Lcom/alibaba/poplayer/norm/IConfigAdapter;
    .param p2, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lc8/nZb;->mAdapter:Lcom/alibaba/poplayer/norm/IConfigAdapter;

    .line 25
    iput-object p2, p0, Lc8/nZb;->mConfig:Lorg/json/JSONObject;

    .line 26
    return-void
.end method


# virtual methods
.method public addConfigObserver(Landroid/content/Context;Lcom/alibaba/poplayer/PopLayer;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "popLayer"    # Lcom/alibaba/poplayer/PopLayer;

    .prologue
    .line 36
    return-void
.end method

.method public getConfigItemByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lc8/nZb;->mConfig:Lorg/json/JSONObject;

    iget-object v1, p0, Lc8/nZb;->mAdapter:Lcom/alibaba/poplayer/norm/IConfigAdapter;

    invoke-interface {v1, p1, p2}, Lcom/alibaba/poplayer/norm/IConfigAdapter;->getConfigItemByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initializeConfigContainer(Landroid/content/Context;Lcom/alibaba/poplayer/PopLayer;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "popLayer"    # Lcom/alibaba/poplayer/PopLayer;

    .prologue
    .line 31
    return-void
.end method
