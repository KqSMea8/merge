.class public Lc8/Ewb;
.super Lc8/Txb;
.source "PackageRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gwb;->requestRemoteDepPkgsParallel(Ljava/util/ArrayList;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Txb",
        "<",
        "Lc8/jyb",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Gwb;

.field final synthetic val$s:J


# direct methods
.method constructor <init>(Lc8/Gwb;J)V
    .locals 0
    .param p1, "this$0"    # Lc8/Gwb;

    .prologue
    .line 323
    iput-object p1, p0, Lc8/Ewb;->this$0:Lc8/Gwb;

    iput-wide p2, p0, Lc8/Ewb;->val$s:J

    invoke-direct {p0}, Lc8/Txb;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Lc8/jyb;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/jyb",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p1, "data":Lc8/jyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$ParallelMerge<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lc8/Ewb;->val$s:J

    sub-long v0, v2, v4

    .line 327
    .local v0, "e":J
    const-string/jumbo v2, "Page_Cache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "request remote combo pkgs all time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public bridge synthetic end(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 323
    check-cast p1, Lc8/jyb;

    invoke-virtual {p0, p1}, Lc8/Ewb;->end(Lc8/jyb;)V

    return-void
.end method
