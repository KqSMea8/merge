.class public Lc8/Skq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ukq;->onCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lc8/Ukq;


# direct methods
.method constructor <init>(Lc8/Ukq;)V
    .locals 0

    .prologue
    .line 1230
    iput-object p1, p0, Lc8/Skq;->this$2:Lc8/Ukq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 1234
    :try_start_0
    iget-object v0, p0, Lc8/Skq;->this$2:Lc8/Ukq;

    iget-object v0, v0, Lc8/Ukq;->val$s:Lc8/Nlq;

    invoke-interface {v0}, Lc8/Nlq;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1236
    iget-object v0, p0, Lc8/Skq;->this$2:Lc8/Ukq;

    iget-object v0, v0, Lc8/Ukq;->val$w:Lc8/Zlq;

    invoke-virtual {v0}, Lc8/Zlq;->unsubscribe()V

    .line 1237
    return-void

    .line 1236
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc8/Skq;->this$2:Lc8/Ukq;

    iget-object v1, v1, Lc8/Ukq;->val$w:Lc8/Zlq;

    invoke-virtual {v1}, Lc8/Zlq;->unsubscribe()V

    throw v0
.end method
