.class public Lc8/Kwb;
.super Ljava/lang/Object;
.source "PageLoader.java"

# interfaces
.implements Lc8/Hxb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Qwb;->processWeexCache(Ljava/lang/String;[BLc8/Pwb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Hxb",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lc8/lwb;",
        ">;",
        "Ljava/util/ArrayList",
        "<",
        "Lc8/lwb;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Qwb;

.field final synthetic val$cachePerf:Lc8/kwb;


# direct methods
.method constructor <init>(Lc8/Qwb;Lc8/kwb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Qwb;

    .prologue
    .line 72
    iput-object p1, p0, Lc8/Kwb;->this$0:Lc8/Qwb;

    iput-object p2, p0, Lc8/Kwb;->val$cachePerf:Lc8/kwb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lc8/Kwb;->call(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/lwb;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/lwb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "pkgItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/aliweex/cache/Package$Item;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 77
    .local v2, "startTime":J
    invoke-static {}, Lc8/Gwb;->getInstance()Lc8/Gwb;

    move-result-object v4

    invoke-virtual {v4, p1}, Lc8/Gwb;->getPackages(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v2

    .line 79
    .local v0, "requestTime":J
    iget-object v4, p0, Lc8/Kwb;->val$cachePerf:Lc8/kwb;

    iput-wide v0, v4, Lc8/kwb;->requestAllPkgsTime:J

    .line 80
    const-string/jumbo v4, "Page_Cache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "request packages end time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-object p1
.end method
