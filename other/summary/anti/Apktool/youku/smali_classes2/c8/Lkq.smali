.class public Lc8/Lkq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Mkq;->call(Lc8/Nlq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Mkq;

.field final synthetic val$s:Lc8/Nlq;

.field final synthetic val$w:Lc8/Zlq;


# direct methods
.method constructor <init>(Lc8/Mkq;Lc8/Nlq;Lc8/Zlq;)V
    .locals 0

    .prologue
    .line 790
    iput-object p1, p0, Lc8/Lkq;->this$0:Lc8/Mkq;

    iput-object p2, p0, Lc8/Lkq;->val$s:Lc8/Nlq;

    iput-object p3, p0, Lc8/Lkq;->val$w:Lc8/Zlq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 794
    :try_start_0
    iget-object v0, p0, Lc8/Lkq;->val$s:Lc8/Nlq;

    invoke-interface {v0}, Lc8/Nlq;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    iget-object v0, p0, Lc8/Lkq;->val$w:Lc8/Zlq;

    invoke-virtual {v0}, Lc8/Zlq;->unsubscribe()V

    .line 797
    return-void

    .line 796
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc8/Lkq;->val$w:Lc8/Zlq;

    invoke-virtual {v1}, Lc8/Zlq;->unsubscribe()V

    throw v0
.end method
