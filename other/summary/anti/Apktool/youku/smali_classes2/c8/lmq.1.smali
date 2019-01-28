.class public Lc8/lmq;
.super Lc8/Nmq;
.source "Single.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/mmq;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Nmq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lc8/mmq;


# direct methods
.method constructor <init>(Lc8/mmq;)V
    .locals 0

    .prologue
    .line 1926
    .local p0, "this":Lc8/lmq;, "Lrx/Single$19$1.1;"
    iput-object p1, p0, Lc8/lmq;->this$2:Lc8/mmq;

    invoke-direct {p0}, Lc8/Nmq;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 1939
    .local p0, "this":Lc8/lmq;, "Lrx/Single$19$1.1;"
    :try_start_0
    iget-object v0, p0, Lc8/lmq;->this$2:Lc8/mmq;

    iget-object v0, v0, Lc8/mmq;->val$t:Lc8/Nmq;

    invoke-virtual {v0, p1}, Lc8/Nmq;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1941
    iget-object v0, p0, Lc8/lmq;->this$2:Lc8/mmq;

    iget-object v0, v0, Lc8/mmq;->val$w:Lc8/Zlq;

    invoke-virtual {v0}, Lc8/Zlq;->unsubscribe()V

    .line 1942
    return-void

    .line 1941
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc8/lmq;->this$2:Lc8/mmq;

    iget-object v1, v1, Lc8/mmq;->val$w:Lc8/Zlq;

    invoke-virtual {v1}, Lc8/Zlq;->unsubscribe()V

    throw v0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1930
    .local p0, "this":Lc8/lmq;, "Lrx/Single$19$1.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, p0, Lc8/lmq;->this$2:Lc8/mmq;

    iget-object v0, v0, Lc8/mmq;->val$t:Lc8/Nmq;

    invoke-virtual {v0, p1}, Lc8/Nmq;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1932
    iget-object v0, p0, Lc8/lmq;->this$2:Lc8/mmq;

    iget-object v0, v0, Lc8/mmq;->val$w:Lc8/Zlq;

    invoke-virtual {v0}, Lc8/Zlq;->unsubscribe()V

    .line 1933
    return-void

    .line 1932
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc8/lmq;->this$2:Lc8/mmq;

    iget-object v1, v1, Lc8/mmq;->val$w:Lc8/Zlq;

    invoke-virtual {v1}, Lc8/Zlq;->unsubscribe()V

    throw v0
.end method
