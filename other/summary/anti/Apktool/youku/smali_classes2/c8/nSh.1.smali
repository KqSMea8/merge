.class public Lc8/nSh;
.super Ljava/lang/Object;
.source "Logger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 54
    sget-boolean v0, Lc8/oSh;->isShowLog:Z

    if-eqz v0, :cond_1

    .line 55
    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    .end local p1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 59
    sget-boolean v0, Lc8/oSh;->isShowLog:Z

    if-eqz v0, :cond_1

    .line 60
    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    .end local p1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 69
    sget-boolean v0, Lc8/oSh;->isShowLog:Z

    if-eqz v0, :cond_1

    .line 70
    const-string/jumbo v0, "HttpCommunication"

    if-nez p0, :cond_0

    const-string/jumbo p0, ""

    .end local p0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    :cond_1
    return-void
.end method
