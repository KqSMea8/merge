.class public final Lc8/Tdn;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ben;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field retryTimes:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lc8/Tdn;->retryTimes:I

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 183
    invoke-static {p2}, Lc8/zen;->asInterface(Landroid/os/IBinder;)Lc8/Aen;

    move-result-object v1

    invoke-static {v1}, Lc8/ben;->access$502(Lc8/Aen;)Lc8/Aen;

    .line 185
    :try_start_0
    invoke-static {}, Lc8/ben;->access$500()Lc8/Aen;

    move-result-object v1

    invoke-static {}, Lc8/ben;->access$600()Lc8/uen;

    move-result-object v2

    invoke-interface {v1, v2}, Lc8/Aen;->registerCallback(Lc8/uen;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    new-instance v1, Lc8/Sdn;

    invoke-direct {v1, p0}, Lc8/Sdn;-><init>(Lc8/Tdn;)V

    invoke-static {v1}, Lc8/uAo;->isVip(Lc8/kAo;)V

    .line 198
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Download_Manager"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 174
    iget v0, p0, Lc8/Tdn;->retryTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc8/Tdn;->retryTimes:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 175
    invoke-static {}, Lc8/ben;->access$300()Lc8/ben;

    move-result-object v0

    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lc8/ben;->access$400(Lc8/ben;Landroid/content/Context;)V

    .line 177
    :cond_0
    return-void
.end method
