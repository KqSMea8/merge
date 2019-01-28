.class public final Lc8/rAo;
.super Ljava/lang/Object;
.source "VipPayAPI.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/uAo;->clickVipTab()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 257
    :try_start_0
    new-instance v1, Lc8/qAo;

    invoke-direct {v1, p0}, Lc8/qAo;-><init>(Lc8/rAo;)V

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 264
    invoke-static {p2}, Lc8/cAo;->asInterface(Landroid/os/IBinder;)Lc8/dAo;

    move-result-object v1

    invoke-static {v1}, Lc8/uAo;->access$102(Lc8/dAo;)Lc8/dAo;

    .line 265
    invoke-static {}, Lc8/uAo;->access$300()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v0, 0x0

    .line 273
    invoke-static {v0}, Lc8/uAo;->access$002(Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 274
    invoke-static {v0}, Lc8/uAo;->access$102(Lc8/dAo;)Lc8/dAo;

    .line 275
    return-void
.end method
