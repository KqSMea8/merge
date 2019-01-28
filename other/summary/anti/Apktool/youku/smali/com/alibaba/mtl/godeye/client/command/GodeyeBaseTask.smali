.class public Lcom/alibaba/mtl/godeye/client/command/GodeyeBaseTask;
.super Ljava/lang/Object;
.source "GodeyeBaseTask.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final KEY_JOINT_POINT_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_START_JOINT_POINT:Ljava/lang/String; = "start"

.field private static final KEY_STOP_JOINT_POINT:Ljava/lang/String; = "stop"


# instance fields
.field private sequence:Ljava/lang/String;

.field private start:Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;

.field private stop:Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;


# direct methods
.method public constructor <init>(Lc8/RWb;)V
    .locals 3
    .param p1, "packet"    # Lc8/RWb;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string/jumbo v2, "sequence"

    invoke-interface {p1, v2}, Lc8/RWb;->read(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/mtl/godeye/client/command/GodeyeBaseTask;->sequence:Ljava/lang/String;

    .line 26
    const-string/jumbo v2, "start"

    invoke-interface {p1, v2}, Lc8/RWb;->read(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 27
    .local v0, "startJointPointJson":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "stop"

    invoke-interface {p1, v2}, Lc8/RWb;->read(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    .line 28
    .local v1, "stopJointPointJson":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_0

    .line 29
    invoke-direct {p0, v0}, Lcom/alibaba/mtl/godeye/client/command/GodeyeBaseTask;->parseJointPoint(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/mtl/godeye/client/command/GodeyeBaseTask;->start:Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;

    .line 31
    :cond_0
    if-eqz v1, :cond_1

    .line 32
    invoke-direct {p0, v1}, Lcom/alibaba/mtl/godeye/client/command/GodeyeBaseTask;->parseJointPoint(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/mtl/godeye/client/command/GodeyeBaseTask;->stop:Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;

    .line 34
    :cond_1
    return-void
.end method

.method private parseJointPoint(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;
    .locals 3
    .param p1, "jointPointJson"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 42
    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;->fromName(Ljava/lang/String;)Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

    move-result-object v0

    .line 43
    .local v0, "define":Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;
    if-nez v0, :cond_0

    .line 44
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Invalid jointpoint argument"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;->getJointPointClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->toJavaObject(Lc8/AIb;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;

    return-object v1
.end method


# virtual methods
.method public getSequence()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/mtl/godeye/client/command/GodeyeBaseTask;->sequence:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/mtl/godeye/client/command/GodeyeBaseTask;->start:Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;

    return-object v0
.end method

.method public getStop()Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/mtl/godeye/client/command/GodeyeBaseTask;->stop:Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;

    return-object v0
.end method

.method public isEmptyTask()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/mtl/godeye/client/command/GodeyeBaseTask;->start:Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSequence(Ljava/lang/String;)V
    .locals 0
    .param p1, "sequence"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alibaba/mtl/godeye/client/command/GodeyeBaseTask;->sequence:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setStart(Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;)V
    .locals 0
    .param p1, "start"    # Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/mtl/godeye/client/command/GodeyeBaseTask;->start:Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;

    .line 63
    return-void
.end method

.method public setStop(Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;)V
    .locals 0
    .param p1, "stop"    # Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alibaba/mtl/godeye/client/command/GodeyeBaseTask;->stop:Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;

    .line 71
    return-void
.end method
