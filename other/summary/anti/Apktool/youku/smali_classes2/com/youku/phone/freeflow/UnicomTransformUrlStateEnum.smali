.class public final enum Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;
.super Ljava/lang/Enum;
.source "UnicomTransformUrlStateEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;

.field public static final enum TRANSFORM_URL_FAILED:Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;

.field public static final enum TRANSFORM_URL_SUCCESS:Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;

.field public static final enum TRANSFORM_URL_UNSTART:Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;

    const-string/jumbo v1, "TRANSFORM_URL_UNSTART"

    invoke-direct {v0, v1, v2}, Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;->TRANSFORM_URL_UNSTART:Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;

    .line 16
    new-instance v0, Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;

    const-string/jumbo v1, "TRANSFORM_URL_FAILED"

    invoke-direct {v0, v1, v3}, Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;->TRANSFORM_URL_FAILED:Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;

    .line 21
    new-instance v0, Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;

    const-string/jumbo v1, "TRANSFORM_URL_SUCCESS"

    invoke-direct {v0, v1, v4}, Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;->TRANSFORM_URL_SUCCESS:Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;

    sget-object v1, Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;->TRANSFORM_URL_UNSTART:Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;->TRANSFORM_URL_FAILED:Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;->TRANSFORM_URL_SUCCESS:Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;

    aput-object v1, v0, v4

    sput-object v0, Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;->$VALUES:[Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;

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

.method public static valueOf(Ljava/lang/String;)Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;

    return-object v0
.end method

.method public static values()[Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;->$VALUES:[Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;

    invoke-virtual {v0}, [Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;

    return-object v0
.end method
