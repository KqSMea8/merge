.class public Lc8/egn;
.super Ljava/lang/Object;
.source "LogAgent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Download.V2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 16
    const-string/jumbo v0, "Download.V2"

    invoke-static {v0, p0}, Lc8/egn;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 13
    return-void
.end method

.method public static verbose(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 24
    const-string/jumbo v0, "Download.V2"

    invoke-static {v0, p0}, Lc8/egn;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 21
    return-void
.end method
