.class public Lc8/xuf;
.super Ljava/lang/Object;
.source "NdkCore.java"


# static fields
.field private static final LIBRARY_JNI_VERSION:I = 0x2

.field private static final LIBRARY_NAME:Ljava/lang/String; = "pexcore"

.field private static sCpuAbiList:[Ljava/lang/String;

.field private static sIsSoInstalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 18
    const/4 v1, 0x0

    sput-object v1, Lc8/xuf;->sCpuAbiList:[Ljava/lang/String;

    .line 22
    :try_start_0
    const-string/jumbo v1, "pexcore"

    invoke-static {v1}, Lc8/ZA;->loadLibrary(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lc8/xuf;->nativeLoadedVersionTest()I

    move-result v1

    if-ne v1, v8, :cond_0

    move v1, v2

    :goto_0
    sput-boolean v1, Lc8/xuf;->sIsSoInstalled:Z

    .line 24
    const-string/jumbo v1, "Pexode"

    const-string/jumbo v4, "system load lib%s.so success"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "pexcore"

    aput-object v7, v5, v6

    invoke-static {v1, v4, v5}, Lc8/RNf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .local v0, "ex":Ljava/lang/UnsatisfiedLinkError;
    :goto_1
    return-void

    .end local v0    # "ex":Ljava/lang/UnsatisfiedLinkError;
    :cond_0
    move v1, v3

    .line 23
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .restart local v0    # "ex":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v1, "Pexode"

    const-string/jumbo v4, "system load lib%s.so error=%s"

    new-array v5, v8, [Ljava/lang/Object;

    const-string/jumbo v6, "pexcore"

    aput-object v6, v5, v3

    aput-object v0, v5, v2

    invoke-static {v1, v4, v5}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCpuAbiSupported(Ljava/lang/String;)Z
    .locals 9
    .param p0, "abi"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x15

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 51
    sget-object v5, Lc8/xuf;->sCpuAbiList:[Ljava/lang/String;

    if-nez v5, :cond_1

    .line 53
    :try_start_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v8, :cond_2

    .line 54
    invoke-static {}, Lc8/xuf;->nativeGetCpuAbiList()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "list":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 56
    const-string/jumbo v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lc8/xuf;->sCpuAbiList:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v1    # "list":Ljava/lang/String;
    :cond_0
    :goto_0
    sget-object v5, Lc8/xuf;->sCpuAbiList:[Ljava/lang/String;

    if-nez v5, :cond_1

    .line 66
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v8, :cond_3

    .line 67
    sget-object v5, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    sput-object v5, Lc8/xuf;->sCpuAbiList:[Ljava/lang/String;

    .line 73
    :cond_1
    :goto_1
    sget-object v6, Lc8/xuf;->sCpuAbiList:[Ljava/lang/String;

    array-length v7, v6

    move v5, v4

    :goto_2
    if-ge v5, v7, :cond_5

    aget-object v0, v6, v5

    .line 74
    .local v0, "cpu":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 78
    .end local v0    # "cpu":Ljava/lang/String;
    :goto_3
    return v3

    .line 59
    :cond_2
    const/4 v5, 0x1

    :try_start_1
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v7}, Lc8/xuf;->nativeGetCpuAbi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    sput-object v5, Lc8/xuf;->sCpuAbiList:[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v2

    .line 62
    .local v2, "ue":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v5, "Pexode"

    const-string/jumbo v6, "NdkCore.isCpuAbiSupported error=%s"

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v2, v7, v4

    invoke-static {v5, v6, v7}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 69
    .end local v2    # "ue":Ljava/lang/UnsatisfiedLinkError;
    :cond_3
    new-array v5, v3, [Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v6, v5, v4

    sput-object v5, Lc8/xuf;->sCpuAbiList:[Ljava/lang/String;

    goto :goto_1

    .line 73
    .restart local v0    # "cpu":Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v0    # "cpu":Ljava/lang/String;
    :cond_5
    move v3, v4

    .line 78
    goto :goto_3
.end method

.method public static isCpuSupportNEON()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 43
    :try_start_0
    invoke-static {}, Lc8/xuf;->nativeCpuSupportNEON()Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 47
    .local v0, "ue":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return v1

    .line 44
    .end local v0    # "ue":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 45
    .restart local v0    # "ue":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v2, "Pexode"

    const-string/jumbo v3, "NdkCore.isCpuSupportNEON error=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static isFdSeekable(Ljava/io/FileDescriptor;)Z
    .locals 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    const/4 v1, 0x0

    .line 83
    :try_start_0
    invoke-static {p0}, Lc8/xuf;->nativeIsSeekable(Ljava/io/FileDescriptor;)Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 87
    :goto_0
    return v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "ue":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v2, "Pexode"

    const-string/jumbo v3, "NdkCore.isFdSeekable error=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static isSoInstalled()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lc8/xuf;->sIsSoInstalled:Z

    return v0
.end method

.method private static native nativeCpuSupportNEON()Z
.end method

.method private static native nativeGetCpuAbi(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeGetCpuAbiList()Ljava/lang/String;
.end method

.method private static native nativeIsSeekable(Ljava/io/FileDescriptor;)Z
.end method

.method private static native nativeLoadedVersionTest()I
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

.method public static prepare(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x2

    .line 31
    sget-boolean v0, Lc8/xuf;->sIsSoInstalled:Z

    if-nez v0, :cond_0

    .line 32
    const-string/jumbo v0, "pexcore"

    invoke-static {v0, v4}, Lc8/zuf;->loadBackup(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lc8/xuf;->nativeLoadedVersionTest()I

    move-result v0

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lc8/xuf;->sIsSoInstalled:Z

    .line 33
    const-string/jumbo v0, "Pexode"

    const-string/jumbo v3, "retry load lib%s.so result=%b"

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "pexcore"

    aput-object v5, v4, v2

    sget-boolean v2, Lc8/xuf;->sIsSoInstalled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lc8/RNf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 32
    goto :goto_0
.end method
