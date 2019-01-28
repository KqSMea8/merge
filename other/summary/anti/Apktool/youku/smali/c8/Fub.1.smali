.class public Lc8/Fub;
.super Landroid/content/BroadcastReceiver;
.source "DefaultWXConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Gub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectivityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Gub;


# direct methods
.method private constructor <init>(Lc8/Gub;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lc8/Fub;->this$0:Lc8/Gub;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/Gub;Lc8/Eub;)V
    .locals 0
    .param p1, "x0"    # Lc8/Gub;
    .param p2, "x1"    # Lc8/Eub;

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lc8/Fub;-><init>(Lc8/Gub;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 387
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    :try_start_0
    iget-object v1, p0, Lc8/Fub;->this$0:Lc8/Gub;

    invoke-static {v1}, Lc8/Gub;->access$100(Lc8/Gub;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "WXConnectionModule"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
