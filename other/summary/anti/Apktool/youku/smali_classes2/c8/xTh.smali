.class public Lc8/xTh;
.super Ljava/lang/Object;
.source "WebViewFragmentManager.java"

# interfaces
.implements Lc8/Vgn;


# static fields
.field private static instance:Lc8/xTh;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static declared-synchronized getInstance()Lc8/xTh;
    .locals 2

    .prologue
    .line 16
    const-class v1, Lc8/xTh;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/xTh;->instance:Lc8/xTh;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lc8/xTh;

    invoke-direct {v0}, Lc8/xTh;-><init>()V

    sput-object v0, Lc8/xTh;->instance:Lc8/xTh;

    .line 19
    :cond_0
    sget-object v0, Lc8/xTh;->instance:Lc8/xTh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getInteractWebViewFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 24
    new-instance v1, Lc8/sHn;

    invoke-direct {v1}, Lc8/sHn;-><init>()V

    .line 25
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 26
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 28
    return-object v1
.end method
