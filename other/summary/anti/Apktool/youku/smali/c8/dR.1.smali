.class public final Lc8/dR;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static DEBUG_LOG:Z

.field public static Tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Lc8/dR;->DEBUG_LOG:Z

    .line 16
    const-string/jumbo v0, "mmachina"

    sput-object v0, Lc8/dR;->Tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 32
    sget-boolean v0, Lc8/dR;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 33
    if-eqz p0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 25
    sget-boolean v0, Lc8/dR;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 26
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 56
    sget-boolean v0, Lc8/dR;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 57
    if-eqz p0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    :cond_0
    return-void
.end method
