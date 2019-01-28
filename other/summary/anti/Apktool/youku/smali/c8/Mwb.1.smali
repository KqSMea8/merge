.class public Lc8/Mwb;
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
        "Ljava/lang/String;",
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
    .line 54
    iput-object p1, p0, Lc8/Mwb;->this$0:Lc8/Qwb;

    iput-object p2, p0, Lc8/Mwb;->val$cachePerf:Lc8/kwb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lc8/Mwb;->call(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "template"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/lwb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    const-string/jumbo v3, "Page_Cache"

    const-string/jumbo v6, "compose packages start"

    invoke-static {v3, v6}, Lc8/xgg;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 59
    .local v4, "startTime":J
    new-instance v3, Lc8/Nwb;

    iget-object v6, p0, Lc8/Mwb;->this$0:Lc8/Qwb;

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Lc8/Nwb;-><init>(Lc8/Qwb;Lc8/Hwb;)V

    invoke-virtual {v3, p1}, Lc8/Nwb;->parse(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 60
    .local v2, "pkgItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/aliweex/cache/Package$Item;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v4

    .line 61
    .local v0, "parseTime":J
    iget-object v3, p0, Lc8/Mwb;->val$cachePerf:Lc8/kwb;

    iput-wide v0, v3, Lc8/kwb;->parseDepPkgsTime:J

    .line 62
    const-string/jumbo v3, "Page_Cache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parse dependency packages to request end time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lc8/xgg;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-object v2
.end method
