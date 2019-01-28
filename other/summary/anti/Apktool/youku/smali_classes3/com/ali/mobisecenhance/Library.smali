.class public Lcom/ali/mobisecenhance/Library;
.super Ljava/lang/Object;
.source "Library.java"


# static fields
.field private static final EM_386:I = 0x3

.field private static final EM_AARCH64:I = 0xb7

.field private static final EM_ARM:I = 0x28

.field private static final EM_X86_64:I = 0x3e

.field private static final TAG:Ljava/lang/String;

.field protected static arm64Loaded:Z

.field protected static armLoaded:Z

.field public static blackSoMap:[Ljava/lang/String;

.field private static final log:Lcom/ali/mobisecenhance/RecordLog;

.field protected static x64Loaded:Z

.field protected static x86Loaded:Z


# instance fields
.field private arch:I

.field private cookie:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gez v0, :cond_0

    const-class v0, La/does/not/Exists2;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .prologue
    .line 20
    :cond_0
    const-class v0, Lcom/ali/mobisecenhance/Library;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/mobisecenhance/Library;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/ali/mobisecenhance/RecordLog;

    invoke-direct {v0}, Lcom/ali/mobisecenhance/RecordLog;-><init>()V

    sput-object v0, Lcom/ali/mobisecenhance/Library;->log:Lcom/ali/mobisecenhance/RecordLog;

    .line 114
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "libJarvis_CL.so"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "libJarvis_CPU.so"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "libJarvis_JNI.so"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "libplt-detect.so"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "libfreetype.so"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "libgcanvas.so"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "libc++_shared.so"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "libartc_engine.so"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "libeaze.so"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "libMediaEncode.so"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "libvideostudio.so"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "libmarsxlog.so"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "libstlport_shared.so"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "libcrashsdk.so"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "librsjni.so"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "p_BlackSoList"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "q_BlackSoList"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "r_BlackSoList"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "s_BlackSoList"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "t_BlackSoList"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "u_BlackSoList"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "v_BlackSoList"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "w_BlackSoList"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "x_BlackSoList"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "y_BlackSoList"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "z_BlackSoList"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ali/mobisecenhance/Library;->blackSoMap:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "lib"    # Ljava/io/File;

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    invoke-static {p1}, Lcom/ali/mobisecenhance/Library;->detectARCH(Ljava/io/File;)I

    move-result v0

    iput v0, p0, Lcom/ali/mobisecenhance/Library;->arch:I

    .line 247
    return-void
.end method

.method public static after_System_loadLibrary(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "invocation"    # Lcom/ali/mobisecenhance/Invocation;
    .param p1, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/ali/mobisecenhance/Invocation;->tag:Ljava/lang/Object;

    check-cast v0, Lcom/ali/mobisecenhance/Library;

    .line 237
    .local v0, "tag":Lcom/ali/mobisecenhance/Library;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ali/mobisecenhance/Invocation;->tag:Ljava/lang/Object;

    .line 238
    invoke-virtual {v0}, Lcom/ali/mobisecenhance/Library;->postLoad()V

    .line 240
    if-eqz p1, :cond_0

    .line 241
    throw p1

    .line 243
    :cond_0
    return-void
.end method

.method public static before_System_load(Lcom/ali/mobisecenhance/Invocation;)Z
    .locals 9
    .param p0, "invocation"    # Lcom/ali/mobisecenhance/Invocation;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 183
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 184
    .local v0, "calling":Ljava/lang/ClassLoader;
    iget-object v8, p0, Lcom/ali/mobisecenhance/Invocation;->args:[Ljava/lang/Object;

    array-length v8, v8

    if-le v8, v6, :cond_0

    .line 185
    invoke-virtual {p0, v6}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "calling":Ljava/lang/ClassLoader;
    check-cast v0, Ljava/lang/ClassLoader;

    .line 189
    .restart local v0    # "calling":Ljava/lang/ClassLoader;
    :cond_0
    invoke-virtual {p0, v7}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 190
    .local v3, "libPath":Ljava/lang/String;
    sget-object v8, Lcom/ali/mobisecenhance/ReflectMap;->m_context:Landroid/content/Context;

    invoke-static {v8, v3, v0}, Lcom/ali/mobisecenhance/Library;->forSoCompress_load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 192
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .local v2, "lib":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 194
    :cond_1
    new-instance v6, Ljava/lang/UnsatisfiedLinkError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not exits or invalid !"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 197
    :cond_2
    invoke-static {v2}, Lcom/ali/mobisecenhance/Library;->buildProxyLibPath(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 198
    .local v4, "proxy":Ljava/io/File;
    new-instance v5, Lcom/ali/mobisecenhance/Library;

    invoke-direct {v5, v2}, Lcom/ali/mobisecenhance/Library;-><init>(Ljava/io/File;)V

    .line 200
    .local v5, "tag":Lcom/ali/mobisecenhance/Library;
    invoke-virtual {v5, v0, v2, v4}, Lcom/ali/mobisecenhance/Library;->preLoad(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    .line 202
    .local v1, "isSuccess":Z
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    .line 203
    iput-object v5, p0, Lcom/ali/mobisecenhance/Invocation;->tag:Ljava/lang/Object;

    .line 206
    if-eqz v1, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    :goto_0
    return v6

    :cond_3
    move v6, v7

    goto :goto_0
.end method

.method public static before_System_loadLibrary(Lcom/ali/mobisecenhance/Invocation;)Z
    .locals 9
    .param p0, "invocation"    # Lcom/ali/mobisecenhance/Invocation;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 212
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 213
    .local v0, "calling":Ljava/lang/ClassLoader;
    iget-object v8, p0, Lcom/ali/mobisecenhance/Invocation;->args:[Ljava/lang/Object;

    array-length v8, v8

    if-le v8, v6, :cond_0

    .line 214
    invoke-virtual {p0, v6}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "calling":Ljava/lang/ClassLoader;
    check-cast v0, Ljava/lang/ClassLoader;

    .line 218
    .restart local v0    # "calling":Ljava/lang/ClassLoader;
    :cond_0
    invoke-virtual {p0, v7}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 220
    .local v3, "libName":Ljava/lang/String;
    sget-object v8, Lcom/ali/mobisecenhance/ReflectMap;->m_context:Landroid/content/Context;

    invoke-static {v8, v3, v0}, Lcom/ali/mobisecenhance/Library;->forSoCompress_loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 222
    invoke-static {v3, v0}, Lcom/ali/mobisecenhance/Library;->findLibrary0(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/io/File;

    move-result-object v2

    .line 224
    .local v2, "lib":Ljava/io/File;
    invoke-static {v2}, Lcom/ali/mobisecenhance/Library;->buildProxyLibPath(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 225
    .local v4, "proxy":Ljava/io/File;
    new-instance v5, Lcom/ali/mobisecenhance/Library;

    invoke-direct {v5, v2}, Lcom/ali/mobisecenhance/Library;-><init>(Ljava/io/File;)V

    .line 227
    .local v5, "tag":Lcom/ali/mobisecenhance/Library;
    invoke-virtual {v5, v0, v2, v4}, Lcom/ali/mobisecenhance/Library;->preLoad(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    .line 229
    .local v1, "isSuccess":Z
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    .line 230
    iput-object v5, p0, Lcom/ali/mobisecenhance/Invocation;->tag:Ljava/lang/Object;

    .line 232
    if-eqz v1, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    :goto_0
    return v6

    :cond_1
    move v6, v7

    goto :goto_0
.end method

.method private static buildProxyLibPath(Ljava/io/File;)Ljava/io/File;
    .locals 4
    .param p0, "lib"    # Ljava/io/File;

    .prologue
    .line 58
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/ali/mobisecenhance/ReflectMap;->buildHJNIDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proxy_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static detectARCH(Ljava/io/File;)I
    .locals 9
    .param p0, "so"    # Ljava/io/File;

    .prologue
    const/16 v6, 0x14

    .line 64
    const/4 v3, 0x0

    .line 65
    .local v3, "is":Ljava/io/InputStream;
    new-array v0, v6, [B

    .line 67
    .local v0, "buff":[B
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .end local v3    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-ge v5, v6, :cond_1

    .line 69
    const/4 v5, 0x0

    .line 75
    if-eqz v4, :cond_0

    .line 77
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 84
    :cond_0
    :goto_0
    return v5

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    if-eqz v4, :cond_2

    .line 77
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 84
    :cond_2
    :goto_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    const/16 v6, 0x12

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    const v6, 0xffff

    and-int/2addr v5, v6

    goto :goto_0

    .line 78
    :catch_1
    move-exception v1

    .line 79
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 71
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v2

    .line 72
    .local v2, "ex":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    sget-object v5, Lcom/ali/mobisecenhance/Library;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v6, Lcom/ali/mobisecenhance/Library;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to read machine from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v2}, Lcom/ali/mobisecenhance/RecordLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 73
    new-instance v5, Ljava/lang/UnsatisfiedLinkError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to detect arch for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 75
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v3, :cond_3

    .line 77
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 80
    :cond_3
    :goto_4
    throw v5

    .line 78
    :catch_3
    move-exception v1

    .line 79
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 75
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_3

    .line 71
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_2
.end method

.method private static ensureHostLoaded(ZLjava/lang/String;)V
    .locals 1
    .param p0, "loaded"    # Z
    .param p1, "arch"    # Ljava/lang/String;

    .prologue
    .line 89
    if-nez p0, :cond_0

    .line 90
    invoke-static {}, Lcom/ali/mobisecenhance/ReflectMap;->loadReflectMapSo()V

    .line 92
    :try_start_0
    invoke-static {}, Lcom/ali/mobisecenhance/ReflectMap;->loadConfig()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static findLibrary0(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/io/File;
    .locals 16
    .param p0, "lib"    # Ljava/lang/String;
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    .prologue
    .line 297
    sget-object v9, Lcom/ali/mobisecenhance/Library;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v10, Lcom/ali/mobisecenhance/Library;->TAG:Ljava/lang/String;

    const-string v11, " * calling protected method classloader.findLibrary "

    invoke-virtual {v9, v10, v11}, Lcom/ali/mobisecenhance/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v5, 0x0

    .line 300
    .local v5, "libdir":Ljava/lang/String;
    :try_start_0
    const-class v9, Ljava/lang/ClassLoader;

    const-string v10, "findLibrary"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 301
    .local v6, "m":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 302
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .end local v6    # "m":Ljava/lang/reflect/Method;
    :goto_0
    if-eqz v5, :cond_0

    .line 307
    sget-object v9, Lcom/ali/mobisecenhance/Library;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v10, Lcom/ali/mobisecenhance/Library;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " YES! find library file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/ali/mobisecenhance/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 363
    :goto_1
    return-object v3

    .line 310
    :cond_0
    sget-object v9, Lcom/ali/mobisecenhance/Library;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v10, Lcom/ali/mobisecenhance/Library;->TAG:Ljava/lang/String;

    const-string v11, "classloader.findLibrary fails or returning null "

    invoke-virtual {v9, v10, v11}, Lcom/ali/mobisecenhance/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 318
    .local v4, "libFileName":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v2, "dirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v9, Lcom/ali/mobisecenhance/ReflectMap;->m_context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 322
    .local v1, "dir":Ljava/lang/String;
    sget-object v9, Lcom/ali/mobisecenhance/Library;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v10, Lcom/ali/mobisecenhance/Library;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " * 1/4 adding nativeLibraryDir "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/ali/mobisecenhance/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    const-string v9, "java.library.path"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 329
    .local v8, "v":Ljava/lang/String;
    sget-object v9, Lcom/ali/mobisecenhance/Library;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v10, Lcom/ali/mobisecenhance/Library;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " * 2/4 adding java.library.path "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/ali/mobisecenhance/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    if-eqz v8, :cond_1

    .line 332
    const-string v9, ":|;"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v11, :cond_1

    aget-object v7, v10, v9

    .line 333
    .local v7, "s":Ljava/lang/String;
    sget-object v12, Lcom/ali/mobisecenhance/Library;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v13, Lcom/ali/mobisecenhance/Library;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " * ... adding  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/ali/mobisecenhance/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 339
    .end local v7    # "s":Ljava/lang/String;
    :cond_1
    const-string v9, "LD_LIBRARY_PATH"

    invoke-static {v9}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 340
    sget-object v9, Lcom/ali/mobisecenhance/Library;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v10, Lcom/ali/mobisecenhance/Library;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " * 3/4 adding LD_LIBRARY_PATH "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/ali/mobisecenhance/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    if-eqz v8, :cond_2

    .line 342
    const-string v9, ":|;"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v11, :cond_2

    aget-object v7, v10, v9

    .line 343
    .restart local v7    # "s":Ljava/lang/String;
    sget-object v12, Lcom/ali/mobisecenhance/Library;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v13, Lcom/ali/mobisecenhance/Library;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " * ... adding  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/ali/mobisecenhance/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 350
    .end local v7    # "s":Ljava/lang/String;
    :cond_2
    sget-object v9, Lcom/ali/mobisecenhance/Library;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v10, Lcom/ali/mobisecenhance/Library;->TAG:Ljava/lang/String;

    const-string v11, " * 4/4 adding fallbacks "

    invoke-virtual {v9, v10, v11}, Lcom/ali/mobisecenhance/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string v7, "/system/lib"

    .line 352
    .restart local v7    # "s":Ljava/lang/String;
    sget-object v9, Lcom/ali/mobisecenhance/Library;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v10, Lcom/ali/mobisecenhance/Library;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " * ... adding  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/ali/mobisecenhance/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/ali/mobisecenhance/ReflectMap;->m_context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v11, "files"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 355
    sget-object v9, Lcom/ali/mobisecenhance/Library;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v10, Lcom/ali/mobisecenhance/Library;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " * ... adding  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/ali/mobisecenhance/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "s":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 360
    .restart local v7    # "s":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 362
    sget-object v9, Lcom/ali/mobisecenhance/Library;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v10, Lcom/ali/mobisecenhance/Library;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " YES! find library file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/ali/mobisecenhance/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 366
    .end local v3    # "f":Ljava/io/File;
    :cond_4
    sget-object v9, Lcom/ali/mobisecenhance/Library;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v10, Lcom/ali/mobisecenhance/Library;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " No file found for library "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in following pathes: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    new-instance v12, Ljava/util/TreeSet;

    invoke-direct {v12, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v12}, Ljava/util/TreeSet;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/ali/mobisecenhance/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    new-instance v9, Ljava/lang/UnsatisfiedLinkError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "can\'t find library "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v9

    .line 303
    .end local v1    # "dir":Ljava/lang/String;
    .end local v2    # "dirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "libFileName":Ljava/lang/String;
    .end local v7    # "s":Ljava/lang/String;
    .end local v8    # "v":Ljava/lang/String;
    :catch_0
    move-exception v9

    goto/16 :goto_0
.end method

.method public static forSoCompress_load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "soPath"    # Ljava/lang/String;
    .param p2, "cl"    # Ljava/lang/ClassLoader;

    .prologue
    .line 107
    return-void
.end method

.method public static forSoCompress_loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "soName"    # Ljava/lang/String;
    .param p2, "cl"    # Ljava/lang/ClassLoader;

    .prologue
    .line 111
    return-void
.end method

.method public static isKeepSoload(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/ali/mobisecenhance/Library;->blackSoMap:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 164
    sget-object v1, Lcom/ali/mobisecenhance/Library;->blackSoMap:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 163
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_1
    sget-object v1, Lcom/ali/mobisecenhance/Library;->blackSoMap:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    const/4 v1, 0x1

    .line 173
    :goto_1
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isKeepSoloadLibrary(Ljava/lang/String;)Z
    .locals 2
    .param p0, "soName"    # Ljava/lang/String;

    .prologue
    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/ali/mobisecenhance/Library;->blackSoMap:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 150
    sget-object v1, Lcom/ali/mobisecenhance/Library;->blackSoMap:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    const/4 v1, 0x1

    .line 156
    :goto_1
    return v1

    .line 149
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static native post_arm64Load0(J)V
.end method

.method private static native post_armLoad0(J)V
.end method

.method private static native post_x64Load0(J)V
.end method

.method private static native post_x86Load0(J)V
.end method

.method private static native pre_arm64Load0(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;[ZI)J
.end method

.method private static native pre_armLoad0(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;[ZI)J
.end method

.method private static native pre_x64Load0(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;[ZI)J
.end method

.method private static native pre_x86Load0(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;[ZI)J
.end method


# virtual methods
.method postLoad()V
    .locals 4

    .prologue
    .line 273
    const-class v1, Lcom/ali/mobisecenhance/Library;

    monitor-enter v1

    .line 274
    :try_start_0
    iget v0, p0, Lcom/ali/mobisecenhance/Library;->arch:I

    sparse-switch v0, :sswitch_data_0

    .line 288
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    const-string v2, "this is an unknown shared library "

    invoke-direct {v0, v2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 276
    :sswitch_0
    :try_start_1
    iget-wide v2, p0, Lcom/ali/mobisecenhance/Library;->cookie:J

    invoke-static {v2, v3}, Lcom/ali/mobisecenhance/Library;->post_armLoad0(J)V

    .line 290
    :goto_0
    monitor-exit v1

    .line 291
    return-void

    .line 279
    :sswitch_1
    iget-wide v2, p0, Lcom/ali/mobisecenhance/Library;->cookie:J

    invoke-static {v2, v3}, Lcom/ali/mobisecenhance/Library;->post_x86Load0(J)V

    goto :goto_0

    .line 282
    :sswitch_2
    iget-wide v2, p0, Lcom/ali/mobisecenhance/Library;->cookie:J

    invoke-static {v2, v3}, Lcom/ali/mobisecenhance/Library;->post_x64Load0(J)V

    goto :goto_0

    .line 285
    :sswitch_3
    iget-wide v2, p0, Lcom/ali/mobisecenhance/Library;->cookie:J

    invoke-static {v2, v3}, Lcom/ali/mobisecenhance/Library;->post_arm64Load0(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 274
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x28 -> :sswitch_0
        0x3e -> :sswitch_2
        0xb7 -> :sswitch_3
    .end sparse-switch
.end method

.method preLoad(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;)Z
    .locals 6
    .param p1, "calling"    # Ljava/lang/ClassLoader;
    .param p2, "lib"    # Ljava/io/File;
    .param p3, "proxy"    # Ljava/io/File;

    .prologue
    .line 250
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 251
    .local v0, "success":[Z
    const-class v2, Lcom/ali/mobisecenhance/Library;

    monitor-enter v2

    .line 252
    :try_start_0
    iget v1, p0, Lcom/ali/mobisecenhance/Library;->arch:I

    sparse-switch v1, :sswitch_data_0

    .line 266
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "this is an unknown shared library "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 268
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 254
    :sswitch_0
    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1, v1, v3, v0, v4}, Lcom/ali/mobisecenhance/Library;->pre_armLoad0(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;[ZI)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ali/mobisecenhance/Library;->cookie:J

    .line 268
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    return v1

    .line 257
    :sswitch_1
    :try_start_2
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1, v1, v3, v0, v4}, Lcom/ali/mobisecenhance/Library;->pre_x86Load0(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;[ZI)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ali/mobisecenhance/Library;->cookie:J

    goto :goto_0

    .line 260
    :sswitch_2
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1, v1, v3, v0, v4}, Lcom/ali/mobisecenhance/Library;->pre_x64Load0(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;[ZI)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ali/mobisecenhance/Library;->cookie:J

    goto :goto_0

    .line 263
    :sswitch_3
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1, v1, v3, v0, v4}, Lcom/ali/mobisecenhance/Library;->pre_arm64Load0(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;[ZI)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ali/mobisecenhance/Library;->cookie:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 252
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x28 -> :sswitch_0
        0x3e -> :sswitch_2
        0xb7 -> :sswitch_3
    .end sparse-switch
.end method
