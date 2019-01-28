.class public Lc8/gvb;
.super Ljava/lang/Object;
.source "WXPrefetchModule.java"

# interfaces
.implements Lc8/Vub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jvb;->createPrefetchManagerIfNeeded()Lc8/bvb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jvb;


# direct methods
.method constructor <init>(Lc8/jvb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/jvb;

    .prologue
    .line 106
    iput-object p1, p0, Lc8/gvb;->this$0:Lc8/jvb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "errorMsg"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 121
    iget-object v1, p0, Lc8/gvb;->this$0:Lc8/jvb;

    iget-object v1, v1, Lc8/jvb;->mWXSDKInstance:Lc8/nVf;

    const-string/jumbo v2, "error"

    iget-object v3, p0, Lc8/gvb;->this$0:Lc8/jvb;

    invoke-virtual {v1, v2, v3}, Lc8/nVf;->checkModuleEventRegistered(Ljava/lang/String;Lc8/MXf;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 123
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "url"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string/jumbo v1, "msg"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v1, p0, Lc8/gvb;->this$0:Lc8/jvb;

    iget-object v1, v1, Lc8/jvb;->mWXSDKInstance:Lc8/nVf;

    const-string/jumbo v2, "error"

    iget-object v3, p0, Lc8/gvb;->this$0:Lc8/jvb;

    invoke-virtual {v1, v2, v3, v0}, Lc8/nVf;->fireModuleEvent(Ljava/lang/String;Lc8/MXf;Ljava/util/Map;)V

    .line 126
    const-string/jumbo v1, "WXPrefetchModule"

    const-string/jumbo v2, "send error event success."

    invoke-static {v1, v2}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 128
    :cond_0
    const-string/jumbo v1, "WXPrefetchModule"

    const-string/jumbo v2, "no listener found. drop the error event."

    invoke-static {v1, v2}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 109
    iget-object v1, p0, Lc8/gvb;->this$0:Lc8/jvb;

    iget-object v1, v1, Lc8/jvb;->mWXSDKInstance:Lc8/nVf;

    const-string/jumbo v2, "load"

    iget-object v3, p0, Lc8/gvb;->this$0:Lc8/jvb;

    invoke-virtual {v1, v2, v3}, Lc8/nVf;->checkModuleEventRegistered(Ljava/lang/String;Lc8/MXf;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 111
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "url"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v1, p0, Lc8/gvb;->this$0:Lc8/jvb;

    iget-object v1, v1, Lc8/jvb;->mWXSDKInstance:Lc8/nVf;

    const-string/jumbo v2, "load"

    iget-object v3, p0, Lc8/gvb;->this$0:Lc8/jvb;

    invoke-virtual {v1, v2, v3, v0}, Lc8/nVf;->fireModuleEvent(Ljava/lang/String;Lc8/MXf;Ljava/util/Map;)V

    .line 113
    const-string/jumbo v1, "WXPrefetchModule"

    const-string/jumbo v2, "send load event success."

    invoke-static {v1, v2}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 115
    :cond_0
    const-string/jumbo v1, "WXPrefetchModule"

    const-string/jumbo v2, "no listener found. drop the load event."

    invoke-static {v1, v2}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
