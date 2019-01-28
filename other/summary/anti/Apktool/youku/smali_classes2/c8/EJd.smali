.class public final Lc8/EJd;
.super Ljava/lang/Object;
.source "Okio.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lc8/EJd;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lc8/EJd;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static buffer(Lc8/MJd;)Lc8/AJd;
    .locals 2
    .param p0, "source"    # Lc8/MJd;

    .prologue
    .line 46
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    new-instance v0, Lc8/IJd;

    invoke-direct {v0, p0}, Lc8/IJd;-><init>(Lc8/MJd;)V

    return-object v0
.end method

.method public static buffer(Lc8/LJd;)Lc8/zJd;
    .locals 2
    .param p0, "sink"    # Lc8/LJd;

    .prologue
    .line 56
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    new-instance v0, Lc8/GJd;

    invoke-direct {v0, p0}, Lc8/GJd;-><init>(Lc8/LJd;)V

    return-object v0
.end method

.method public static sink(Ljava/io/OutputStream;)Lc8/LJd;
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 62
    new-instance v0, Lc8/OJd;

    invoke-direct {v0}, Lc8/OJd;-><init>()V

    invoke-static {p0, v0}, Lc8/EJd;->sink(Ljava/io/OutputStream;Lc8/OJd;)Lc8/LJd;

    move-result-object v0

    return-object v0
.end method

.method private static sink(Ljava/io/OutputStream;Lc8/OJd;)Lc8/LJd;
    .locals 2
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "timeout"    # Lc8/OJd;

    .prologue
    .line 66
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    new-instance v0, Lc8/CJd;

    invoke-direct {v0, p1, p0}, Lc8/CJd;-><init>(Lc8/OJd;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static source(Ljava/io/File;)Lc8/MJd;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 158
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lc8/EJd;->source(Ljava/io/InputStream;)Lc8/MJd;

    move-result-object v0

    return-object v0
.end method

.method public static source(Ljava/io/InputStream;)Lc8/MJd;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 121
    new-instance v0, Lc8/OJd;

    invoke-direct {v0}, Lc8/OJd;-><init>()V

    invoke-static {p0, v0}, Lc8/EJd;->source(Ljava/io/InputStream;Lc8/OJd;)Lc8/MJd;

    move-result-object v0

    return-object v0
.end method

.method private static source(Ljava/io/InputStream;Lc8/OJd;)Lc8/MJd;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "timeout"    # Lc8/OJd;

    .prologue
    .line 125
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1
    new-instance v0, Lc8/DJd;

    invoke-direct {v0, p1, p0}, Lc8/DJd;-><init>(Lc8/OJd;Ljava/io/InputStream;)V

    return-object v0
.end method
