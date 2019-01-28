.class public Lc8/Wtf;
.super Ljava/lang/Object;
.source "NetworkInterceptor.java"

# interfaces
.implements Lc8/NN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Xtf;->intercept(Lc8/ON;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Xtf;

.field final synthetic val$chain:Lc8/ON;


# direct methods
.method constructor <init>(Lc8/Xtf;Lc8/ON;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Xtf;

    .prologue
    .line 52
    iput-object p1, p0, Lc8/Wtf;->this$0:Lc8/Xtf;

    iput-object p2, p0, Lc8/Wtf;->val$chain:Lc8/ON;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceiveSize(IILanet/channel/bytes/ByteArray;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "total"    # I
    .param p3, "byteArray"    # Lanet/channel/bytes/ByteArray;

    .prologue
    .line 79
    iget-object v0, p0, Lc8/Wtf;->val$chain:Lc8/ON;

    invoke-interface {v0}, Lc8/ON;->callback()Lc8/NN;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lc8/NN;->onDataReceiveSize(IILanet/channel/bytes/ByteArray;)V

    .line 80
    return-void
.end method

.method public onFinish(Lanetwork/channel/aidl/DefaultFinishEvent;)V
    .locals 1
    .param p1, "event"    # Lanetwork/channel/aidl/DefaultFinishEvent;

    .prologue
    .line 84
    iget-object v0, p0, Lc8/Wtf;->val$chain:Lc8/ON;

    invoke-interface {v0}, Lc8/ON;->callback()Lc8/NN;

    move-result-object v0

    invoke-interface {v0, p1}, Lc8/NN;->onFinish(Lanetwork/channel/aidl/DefaultFinishEvent;)V

    .line 85
    return-void
.end method

.method public onResponseCode(ILjava/util/Map;)V
    .locals 3
    .param p1, "responseCode"    # I
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
    .line 55
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p2, :cond_0

    const-string/jumbo v0, "a-orange-p"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Lc8/Vtf;

    invoke-direct {v0, p0, p2}, Lc8/Vtf;-><init>(Lc8/Wtf;Ljava/util/Map;)V

    invoke-static {v0}, Lc8/btf;->execute(Ljava/lang/Runnable;)V

    .line 71
    :cond_0
    if-nez p2, :cond_1

    .line 72
    const-string/jumbo v0, "NetworkInterceptor"

    const-string/jumbo v1, "onResponseCode headers null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    :cond_1
    iget-object v0, p0, Lc8/Wtf;->val$chain:Lc8/ON;

    invoke-interface {v0}, Lc8/ON;->callback()Lc8/NN;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lc8/NN;->onResponseCode(ILjava/util/Map;)V

    .line 75
    return-void
.end method
