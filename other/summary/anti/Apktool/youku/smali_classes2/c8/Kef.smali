.class public Lc8/Kef;
.super Ljava/lang/Object;
.source "HookMethod.java"


# static fields
.field static sNeedHook:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    :try_start_0
    sget-boolean v1, Lc8/Lef;->sSdCardEnable:Z

    if-eqz v1, :cond_0

    .line 16
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/sdcard/OnLineMonitorTest.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    const-string/jumbo v1, "dexposed"

    invoke-static {v1}, Lc8/ZA;->loadLibrary(Ljava/lang/String;)V

    .line 19
    const/4 v1, 0x1

    sput-boolean v1, Lc8/Kef;->sNeedHook:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
