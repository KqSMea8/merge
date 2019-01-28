.class public Lc8/MMg;
.super Ljava/lang/Object;
.source "YKTrackerManager.java"

# interfaces
.implements Lcom/taobao/orange/OrangeConfigListenerV1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/RMg;->getOrangeConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/RMg;


# direct methods
.method constructor <init>(Lc8/RMg;)V
    .locals 0
    .param p1, "this$0"    # Lc8/RMg;

    .prologue
    .line 425
    iput-object p1, p0, Lc8/MMg;->this$0:Lc8/RMg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigUpdate(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "b"    # Z

    .prologue
    .line 429
    const-string/jumbo v4, "YKTrackerManager"

    const-string/jumbo v5, "-------------onConfigUpdate--------------"

    invoke-static {v4, v5}, Lc8/VMg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v4

    const-string/jumbo v5, "ykgodviewtracker_android_switch"

    invoke-virtual {v4, v5}, Lc8/ctf;->getConfigs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 432
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v2}, Lc8/HMg;->parseInitConfig(Ljava/util/Map;)V

    .line 434
    iget-object v4, p0, Lc8/MMg;->this$0:Lc8/RMg;

    invoke-static {v4}, Lc8/RMg;->access$400(Lc8/RMg;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "YKTrackerManager"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 435
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 437
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 438
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 440
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 442
    return-void
.end method
