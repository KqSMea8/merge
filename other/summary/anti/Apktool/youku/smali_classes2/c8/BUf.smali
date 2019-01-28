.class public final Lc8/BUf;
.super Ljava/lang/Object;
.source "HotPatchOrangeReceiver.java"

# interfaces
.implements Lcom/taobao/orange/OrangeConfigListenerV1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/CUf;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigUpdate(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "fromCache"    # Z

    .prologue
    const/4 v5, 0x1

    .line 29
    if-nez p2, :cond_1

    .line 30
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v3

    const-string/jumbo v4, "android_hotpatch_configcenter"

    invoke-virtual {v3, v4}, Lc8/ctf;->getConfigs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 31
    .local v1, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 32
    const-string/jumbo v3, "clear_patch"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33
    .local v0, "clearPatch":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    invoke-static {}, Lc8/tUf;->getInstance()Lc8/tUf;

    move-result-object v3

    invoke-virtual {v3, v5}, Lc8/tUf;->cleanPatchs(Z)V

    .line 36
    :cond_0
    const-string/jumbo v3, "forbid_patch"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 37
    .local v2, "forbidMode":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 38
    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 39
    invoke-static {}, Lc8/tUf;->getInstance()Lc8/tUf;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lc8/tUf;->setUsedSupport(Z)V

    .line 47
    .end local v0    # "clearPatch":Ljava/lang/String;
    .end local v1    # "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "forbidMode":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 40
    .restart local v0    # "clearPatch":Ljava/lang/String;
    .restart local v1    # "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "forbidMode":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 41
    invoke-static {}, Lc8/tUf;->getInstance()Lc8/tUf;

    move-result-object v3

    invoke-virtual {v3, v5}, Lc8/tUf;->setUsedSupport(Z)V

    goto :goto_0
.end method
