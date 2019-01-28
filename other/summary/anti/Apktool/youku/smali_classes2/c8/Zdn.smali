.class public abstract Lc8/Zdn;
.super Landroid/content/BroadcastReceiver;
.source "DownloadManager.java"

# interfaces
.implements Lc8/Cen;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ben;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "OnCreateDownloadReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ben;


# direct methods
.method public constructor <init>(Lc8/ben;)V
    .locals 0
    .param p1, "this$0"    # Lc8/ben;

    .prologue
    .line 862
    iput-object p1, p0, Lc8/Zdn;->this$0:Lc8/ben;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 866
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 867
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "com.youku.service.download.ACTION_CREATE_DOWNLOAD_ALL_READY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 868
    const-string/jumbo v2, "isNeedRefresh"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 869
    .local v1, "value":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAllReady():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 870
    invoke-virtual {p0, v1}, Lc8/Zdn;->onCompleted(Z)V

    .line 872
    .end local v1    # "value":Z
    :cond_0
    return-void
.end method
