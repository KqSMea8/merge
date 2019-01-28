.class public final enum Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;
.super Ljava/lang/Enum;
.source "TaskStatusInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/qIf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TraceMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;

.field public static final enum BATCH:Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;

.field public static final enum OTHERS:Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;

.field public static final enum REALTIME:Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 113
    new-instance v0, Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;

    const-string/jumbo v1, "REALTIME"

    invoke-direct {v0, v1, v2}, Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;->REALTIME:Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;

    .line 114
    new-instance v0, Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;

    const-string/jumbo v1, "BATCH"

    invoke-direct {v0, v1, v3}, Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;->BATCH:Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;

    .line 115
    new-instance v0, Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;

    const-string/jumbo v1, "OTHERS"

    invoke-direct {v0, v1, v4}, Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;->OTHERS:Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;

    .line 112
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;

    sget-object v1, Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;->REALTIME:Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;->BATCH:Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;->OTHERS:Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;->$VALUES:[Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;

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
    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 112
    const-class v0, Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;

    return-object v0
.end method

.method public static values()[Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;->$VALUES:[Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;

    invoke-virtual {v0}, [Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;

    return-object v0
.end method
