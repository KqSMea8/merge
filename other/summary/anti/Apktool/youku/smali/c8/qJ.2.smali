.class public Lc8/qJ;
.super Ljava/lang/Object;
.source "AppMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/pJ;
    }
.end annotation


# static fields
.field private static volatile appMonitor:Lc8/sJ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lc8/pJ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/pJ;-><init>(Lc8/sJ;)V

    sput-object v0, Lc8/qJ;->appMonitor:Lc8/sJ;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static getInstance()Lc8/sJ;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lc8/qJ;->appMonitor:Lc8/sJ;

    return-object v0
.end method

.method public static setInstance(Lc8/sJ;)V
    .locals 1
    .param p0, "appMonitor"    # Lc8/sJ;

    .prologue
    .line 18
    new-instance v0, Lc8/pJ;

    invoke-direct {v0, p0}, Lc8/pJ;-><init>(Lc8/sJ;)V

    sput-object v0, Lc8/qJ;->appMonitor:Lc8/sJ;

    .line 19
    return-void
.end method
