.class public Lc8/iyq;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jyq;->call(Lc8/hnq;)Lc8/Pmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/jyq;

.field final synthetic val$a:Lc8/hnq;

.field final synthetic val$w:Lc8/Zlq;


# direct methods
.method constructor <init>(Lc8/jyq;Lc8/hnq;Lc8/Zlq;)V
    .locals 0

    .prologue
    .line 110
    .local p0, "this":Lc8/iyq;, "Lrx/internal/util/ScalarSynchronousObservable$2.1;"
    iput-object p1, p0, Lc8/iyq;->this$1:Lc8/jyq;

    iput-object p2, p0, Lc8/iyq;->val$a:Lc8/hnq;

    iput-object p3, p0, Lc8/iyq;->val$w:Lc8/Zlq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 114
    .local p0, "this":Lc8/iyq;, "Lrx/internal/util/ScalarSynchronousObservable$2.1;"
    :try_start_0
    iget-object v0, p0, Lc8/iyq;->val$a:Lc8/hnq;

    invoke-interface {v0}, Lc8/hnq;->call()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    iget-object v0, p0, Lc8/iyq;->val$w:Lc8/Zlq;

    invoke-virtual {v0}, Lc8/Zlq;->unsubscribe()V

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc8/iyq;->val$w:Lc8/Zlq;

    invoke-virtual {v1}, Lc8/Zlq;->unsubscribe()V

    throw v0
.end method
