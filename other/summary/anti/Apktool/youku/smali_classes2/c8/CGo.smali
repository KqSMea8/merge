.class public Lc8/CGo;
.super Ljava/lang/Object;
.source "VipNetWorkChangeReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vip/lib/receiver/VipNetWorkChangeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkRunnable"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lc8/CGo;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 42
    :try_start_0
    invoke-static {}, Lc8/QFo;->getNetworkState()Lc8/cGo;

    move-result-object v1

    iget-object v2, p0, Lc8/CGo;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lc8/cGo;->getConnectivityState(Landroid/content/Context;)B

    move-result v2

    invoke-virtual {v1, v2}, Lc8/cGo;->setNetworkType(B)V

    .line 43
    invoke-static {}, Lc8/QFo;->getBroadcast()Lc8/VFo;

    move-result-object v1

    const-string/jumbo v2, "ACTION_NETWORK_CHANGED"

    const/high16 v3, 0x100000

    invoke-virtual {v1, v2, v3}, Lc8/VFo;->sendBroadcast(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
