.class public Lc8/Nbf;
.super Ljava/lang/Object;
.source "MLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Lbf;,
        Lc8/Mbf;
    }
.end annotation


# static fields
.field private static final DEFAULT_LOGGER:Lc8/Kbf;

.field private static volatile mLogger:Lc8/Kbf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    new-instance v0, Lc8/Mbf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/Mbf;-><init>(Lc8/Lbf;)V

    .line 9
    sput-object v0, Lc8/Nbf;->DEFAULT_LOGGER:Lc8/Kbf;

    sput-object v0, Lc8/Nbf;->mLogger:Lc8/Kbf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 33
    sget-object v0, Lc8/Nbf;->mLogger:Lc8/Kbf;

    invoke-interface {v0, p0, p1}, Lc8/Kbf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 17
    sget-object v0, Lc8/Nbf;->mLogger:Lc8/Kbf;

    invoke-interface {v0, p0, p1}, Lc8/Kbf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 21
    sget-object v0, Lc8/Nbf;->mLogger:Lc8/Kbf;

    invoke-interface {v0, p0, p1, p2}, Lc8/Kbf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    return-void
.end method

.method public static set(Lc8/Kbf;)V
    .locals 0
    .param p0, "logger"    # Lc8/Kbf;

    .prologue
    .line 13
    sput-object p0, Lc8/Nbf;->mLogger:Lc8/Kbf;

    .line 14
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 29
    sget-object v0, Lc8/Nbf;->mLogger:Lc8/Kbf;

    invoke-interface {v0, p0, p1}, Lc8/Kbf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 25
    sget-object v0, Lc8/Nbf;->mLogger:Lc8/Kbf;

    invoke-interface {v0, p0, p1, p2}, Lc8/Kbf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    return-void
.end method
