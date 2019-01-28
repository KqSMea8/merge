.class public Lc8/pAb;
.super Ljava/lang/Object;
.source "SessionTimeAndIndexMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/qAb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/qAb;


# direct methods
.method constructor <init>(Lc8/qAb;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lc8/pAb;->this$0:Lc8/qAb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 33
    iget-object v0, p0, Lc8/pAb;->this$0:Lc8/qAb;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lc8/qAb;->access$002(Lc8/qAb;J)J

    .line 34
    iget-object v0, p0, Lc8/pAb;->this$0:Lc8/qAb;

    invoke-static {v0}, Lc8/qAb;->access$100(Lc8/qAb;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 35
    iget-object v0, p0, Lc8/pAb;->this$0:Lc8/qAb;

    invoke-static {v0}, Lc8/qAb;->access$200(Lc8/qAb;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 36
    return-void
.end method
