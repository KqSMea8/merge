.class public Lc8/Lmf;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Kmf;
    }
.end annotation


# static fields
.field private static a:Lc8/tmf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lc8/Lmf;->a:Lc8/tmf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 7

    .prologue
    .line 35
    sget-object v0, Lc8/Lmf;->a:Lc8/tmf;

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lc8/Lmf;->a:Lc8/tmf;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lc8/tmf;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 38
    :cond_0
    return-void
.end method

.method public static commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lc8/Lmf;->a:Lc8/tmf;

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Lc8/Lmf;->a:Lc8/tmf;

    invoke-interface {v0, p0, p1, p2, p3}, Lc8/tmf;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_0
    return-void
.end method

.method public static commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 29
    sget-object v0, Lc8/Lmf;->a:Lc8/tmf;

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Lc8/Lmf;->a:Lc8/tmf;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lc8/tmf;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method

.method public static commitStat(Ljava/lang/String;Ljava/lang/String;Lc8/Kmf;)V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lc8/Lmf;->a:Lc8/tmf;

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lc8/Lmf;->a:Lc8/tmf;

    invoke-interface {v0, p0, p1, p2}, Lc8/tmf;->commitStat(Ljava/lang/String;Ljava/lang/String;Lc8/Kmf;)V

    .line 44
    :cond_0
    return-void
.end method

.method public static commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lc8/Lmf;->a:Lc8/tmf;

    if-eqz v0, :cond_0

    .line 18
    sget-object v0, Lc8/Lmf;->a:Lc8/tmf;

    invoke-interface {v0, p0, p1, p2}, Lc8/tmf;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_0
    return-void
.end method

.method public static setInstance(Lc8/tmf;)V
    .locals 0

    .prologue
    .line 13
    sput-object p0, Lc8/Lmf;->a:Lc8/tmf;

    .line 14
    return-void
.end method
