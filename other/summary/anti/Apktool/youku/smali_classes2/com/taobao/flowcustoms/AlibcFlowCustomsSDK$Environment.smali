.class public final enum Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;
.super Ljava/lang/Enum;
.source "AlibcFlowCustomsSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/unf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Environment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

.field public static final enum ONLINE:Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

.field public static final enum PRE:Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

.field public static final enum TEST:Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 211
    new-instance v0, Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    const-string/jumbo v1, "TEST"

    invoke-direct {v0, v1, v2}, Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;->TEST:Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    new-instance v0, Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    const-string/jumbo v1, "ONLINE"

    invoke-direct {v0, v1, v3}, Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;->ONLINE:Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    new-instance v0, Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    const-string/jumbo v1, "PRE"

    invoke-direct {v0, v1, v4}, Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;->PRE:Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    .line 210
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    sget-object v1, Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;->TEST:Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;->ONLINE:Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;->PRE:Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;->$VALUES:[Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

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
    .line 210
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 210
    const-class v0, Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    return-object v0
.end method

.method public static values()[Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;->$VALUES:[Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    invoke-virtual {v0}, [Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    return-object v0
.end method
