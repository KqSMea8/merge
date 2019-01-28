.class public Lcom/alibaba/mtl/godeye/control/jointpoint/TimerJointPoint;
.super Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;
.source "TimerJointPoint.java"


# instance fields
.field private waitMilliseconds:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;-><init>()V

    return-void
.end method


# virtual methods
.method public getWaitMilliseconds()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/alibaba/mtl/godeye/control/jointpoint/TimerJointPoint;->waitMilliseconds:I

    return v0
.end method

.method public setWaitMilliseconds(I)V
    .locals 0
    .param p1, "waitMilliseconds"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/alibaba/mtl/godeye/control/jointpoint/TimerJointPoint;->waitMilliseconds:I

    .line 18
    return-void
.end method
