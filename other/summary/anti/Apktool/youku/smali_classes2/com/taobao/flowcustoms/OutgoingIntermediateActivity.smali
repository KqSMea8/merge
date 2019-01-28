.class public Lcom/taobao/flowcustoms/OutgoingIntermediateActivity;
.super Landroid/app/Activity;
.source "OutgoingIntermediateActivity.java"


# static fields
.field public static final ORIGINAL_INTENT:Ljava/lang/String; = "OriginalIntent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private sendUserTrack(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 47
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 48
    .local v2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v3, Lc8/unf;->instance:Lc8/unf;

    iget-object v0, v3, Lc8/unf;->appKey:Ljava/lang/String;

    .line 49
    .local v0, "currentAppKey":Ljava/lang/String;
    const-string/jumbo v3, "currentAppKey"

    if-eqz v0, :cond_0

    .end local v0    # "currentAppKey":Ljava/lang/String;
    :goto_0
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 52
    .local v1, "data":Landroid/net/Uri;
    const-string/jumbo v4, "targetUrl"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string/jumbo v3, "mgr_std_ptl"

    invoke-static {v3, v2}, Lc8/npf;->sendCustomHit(Ljava/lang/String;Ljava/util/Map;)V

    .line 55
    return-void

    .line 49
    .end local v1    # "data":Landroid/net/Uri;
    .restart local v0    # "currentAppKey":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "unknown"

    goto :goto_0

    .line 52
    .end local v0    # "currentAppKey":Ljava/lang/String;
    .restart local v1    # "data":Landroid/net/Uri;
    :cond_1
    const-string/jumbo v3, "unknown"

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/taobao/flowcustoms/OutgoingIntermediateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "OriginalIntent"

    invoke-virtual {p0}, Lcom/taobao/flowcustoms/OutgoingIntermediateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0}, Lcom/taobao/flowcustoms/OutgoingIntermediateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "OriginalIntent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 34
    .local v0, "originalIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 35
    invoke-direct {p0, v0}, Lcom/taobao/flowcustoms/OutgoingIntermediateActivity;->sendUserTrack(Landroid/content/Intent;)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/taobao/flowcustoms/OutgoingIntermediateActivity;->startActivity(Landroid/content/Intent;)V

    .line 38
    invoke-virtual {p0}, Lcom/taobao/flowcustoms/OutgoingIntermediateActivity;->finish()V

    .line 40
    :cond_0
    return-void
.end method
