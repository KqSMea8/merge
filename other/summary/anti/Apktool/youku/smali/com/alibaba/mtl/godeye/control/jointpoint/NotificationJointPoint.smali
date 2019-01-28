.class public Lcom/alibaba/mtl/godeye/control/jointpoint/NotificationJointPoint;
.super Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;
.source "NotificationJointPoint.java"


# instance fields
.field private action:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alibaba/mtl/godeye/control/jointpoint/NotificationJointPoint;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/alibaba/mtl/godeye/control/jointpoint/NotificationJointPoint;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/alibaba/mtl/godeye/control/jointpoint/NotificationJointPoint;->action:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/alibaba/mtl/godeye/control/jointpoint/NotificationJointPoint;->uri:Ljava/lang/String;

    .line 14
    return-void
.end method
