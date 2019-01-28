.class public Lc8/rlq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/slq;->call(Lc8/Nlq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/slq;

.field final synthetic val$s:Lc8/Nlq;

.field final synthetic val$w:Lc8/Zlq;


# direct methods
.method constructor <init>(Lc8/slq;Lc8/Nlq;Lc8/Zlq;)V
    .locals 0

    .prologue
    .line 2136
    iput-object p1, p0, Lc8/rlq;->this$1:Lc8/slq;

    iput-object p2, p0, Lc8/rlq;->val$s:Lc8/Nlq;

    iput-object p3, p0, Lc8/rlq;->val$w:Lc8/Zlq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 2140
    :try_start_0
    iget-object v0, p0, Lc8/rlq;->this$1:Lc8/slq;

    iget-object v0, v0, Lc8/slq;->this$0:Lc8/Plq;

    iget-object v1, p0, Lc8/rlq;->val$s:Lc8/Nlq;

    invoke-virtual {v0, v1}, Lc8/Plq;->unsafeSubscribe(Lc8/Nlq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2142
    iget-object v0, p0, Lc8/rlq;->val$w:Lc8/Zlq;

    invoke-virtual {v0}, Lc8/Zlq;->unsubscribe()V

    .line 2143
    return-void

    .line 2142
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc8/rlq;->val$w:Lc8/Zlq;

    invoke-virtual {v1}, Lc8/Zlq;->unsubscribe()V

    throw v0
.end method
