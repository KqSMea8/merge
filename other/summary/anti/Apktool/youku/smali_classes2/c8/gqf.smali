.class public Lc8/gqf;
.super Ljava/lang/Object;
.source "NativeCrashMonitor.java"

# interfaces
.implements Lc8/SSb;


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final TIME_SPACE:J = 0x2710L


# instance fields
.field startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "NativeCrashMonitor"

    sput-object v0, Lc8/gqf;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "startTime"    # J

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Lc8/gqf;->startTime:J

    .line 25
    return-void
.end method


# virtual methods
.method public onCrashCaught(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/util/Map;
    .locals 10
    .param p1, "pThread"    # Ljava/lang/Thread;
    .param p2, "pException"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 31
    .local v0, "curentTime":J
    iget-wide v6, p0, Lc8/gqf;->startTime:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x2710

    cmp-long v5, v6, v8

    if-gtz v5, :cond_0

    .line 32
    invoke-static {}, Lc8/tUf;->getInstance()Lc8/tUf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/tUf;->setNativeCrashFlag()V

    .line 42
    .end local v0    # "curentTime":J
    :cond_0
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 34
    :cond_1
    if-eqz p2, :cond_0

    .line 35
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 36
    .local v3, "outputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/PrintStream;

    invoke-direct {v4, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 37
    .local v4, "printStream":Ljava/io/PrintStream;
    invoke-virtual {p2, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 38
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "_CF_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 39
    .local v2, "isCrash":Z
    sget-object v5, Lc8/gqf;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "the crash message is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-static {}, Lc8/tUf;->getInstance()Lc8/tUf;

    move-result-object v5

    invoke-virtual {v5, v2}, Lc8/tUf;->setJavaCrashFlag(Z)V

    goto :goto_0
.end method
