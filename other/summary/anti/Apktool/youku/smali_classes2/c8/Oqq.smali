.class public Lc8/Oqq;
.super Ljava/lang/Object;
.source "OnSubscribeTimerOnce.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Pqq;->call(Lc8/Omq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Pqq;

.field final synthetic val$child:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/Pqq;Lc8/Omq;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lc8/Oqq;->this$0:Lc8/Pqq;

    iput-object p2, p0, Lc8/Oqq;->val$child:Lc8/Omq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    .prologue
    .line 49
    :try_start_0
    iget-object v1, p0, Lc8/Oqq;->val$child:Lc8/Omq;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/Omq;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    iget-object v1, p0, Lc8/Oqq;->val$child:Lc8/Omq;

    invoke-virtual {v1}, Lc8/Omq;->onCompleted()V

    .line 55
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lc8/Oqq;->val$child:Lc8/Omq;

    invoke-static {v0, v1}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V

    goto :goto_0
.end method
