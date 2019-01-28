.class public Lc8/nwf;
.super Ljava/lang/Object;
.source "NdkCore.java"


# static fields
.field private static sCpuType:Ljava/lang/String;

.field private static sLoadedSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 11
    const/4 v1, 0x0

    sput-object v1, Lc8/nwf;->sCpuType:Ljava/lang/String;

    .line 15
    :try_start_0
    const-string/jumbo v1, "phxcore"

    invoke-static {v1}, Lc8/ZA;->loadLibrary(Ljava/lang/String;)V

    .line 16
    const/4 v1, 0x1

    sput-boolean v1, Lc8/nwf;->sLoadedSuccess:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .local v0, "ue":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 17
    .end local v0    # "ue":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 18
    .restart local v0    # "ue":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v1, "JNI"

    const-string/jumbo v2, "loadLibrary phxcore error=%s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lc8/qwf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCpuType()Ljava/lang/String;
    .locals 5

    .prologue
    .line 36
    sget-object v1, Lc8/nwf;->sCpuType:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 39
    :try_start_0
    invoke-static {}, Lc8/nwf;->isLoadedSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v1}, Lc8/nwf;->nativeGetCpuAbi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lc8/nwf;->sCpuType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .local v0, "ue":Ljava/lang/UnsatisfiedLinkError;
    :cond_0
    :goto_0
    sget-object v1, Lc8/nwf;->sCpuType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    sput-object v1, Lc8/nwf;->sCpuType:Ljava/lang/String;

    .line 49
    :cond_1
    sget-object v1, Lc8/nwf;->sCpuType:Ljava/lang/String;

    return-object v1

    .line 42
    .end local v0    # "ue":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 43
    .restart local v0    # "ue":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v1, "JNI"

    const-string/jumbo v2, "NdkCore.nativeGetCpuAbi error=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lc8/qwf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static isCpuSupportNEON()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 28
    :try_start_0
    invoke-static {}, Lc8/nwf;->nativeCpuSupportNEON()Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 32
    .local v0, "ue":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return v1

    .line 29
    .end local v0    # "ue":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 30
    .restart local v0    # "ue":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v2, "JNI"

    const-string/jumbo v3, "NdkCore.nativeCpuSupportNEON error=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lc8/qwf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static isLoadedSuccess()Z
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lc8/nwf;->sLoadedSuccess:Z

    return v0
.end method

.method public static native nativeCpuSupportNEON()Z
.end method

.method public static native nativeGetCpuAbi(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nativePinBitmap(Landroid/graphics/Bitmap;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method public static native nativePinBitmapWithAddr(Landroid/graphics/Bitmap;[J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static native nativeUnpinBitmap(Landroid/graphics/Bitmap;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method
