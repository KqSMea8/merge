.class public Lc8/MJ;
.super Ljava/lang/Object;
.source "HeartbeatManager.java"


# static fields
.field private static volatile heartbeatFactory:Lc8/OJ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lc8/LJ;

    invoke-direct {v0}, Lc8/LJ;-><init>()V

    sput-object v0, Lc8/MJ;->heartbeatFactory:Lc8/OJ;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHeartbeatFactory()Lc8/OJ;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lc8/MJ;->heartbeatFactory:Lc8/OJ;

    return-object v0
.end method
