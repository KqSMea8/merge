.class public Lcom/alibaba/mtl/godeye/control/jointpoint/CustomEventJointPoint;
.super Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;
.source "CustomEventJointPoint.java"


# instance fields
.field private eventName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/alibaba/mtl/godeye/control/jointpoint/CustomEventJointPoint;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public setEventName(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/alibaba/mtl/godeye/control/jointpoint/CustomEventJointPoint;->eventName:Ljava/lang/String;

    .line 17
    return-void
.end method
