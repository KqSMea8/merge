.class public Lc8/AWb;
.super Lc8/cWb;
.source "OnlineMonitorGodeyeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/zWb;,
        Lc8/xWb;
    }
.end annotation


# static fields
.field private static final command:I = 0x4

.field private static final commandSet:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 25
    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lc8/cWb;-><init>(II)V

    .line 26
    return-void
.end method


# virtual methods
.method public getStartJointPointCallback()Lc8/oWb;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lc8/xWb;

    invoke-direct {v0, p0}, Lc8/xWb;-><init>(Lc8/AWb;)V

    return-object v0
.end method

.method public getStopJointPointCallback()Lc8/oWb;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lc8/zWb;

    invoke-direct {v0, p0}, Lc8/zWb;-><init>(Lc8/AWb;)V

    return-object v0
.end method
