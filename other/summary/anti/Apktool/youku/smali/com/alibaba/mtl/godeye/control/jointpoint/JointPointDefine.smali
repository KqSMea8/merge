.class public final enum Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;
.super Ljava/lang/Enum;
.source "JointPointDefine.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

.field public static final enum BACKGROUND:Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

.field public static final enum CUSTOM_JOINT_POINT:Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

.field public static final enum FOREGROUND:Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

.field public static final enum LIFECYCLE:Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

.field public static final enum NOTIFICATION:Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

.field public static final enum STARTUP:Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

.field public static final enum TIMER:Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;


# instance fields
.field private jointPointClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;",
            ">;"
        }
    .end annotation
.end field

.field private jointPointType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 10
    new-instance v0, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

    const-string/jumbo v1, "LIFECYCLE"

    const-string/jumbo v2, "lifecycle"

    const-class v3, Lcom/alibaba/mtl/godeye/control/jointpoint/LifecycleJointPoint;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;->LIFECYCLE:Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

    .line 11
    new-instance v0, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

    const-string/jumbo v1, "NOTIFICATION"

    const-string/jumbo v2, "notification"

    const-class v3, Lcom/alibaba/mtl/godeye/control/jointpoint/NotificationJointPoint;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;->NOTIFICATION:Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

    .line 12
    new-instance v0, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

    const-string/jumbo v1, "STARTUP"

    const-string/jumbo v2, "startup"

    const-class v3, Lcom/alibaba/mtl/godeye/control/jointpoint/StartupJointPoint;

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;->STARTUP:Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

    .line 13
    new-instance v0, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

    const-string/jumbo v1, "TIMER"

    const-string/jumbo v2, "timer"

    const-class v3, Lcom/alibaba/mtl/godeye/control/jointpoint/TimerJointPoint;

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;->TIMER:Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

    .line 14
    new-instance v0, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

    const-string/jumbo v1, "CUSTOM_JOINT_POINT"

    const-string/jumbo v2, "event"

    const-class v3, Lcom/alibaba/mtl/godeye/control/jointpoint/CustomEventJointPoint;

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;->CUSTOM_JOINT_POINT:Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

    .line 15
    new-instance v0, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

    const-string/jumbo v1, "BACKGROUND"

    const/4 v2, 0x5

    const-string/jumbo v3, "background"

    const-class v4, Lcom/alibaba/mtl/godeye/control/jointpoint/EnterBackgroundJointPoint;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;->BACKGROUND:Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

    .line 16
    new-instance v0, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

    const-string/jumbo v1, "FOREGROUND"

    const/4 v2, 0x6

    const-string/jumbo v3, "foreground"

    const-class v4, Lcom/alibaba/mtl/godeye/control/jointpoint/EnterForegroundJointPoint;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;->FOREGROUND:Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

    .line 8
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

    sget-object v1, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;->LIFECYCLE:Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;->NOTIFICATION:Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;->STARTUP:Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;->TIMER:Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;->CUSTOM_JOINT_POINT:Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;->BACKGROUND:Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;->FOREGROUND:Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;->$VALUES:[Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p3, "jointPointType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p4, "jointPointClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;->jointPointType:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;->jointPointClass:Ljava/lang/Class;

    .line 24
    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;
    .locals 5
    .param p0, "jointPointType"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {}, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;->values()[Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

    move-result-object v0

    .local v0, "arr$":[Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 37
    .local v2, "jointPoint":Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;
    iget-object v4, v2, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;->jointPointType:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    .end local v2    # "jointPoint":Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;
    :goto_1
    return-object v2

    .line 36
    .restart local v2    # "jointPoint":Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    .end local v2    # "jointPoint":Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;->$VALUES:[Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

    invoke-virtual {v0}, [Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;

    return-object v0
.end method


# virtual methods
.method public getJointPointClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;->jointPointClass:Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/mtl/godeye/control/jointpoint/JointPointDefine;->jointPointType:Ljava/lang/String;

    return-object v0
.end method
