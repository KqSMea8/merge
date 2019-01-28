.class public Lc8/Wkq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Xkq;->onSubscribe(Lc8/Pmq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lc8/Xkq;

.field final synthetic val$d:Lc8/Pmq;


# direct methods
.method constructor <init>(Lc8/Xkq;Lc8/Pmq;)V
    .locals 0

    .prologue
    .line 1380
    iput-object p1, p0, Lc8/Wkq;->this$2:Lc8/Xkq;

    iput-object p2, p0, Lc8/Wkq;->val$d:Lc8/Pmq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 1384
    :try_start_0
    iget-object v1, p0, Lc8/Wkq;->this$2:Lc8/Xkq;

    iget-object v1, v1, Lc8/Xkq;->this$1:Lc8/Ykq;

    iget-object v1, v1, Lc8/Ykq;->val$onUnsubscribe:Lc8/hnq;

    invoke-interface {v1}, Lc8/hnq;->call()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1388
    :goto_0
    iget-object v1, p0, Lc8/Wkq;->val$d:Lc8/Pmq;

    invoke-interface {v1}, Lc8/Pmq;->unsubscribe()V

    .line 1389
    return-void

    .line 1385
    :catch_0
    move-exception v0

    .line 1386
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
