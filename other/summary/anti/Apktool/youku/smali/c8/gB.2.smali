.class public Lc8/gB;
.super Ljava/lang/Object;
.source "AtlasLog.java"


# static fields
.field private static final PreFix:Ljava/lang/String; = "Atlas."

.field private static externalLogger:Lc8/dB;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 243
    sget-object v0, Lc8/gB;->externalLogger:Lc8/dB;

    if-eqz v0, :cond_0

    .line 244
    sget-object v0, Lc8/gB;->externalLogger:Lc8/dB;

    const-string/jumbo v1, "Atlas."

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lc8/dB;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 258
    sget-object v0, Lc8/gB;->externalLogger:Lc8/dB;

    if-eqz v0, :cond_0

    .line 259
    sget-object v0, Lc8/gB;->externalLogger:Lc8/dB;

    const-string/jumbo v1, "Atlas."

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lc8/dB;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 266
    sget-object v0, Lc8/gB;->externalLogger:Lc8/dB;

    if-eqz v0, :cond_0

    .line 267
    sget-object v0, Lc8/gB;->externalLogger:Lc8/dB;

    const-string/jumbo v1, "Atlas."

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lc8/dB;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 235
    sget-object v0, Lc8/gB;->externalLogger:Lc8/dB;

    if-eqz v0, :cond_0

    .line 236
    sget-object v0, Lc8/gB;->externalLogger:Lc8/dB;

    const-string/jumbo v1, "Atlas."

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lc8/dB;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_0
    return-void
.end method

.method public static setExternalLogger(Lc8/dB;)V
    .locals 0
    .param p0, "logger"    # Lc8/dB;

    .prologue
    .line 223
    sput-object p0, Lc8/gB;->externalLogger:Lc8/dB;

    .line 224
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 227
    sget-object v0, Lc8/gB;->externalLogger:Lc8/dB;

    if-eqz v0, :cond_0

    .line 228
    sget-object v0, Lc8/gB;->externalLogger:Lc8/dB;

    const-string/jumbo v1, "Atlas."

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lc8/dB;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 252
    sget-object v0, Lc8/gB;->externalLogger:Lc8/dB;

    if-eqz v0, :cond_0

    .line 253
    sget-object v0, Lc8/gB;->externalLogger:Lc8/dB;

    const-string/jumbo v1, "Atlas."

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lc8/dB;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_0
    return-void
.end method
