.class public Lc8/Tzb;
.super Ljava/lang/Object;
.source "ConfigTimeStampMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Uzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Uzb;


# direct methods
.method constructor <init>(Lc8/Uzb;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lc8/Tzb;->this$0:Lc8/Uzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 27
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v4

    invoke-virtual {v4}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 28
    .local v0, "c":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lc8/Uzb;->access$000()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    .local v1, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/config/timestamp/TimeStampEntity;>;"
    invoke-static {}, Lc8/Uzb;->access$000()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 31
    .local v3, "name":Ljava/lang/String;
    new-instance v5, Lc8/Vzb;

    invoke-static {}, Lc8/Uzb;->access$000()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v3, v4}, Lc8/Vzb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v4

    invoke-virtual {v4}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v4

    const-class v5, Lc8/Vzb;

    invoke-virtual {v4, v5}, Lc8/Wzb;->clear(Ljava/lang/Class;)V

    .line 34
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v4

    invoke-virtual {v4}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v4

    invoke-virtual {v4, v1}, Lc8/Wzb;->insert(Ljava/util/List;)V

    .line 38
    .end local v1    # "entities":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/config/timestamp/TimeStampEntity;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    return-void

    .line 36
    :cond_1
    const-string/jumbo v4, "storeTask.run()"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "context"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lc8/NBb;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
