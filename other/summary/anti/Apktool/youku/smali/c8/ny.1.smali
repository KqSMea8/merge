.class public Lc8/ny;
.super Ljava/lang/Object;
.source "BundleInstallerFetcher.java"


# static fields
.field private static final mAccessLock:Ljava/lang/Object;

.field private static mCachedBundleInstaller:Lc8/my;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 216
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/ny;->mAccessLock:Ljava/lang/Object;

    .line 217
    const/4 v0, 0x0

    sput-object v0, Lc8/ny;->mCachedBundleInstaller:Lc8/my;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtainInstaller()Lc8/my;
    .locals 4

    .prologue
    .line 220
    sget-object v3, Lc8/ny;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 221
    :try_start_0
    sget-object v0, Lc8/ny;->mCachedBundleInstaller:Lc8/my;

    .line 222
    .local v0, "installer":Lc8/my;
    if-eqz v0, :cond_0

    .line 223
    const/4 v2, 0x0

    sput-object v2, Lc8/ny;->mCachedBundleInstaller:Lc8/my;

    .line 224
    monitor-exit v3

    move-object v1, v0

    .line 227
    .end local v0    # "installer":Lc8/my;
    .local v1, "installer":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 226
    .end local v1    # "installer":Ljava/lang/Object;
    .restart local v0    # "installer":Lc8/my;
    :cond_0
    new-instance v0, Lc8/my;

    .end local v0    # "installer":Lc8/my;
    invoke-direct {v0}, Lc8/my;-><init>()V

    .line 227
    .restart local v0    # "installer":Lc8/my;
    monitor-exit v3

    move-object v1, v0

    .restart local v1    # "installer":Ljava/lang/Object;
    goto :goto_0

    .line 229
    .end local v1    # "installer":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static recycle(Lc8/my;)V
    .locals 2
    .param p0, "installer"    # Lc8/my;

    .prologue
    .line 233
    sget-object v1, Lc8/ny;->mAccessLock:Ljava/lang/Object;

    monitor-enter v1

    .line 234
    :try_start_0
    sget-object v0, Lc8/ny;->mCachedBundleInstaller:Lc8/my;

    if-nez v0, :cond_1

    .line 235
    if-eqz p0, :cond_0

    .line 236
    invoke-virtual {p0}, Lc8/my;->release()V

    .line 238
    :cond_0
    sput-object p0, Lc8/ny;->mCachedBundleInstaller:Lc8/my;

    .line 240
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
