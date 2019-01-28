.class public final Lc8/jH;
.super Ljava/lang/Object;
.source "PermissionProposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/iH;
    }
.end annotation


# static fields
.field private static sCurrentPermissionRequestTask:Lc8/iH;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method static synthetic access$202(Lc8/iH;)Lc8/iH;
    .locals 0
    .param p0, "x0"    # Lc8/iH;

    .prologue
    .line 39
    sput-object p0, Lc8/jH;->sCurrentPermissionRequestTask:Lc8/iH;

    return-object p0
.end method

.method public static declared-synchronized buildPermissionTask(Landroid/content/Context;[Ljava/lang/String;)Lc8/iH;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 50
    const-class v2, Lc8/jH;

    monitor-enter v2

    if-nez p0, :cond_0

    .line 51
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "context can not be null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 54
    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    array-length v1, p1

    if-nez v1, :cond_2

    .line 55
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "permissions can not be null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_2
    new-instance v0, Lc8/iH;

    invoke-direct {v0}, Lc8/iH;-><init>()V

    .line 58
    .local v0, "task":Lc8/iH;
    invoke-static {v0, p0}, Lc8/iH;->access$002(Lc8/iH;Landroid/content/Context;)Landroid/content/Context;

    .line 59
    invoke-static {v0, p1}, Lc8/iH;->access$102(Lc8/iH;[Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    monitor-exit v2

    return-object v0
.end method

.method public static declared-synchronized buildSystemAlertPermissionTask(Landroid/app/Activity;)Lc8/iH;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 65
    const-class v1, Lc8/jH;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v3, v0, v2

    invoke-static {p0, v0}, Lc8/jH;->buildPermissionTask(Landroid/content/Context;[Ljava/lang/String;)Lc8/iH;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 79
    sget-object v1, Lc8/jH;->sCurrentPermissionRequestTask:Lc8/iH;

    sget-object v0, Lc8/jH;->sCurrentPermissionRequestTask:Lc8/iH;

    invoke-virtual {v0}, Lc8/iH;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lc8/iH;->onPermissionGranted(Z)V

    .line 82
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lc8/jH;->sCurrentPermissionRequestTask:Lc8/iH;

    .line 83
    return-void

    .line 79
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p0, "requestCode"    # I
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    .prologue
    .line 71
    sget-object v0, Lc8/jH;->sCurrentPermissionRequestTask:Lc8/iH;

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lc8/jH;->sCurrentPermissionRequestTask:Lc8/iH;

    invoke-static {p2}, Lc8/jH;->verifyPermissions([I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lc8/iH;->onPermissionGranted(Z)V

    .line 73
    const/4 v0, 0x0

    sput-object v0, Lc8/jH;->sCurrentPermissionRequestTask:Lc8/iH;

    .line 75
    :cond_0
    return-void
.end method

.method private static verifyPermissions([I)Z
    .locals 6
    .param p0, "grantResults"    # [I

    .prologue
    const/4 v4, 0x0

    .line 87
    array-length v5, p0

    if-gtz v5, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v4

    .line 90
    :cond_1
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v2, p0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget v3, v0, v1

    .line 91
    .local v3, "result":I
    if-nez v3, :cond_0

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 95
    .end local v3    # "result":I
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method
