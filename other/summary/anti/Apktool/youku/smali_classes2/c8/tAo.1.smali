.class public final Lc8/tAo;
.super Ljava/lang/Object;
.source "VipPayAPI.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/uAo;->initVipAidl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 328
    :try_start_0
    new-instance v1, Lc8/sAo;

    invoke-direct {v1, p0}, Lc8/sAo;-><init>(Lc8/tAo;)V

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 335
    invoke-static {p2}, Lc8/cAo;->asInterface(Landroid/os/IBinder;)Lc8/dAo;

    move-result-object v1

    invoke-static {v1}, Lc8/uAo;->access$102(Lc8/dAo;)Lc8/dAo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v0, 0x0

    .line 343
    invoke-static {v0}, Lc8/uAo;->access$002(Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 344
    invoke-static {v0}, Lc8/uAo;->access$102(Lc8/dAo;)Lc8/dAo;

    .line 345
    return-void
.end method
