.class public Lc8/olq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Nlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Plq;->subscribe(Lc8/hnq;)Lc8/Pmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field done:Z

.field final synthetic this$0:Lc8/Plq;

.field final synthetic val$mad:Lc8/UBq;

.field final synthetic val$onComplete:Lc8/hnq;


# direct methods
.method constructor <init>(Lc8/Plq;Lc8/hnq;Lc8/UBq;)V
    .locals 0

    .prologue
    .line 1919
    iput-object p1, p0, Lc8/olq;->this$0:Lc8/Plq;

    iput-object p2, p0, Lc8/olq;->val$onComplete:Lc8/hnq;

    iput-object p3, p0, Lc8/olq;->val$mad:Lc8/UBq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .prologue
    .line 1923
    iget-boolean v1, p0, Lc8/olq;->done:Z

    if-nez v1, :cond_0

    .line 1924
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/olq;->done:Z

    .line 1926
    :try_start_0
    iget-object v1, p0, Lc8/olq;->val$onComplete:Lc8/hnq;

    invoke-interface {v1}, Lc8/hnq;->call()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1931
    iget-object v1, p0, Lc8/olq;->val$mad:Lc8/UBq;

    invoke-virtual {v1}, Lc8/UBq;->unsubscribe()V

    .line 1934
    :cond_0
    :goto_0
    return-void

    .line 1927
    :catch_0
    move-exception v0

    .line 1928
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v0}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 1929
    invoke-static {v0}, Lc8/Plq;->access$000(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1931
    iget-object v1, p0, Lc8/olq;->val$mad:Lc8/UBq;

    invoke-virtual {v1}, Lc8/UBq;->unsubscribe()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lc8/olq;->val$mad:Lc8/UBq;

    invoke-virtual {v2}, Lc8/UBq;->unsubscribe()V

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1938
    invoke-static {p1}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 1939
    iget-object v0, p0, Lc8/olq;->val$mad:Lc8/UBq;

    invoke-virtual {v0}, Lc8/UBq;->unsubscribe()V

    .line 1940
    invoke-static {p1}, Lc8/Plq;->access$000(Ljava/lang/Throwable;)V

    .line 1941
    return-void
.end method

.method public onSubscribe(Lc8/Pmq;)V
    .locals 1
    .param p1, "d"    # Lc8/Pmq;

    .prologue
    .line 1945
    iget-object v0, p0, Lc8/olq;->val$mad:Lc8/UBq;

    invoke-virtual {v0, p1}, Lc8/UBq;->set(Lc8/Pmq;)V

    .line 1946
    return-void
.end method
