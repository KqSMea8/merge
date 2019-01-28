.class public final enum Lcom/youku/phone/freeflow/FreeFlowStatusEnum;
.super Ljava/lang/Enum;
.source "FreeFlowStatusEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/phone/freeflow/FreeFlowStatusEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

.field public static final enum FreeFlowStatusExpired:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

.field public static final enum FreeFlowStatusNotSubscribed:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

.field public static final enum FreeFlowStatusRunOut:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

.field public static final enum FreeFlowStatusSubscribed:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

.field public static final enum FreeFlowStatusUnKnown:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

.field public static final enum FreeFlowStatusUnsubscribed:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    const-string/jumbo v1, "FreeFlowStatusUnKnown"

    invoke-direct {v0, v1, v3}, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;->FreeFlowStatusUnKnown:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    .line 17
    new-instance v0, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    const-string/jumbo v1, "FreeFlowStatusNotSubscribed"

    invoke-direct {v0, v1, v4}, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;->FreeFlowStatusNotSubscribed:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    .line 22
    new-instance v0, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    const-string/jumbo v1, "FreeFlowStatusSubscribed"

    invoke-direct {v0, v1, v5}, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;->FreeFlowStatusSubscribed:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    .line 27
    new-instance v0, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    const-string/jumbo v1, "FreeFlowStatusUnsubscribed"

    invoke-direct {v0, v1, v6}, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;->FreeFlowStatusUnsubscribed:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    .line 32
    new-instance v0, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    const-string/jumbo v1, "FreeFlowStatusExpired"

    invoke-direct {v0, v1, v7}, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;->FreeFlowStatusExpired:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    .line 37
    new-instance v0, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    const-string/jumbo v1, "FreeFlowStatusRunOut"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;->FreeFlowStatusRunOut:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    .line 7
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    sget-object v1, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;->FreeFlowStatusUnKnown:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;->FreeFlowStatusNotSubscribed:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;->FreeFlowStatusSubscribed:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;->FreeFlowStatusUnsubscribed:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;->FreeFlowStatusExpired:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;->FreeFlowStatusRunOut:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;->$VALUES:[Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/phone/freeflow/FreeFlowStatusEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    return-object v0
.end method

.method public static values()[Lcom/youku/phone/freeflow/FreeFlowStatusEnum;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;->$VALUES:[Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    invoke-virtual {v0}, [Lcom/youku/phone/freeflow/FreeFlowStatusEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    return-object v0
.end method
