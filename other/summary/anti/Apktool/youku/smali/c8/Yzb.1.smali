.class public final Lc8/Yzb;
.super Ljava/lang/Object;
.source "OldDBTransferMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Zzb;->checkAndTransfer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dbfile:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lc8/Yzb;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lc8/Yzb;->val$dbfile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 29
    new-instance v1, Lc8/Wzb;

    iget-object v2, p0, Lc8/Yzb;->val$context:Landroid/content/Context;

    invoke-static {}, Lc8/Zzb;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lc8/Wzb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    .local v1, "usertrackDbMgr":Lc8/Wzb;
    :goto_0
    const-class v2, Lc8/tAb;

    const/4 v3, 0x0

    const-string/jumbo v4, "time"

    const/16 v5, 0x64

    invoke-virtual {v1, v2, v3, v4, v5}, Lc8/Wzb;->find(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 32
    .local v0, "logs":Ljava/util/List;, "Ljava/util/List<+Lcom/alibaba/analytics/core/db/Entity;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 33
    const-string/jumbo v2, "OldDBTransferMgr"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "delete old db file:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lc8/Yzb;->val$dbfile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-object v2, p0, Lc8/Yzb;->val$dbfile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 35
    return-void

    .line 37
    :cond_0
    invoke-virtual {v1, v0}, Lc8/Wzb;->delete(Ljava/util/List;)I

    .line 38
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v2

    invoke-virtual {v2}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v2

    invoke-virtual {v2, v0}, Lc8/Wzb;->insert(Ljava/util/List;)V

    goto :goto_0
.end method
