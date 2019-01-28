.class public Lc8/Sub;
.super Ljava/lang/Object;
.source "PrefetchManager.java"

# interfaces
.implements Lc8/CVf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/bvb;->doPrefetch(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/bvb;

.field final synthetic val$entry:Lc8/Wub;

.field final synthetic val$extendArgs:Ljava/lang/String;

.field final synthetic val$request:Lc8/QXf;


# direct methods
.method constructor <init>(Lc8/bvb;Lc8/QXf;Lc8/Wub;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/bvb;

    .prologue
    .line 318
    iput-object p1, p0, Lc8/Sub;->this$0:Lc8/bvb;

    iput-object p2, p0, Lc8/Sub;->val$request:Lc8/QXf;

    iput-object p3, p0, Lc8/Sub;->val$entry:Lc8/Wub;

    iput-object p4, p0, Lc8/Sub;->val$extendArgs:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeadersReceived(ILjava/util/Map;)V
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 342
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lc8/Sub;->val$entry:Lc8/Wub;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lc8/Wub;->lastModified:J

    .line 343
    iget-object v0, p0, Lc8/Sub;->val$entry:Lc8/Wub;

    invoke-static {p2}, Lc8/bvb;->access$400(Ljava/util/Map;)J

    move-result-wide v2

    iput-wide v2, v0, Lc8/Wub;->maxAge:J

    .line 345
    return-void
.end method

.method public onHttpFinish(Lc8/SXf;)V
    .locals 5
    .param p1, "wxResponse"    # Lc8/SXf;

    .prologue
    .line 321
    const-string/jumbo v0, "WXPrefetchModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "status code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lc8/SXf;->statusCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/Sub;->val$request:Lc8/QXf;

    iget-object v2, v2, Lc8/QXf;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string/jumbo v0, "200"

    iget-object v1, p1, Lc8/SXf;->statusCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "304"

    iget-object v1, p1, Lc8/SXf;->statusCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    :cond_0
    invoke-static {}, Lc8/bvb;->access$200()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lc8/Sub;->val$entry:Lc8/Wub;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v0, p0, Lc8/Sub;->this$0:Lc8/bvb;

    invoke-static {v0}, Lc8/bvb;->access$300(Lc8/bvb;)Lc8/Zub;

    move-result-object v0

    iget-object v1, p0, Lc8/Sub;->val$request:Lc8/QXf;

    iget-object v1, v1, Lc8/QXf;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/Zub;->onSuccess(Ljava/lang/String;)V

    .line 325
    const-string/jumbo v0, "Aliweex_JSPrefetch"

    const-string/jumbo v1, "task_success"

    iget-object v2, p0, Lc8/Sub;->val$extendArgs:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lc8/uVb;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v0, p0, Lc8/Sub;->this$0:Lc8/bvb;

    invoke-static {v0}, Lc8/bvb;->access$300(Lc8/bvb;)Lc8/Zub;

    move-result-object v1

    iget-object v0, p0, Lc8/Sub;->val$request:Lc8/QXf;

    iget-object v2, v0, Lc8/QXf;->url:Ljava/lang/String;

    iget-object v0, p1, Lc8/SXf;->statusCode:Ljava/lang/String;

    .line 329
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "network_failed"

    .line 328
    :goto_1
    invoke-virtual {v1, v2, v0}, Lc8/Zub;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string/jumbo v0, "Aliweex_JSPrefetch"

    const-string/jumbo v1, "task_success"

    iget-object v2, p0, Lc8/Sub;->val$extendArgs:Ljava/lang/String;

    const-string/jumbo v3, "-4"

    const-string/jumbo v4, "network_failed"

    invoke-static {v0, v1, v2, v3, v4}, Lc8/uVb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_2
    iget-object v0, p1, Lc8/SXf;->statusCode:Ljava/lang/String;

    goto :goto_1
.end method

.method public onHttpResponseProgress(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 353
    return-void
.end method

.method public onHttpStart()V
    .locals 0

    .prologue
    .line 337
    return-void
.end method

.method public onHttpUploadProgress(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 349
    return-void
.end method
