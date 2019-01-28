.class public Lcom/alibaba/mtl/godeye/control/jointpoint/LifecycleJointPoint;
.super Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;
.source "LifecycleJointPoint.java"


# instance fields
.field private lifecycleMethod:Ljava/lang/String;

.field private page:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/alibaba/mtl/godeye/control/jointpoint/LifecycleJointPoint;->page:Ljava/lang/String;

    return-object v0
.end method

.method public getLifecycleMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/mtl/godeye/control/jointpoint/LifecycleJointPoint;->lifecycleMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alibaba/mtl/godeye/control/jointpoint/LifecycleJointPoint;->page:Ljava/lang/String;

    return-object v0
.end method

.method public setActivity(Ljava/lang/String;)V
    .locals 0
    .param p1, "page"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/alibaba/mtl/godeye/control/jointpoint/LifecycleJointPoint;->page:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public setLifecycleMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "lifecycleMethod"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alibaba/mtl/godeye/control/jointpoint/LifecycleJointPoint;->lifecycleMethod:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setPage(Ljava/lang/String;)V
    .locals 0
    .param p1, "page"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/alibaba/mtl/godeye/control/jointpoint/LifecycleJointPoint;->page:Ljava/lang/String;

    .line 22
    return-void
.end method
