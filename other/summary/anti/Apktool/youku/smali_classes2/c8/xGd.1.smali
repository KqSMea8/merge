.class public Lc8/xGd;
.super Ljava/lang/Object;
.source "DebugLogger.java"


# static fields
.field public static debug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lc8/xGd;->debug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {}, Lc8/TGd;->get()Lc8/TGd;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lc8/TGd;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {}, Lc8/TGd;->get()Lc8/TGd;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lc8/TGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static flush()V
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Lc8/TGd;->get()Lc8/TGd;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/TGd;->flush(Z)V

    .line 32
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {}, Lc8/TGd;->get()Lc8/TGd;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lc8/TGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static initDebugLogger(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-static {}, Lc8/TGd;->get()Lc8/TGd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/TGd;->init(Landroid/content/Context;)V

    .line 18
    invoke-static {}, Lc8/TGd;->get()Lc8/TGd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/Android/data/pushSdk/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lc8/TGd;->setFilePath(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static isDebuggable()Z
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lc8/TGd;->get()Lc8/TGd;

    move-result-object v0

    invoke-virtual {v0}, Lc8/TGd;->isDebugMode()Z

    move-result v0

    return v0
.end method

.method public static switchDebug(Z)V
    .locals 1
    .param p0, "flag"    # Z

    .prologue
    .line 27
    invoke-static {}, Lc8/TGd;->get()Lc8/TGd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/TGd;->setDebugMode(Z)V

    .line 28
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {}, Lc8/TGd;->get()Lc8/TGd;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lc8/TGd;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method
