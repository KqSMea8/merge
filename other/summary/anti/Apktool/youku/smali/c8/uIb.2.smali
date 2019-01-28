.class public Lc8/uIb;
.super Ljava/lang/Object;
.source "AlibcPromotionLog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AlibcPromotionSDK"

.field public static isDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lc8/uIb;->isDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createLog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 30
    .local v0, "buffer":Ljava/lang/StringBuffer;
    if-nez p0, :cond_0

    const-string/jumbo p0, ""

    .end local p0    # "tag":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    const-string/jumbo v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    if-nez p1, :cond_1

    const-string/jumbo p1, ""

    .end local p1    # "log":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 16
    sget-boolean v0, Lc8/uIb;->isDebug:Z

    if-eqz v0, :cond_0

    .line 17
    invoke-static {p0, p1}, Lc8/uIb;->createLog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 23
    sget-boolean v0, Lc8/uIb;->isDebug:Z

    if-eqz v0, :cond_0

    .line 24
    const-string/jumbo v0, "AlibcPromotionSDK"

    invoke-static {p0, p1}, Lc8/uIb;->createLog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_0
    return-void
.end method
