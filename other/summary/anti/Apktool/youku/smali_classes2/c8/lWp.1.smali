.class public final Lc8/lWp;
.super Ljava/lang/Object;
.source "Okio.java"


# static fields
.field static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lc8/lWp;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lc8/lWp;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static appendingSink(Ljava/io/File;)Lc8/tWp;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 185
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, Lc8/lWp;->sink(Ljava/io/OutputStream;)Lc8/tWp;

    move-result-object v0

    return-object v0
.end method

.method public static blackhole()Lc8/tWp;
    .locals 1

    .prologue
    .line 198
    new-instance v0, Lc8/jWp;

    invoke-direct {v0}, Lc8/jWp;-><init>()V

    return-object v0
.end method

.method public static buffer(Lc8/tWp;)Lc8/ZVp;
    .locals 1
    .param p0, "sink"    # Lc8/tWp;

    .prologue
    .line 60
    new-instance v0, Lc8/oWp;

    invoke-direct {v0, p0}, Lc8/oWp;-><init>(Lc8/tWp;)V

    return-object v0
.end method

.method public static buffer(Lc8/uWp;)Lc8/aWp;
    .locals 1
    .param p0, "source"    # Lc8/uWp;

    .prologue
    .line 51
    new-instance v0, Lc8/qWp;

    invoke-direct {v0, p0}, Lc8/qWp;-><init>(Lc8/uWp;)V

    return-object v0
.end method

.method static isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .locals 2
    .param p0, "e"    # Ljava/lang/AssertionError;

    .prologue
    .line 260
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "getsockname failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 260
    goto :goto_0
.end method

.method public static sink(Ljava/io/File;)Lc8/tWp;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 179
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lc8/lWp;->sink(Ljava/io/OutputStream;)Lc8/tWp;

    move-result-object v0

    return-object v0
.end method

.method public static sink(Ljava/io/OutputStream;)Lc8/tWp;
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 65
    new-instance v0, Lc8/wWp;

    invoke-direct {v0}, Lc8/wWp;-><init>()V

    invoke-static {p0, v0}, Lc8/lWp;->sink(Ljava/io/OutputStream;Lc8/wWp;)Lc8/tWp;

    move-result-object v0

    return-object v0
.end method

.method private static sink(Ljava/io/OutputStream;Lc8/wWp;)Lc8/tWp;
    .locals 2
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "timeout"    # Lc8/wWp;

    .prologue
    .line 69
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    new-instance v0, Lc8/hWp;

    invoke-direct {v0, p1, p0}, Lc8/hWp;-><init>(Lc8/wWp;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static sink(Ljava/net/Socket;)Lc8/tWp;
    .locals 4
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "socket == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    :cond_0
    invoke-static {p0}, Lc8/lWp;->timeout(Ljava/net/Socket;)Lc8/UVp;

    move-result-object v1

    .line 118
    .local v1, "timeout":Lc8/UVp;
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {v2, v1}, Lc8/lWp;->sink(Ljava/io/OutputStream;Lc8/wWp;)Lc8/tWp;

    move-result-object v0

    .line 119
    .local v0, "sink":Lc8/tWp;
    invoke-virtual {v1, v0}, Lc8/UVp;->sink(Lc8/tWp;)Lc8/tWp;

    move-result-object v2

    return-object v2
.end method

.method public static source(Ljava/io/File;)Lc8/uWp;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 166
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lc8/lWp;->source(Ljava/io/InputStream;)Lc8/uWp;

    move-result-object v0

    return-object v0
.end method

.method public static source(Ljava/io/InputStream;)Lc8/uWp;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 124
    new-instance v0, Lc8/wWp;

    invoke-direct {v0}, Lc8/wWp;-><init>()V

    invoke-static {p0, v0}, Lc8/lWp;->source(Ljava/io/InputStream;Lc8/wWp;)Lc8/uWp;

    move-result-object v0

    return-object v0
.end method

.method private static source(Ljava/io/InputStream;Lc8/wWp;)Lc8/uWp;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "timeout"    # Lc8/wWp;

    .prologue
    .line 128
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1
    new-instance v0, Lc8/iWp;

    invoke-direct {v0, p1, p0}, Lc8/iWp;-><init>(Lc8/wWp;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static source(Ljava/net/Socket;)Lc8/uWp;
    .locals 4
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "socket == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    :cond_0
    invoke-static {p0}, Lc8/lWp;->timeout(Ljava/net/Socket;)Lc8/UVp;

    move-result-object v1

    .line 223
    .local v1, "timeout":Lc8/UVp;
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v1}, Lc8/lWp;->source(Ljava/io/InputStream;Lc8/wWp;)Lc8/uWp;

    move-result-object v0

    .line 224
    .local v0, "source":Lc8/uWp;
    invoke-virtual {v1, v0}, Lc8/UVp;->source(Lc8/uWp;)Lc8/uWp;

    move-result-object v2

    return-object v2
.end method

.method private static timeout(Ljava/net/Socket;)Lc8/UVp;
    .locals 1
    .param p0, "socket"    # Ljava/net/Socket;

    .prologue
    .line 228
    new-instance v0, Lc8/kWp;

    invoke-direct {v0, p0}, Lc8/kWp;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method
