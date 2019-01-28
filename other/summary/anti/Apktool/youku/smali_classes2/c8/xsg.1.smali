.class public Lc8/xsg;
.super Landroid/content/BroadcastReceiver;
.source "UploaderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ysg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lc8/ysg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lc8/ysg;)V
    .locals 1
    .param p1, "manager"    # Lc8/ysg;

    .prologue
    .line 234
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 235
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/xsg;->a:Ljava/lang/ref/WeakReference;

    .line 236
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 240
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    :try_start_0
    const-string/jumbo v1, "noConnectivity"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 247
    const-string/jumbo v1, "extraInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    iget-object v1, p0, Lc8/xsg;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/ysg;

    .line 252
    .local v0, "manager":Lc8/ysg;
    if-eqz v0, :cond_0

    .line 256
    invoke-static {v0}, Lc8/ysg;->b(Lc8/ysg;)V

    goto :goto_0

    .line 249
    .end local v0    # "manager":Lc8/ysg;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
