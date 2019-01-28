.class public Lc8/flq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/glq;->onError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lc8/glq;

.field final synthetic val$e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lc8/glq;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 1629
    iput-object p1, p0, Lc8/flq;->this$2:Lc8/glq;

    iput-object p2, p0, Lc8/flq;->val$e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 1633
    :try_start_0
    iget-object v0, p0, Lc8/flq;->this$2:Lc8/glq;

    iget-object v0, v0, Lc8/glq;->val$s:Lc8/Nlq;

    iget-object v1, p0, Lc8/flq;->val$e:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1635
    iget-object v0, p0, Lc8/flq;->this$2:Lc8/glq;

    iget-object v0, v0, Lc8/glq;->val$ad:Lc8/wyq;

    invoke-virtual {v0}, Lc8/wyq;->unsubscribe()V

    .line 1636
    return-void

    .line 1635
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc8/flq;->this$2:Lc8/glq;

    iget-object v1, v1, Lc8/glq;->val$ad:Lc8/wyq;

    invoke-virtual {v1}, Lc8/wyq;->unsubscribe()V

    throw v0
.end method
