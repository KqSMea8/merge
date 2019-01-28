.class public final enum Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;
.super Ljava/lang/Enum;
.source "MonitorTaskExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ZIf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MonitorProcessExecuteMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;

.field public static final enum MERGE_TASK:Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;

.field public static final enum SINGLE_TASK:Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    new-instance v0, Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;

    const-string/jumbo v1, "MERGE_TASK"

    invoke-direct {v0, v1, v2}, Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;->MERGE_TASK:Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;

    .line 118
    new-instance v0, Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;

    const-string/jumbo v1, "SINGLE_TASK"

    invoke-direct {v0, v1, v3}, Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;->SINGLE_TASK:Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;

    .line 116
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;

    sget-object v1, Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;->MERGE_TASK:Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;->SINGLE_TASK:Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;->$VALUES:[Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 116
    const-class v0, Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;

    return-object v0
.end method

.method public static values()[Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;->$VALUES:[Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;

    invoke-virtual {v0}, [Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;

    return-object v0
.end method
