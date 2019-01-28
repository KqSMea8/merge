.class public final enum Lcom/youku/phone/freeflow/FreeFlowQualityEnum;
.super Ljava/lang/Enum;
.source "FreeFlowQualityEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/phone/freeflow/FreeFlowQualityEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/phone/freeflow/FreeFlowQualityEnum;

.field public static final enum FreeFlowQuality3GP:Lcom/youku/phone/freeflow/FreeFlowQualityEnum;

.field public static final enum FreeFlowQualityFLV:Lcom/youku/phone/freeflow/FreeFlowQualityEnum;

.field public static final enum FreeFlowQualityHD2:Lcom/youku/phone/freeflow/FreeFlowQualityEnum;

.field public static final enum FreeFlowQualityHD3:Lcom/youku/phone/freeflow/FreeFlowQualityEnum;

.field public static final enum FreeFlowQualityMP4:Lcom/youku/phone/freeflow/FreeFlowQualityEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/youku/phone/freeflow/FreeFlowQualityEnum;

    const-string/jumbo v1, "FreeFlowQuality3GP"

    invoke-direct {v0, v1, v2}, Lcom/youku/phone/freeflow/FreeFlowQualityEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/freeflow/FreeFlowQualityEnum;->FreeFlowQuality3GP:Lcom/youku/phone/freeflow/FreeFlowQualityEnum;

    .line 16
    new-instance v0, Lcom/youku/phone/freeflow/FreeFlowQualityEnum;

    const-string/jumbo v1, "FreeFlowQualityFLV"

    invoke-direct {v0, v1, v3}, Lcom/youku/phone/freeflow/FreeFlowQualityEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/freeflow/FreeFlowQualityEnum;->FreeFlowQualityFLV:Lcom/youku/phone/freeflow/FreeFlowQualityEnum;

    .line 21
    new-instance v0, Lcom/youku/phone/freeflow/FreeFlowQualityEnum;

    const-string/jumbo v1, "FreeFlowQualityMP4"

    invoke-direct {v0, v1, v4}, Lcom/youku/phone/freeflow/FreeFlowQualityEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/freeflow/FreeFlowQualityEnum;->FreeFlowQualityMP4:Lcom/youku/phone/freeflow/FreeFlowQualityEnum;

    .line 26
    new-instance v0, Lcom/youku/phone/freeflow/FreeFlowQualityEnum;

    const-string/jumbo v1, "FreeFlowQualityHD2"

    invoke-direct {v0, v1, v5}, Lcom/youku/phone/freeflow/FreeFlowQualityEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/freeflow/FreeFlowQualityEnum;->FreeFlowQualityHD2:Lcom/youku/phone/freeflow/FreeFlowQualityEnum;

    .line 31
    new-instance v0, Lcom/youku/phone/freeflow/FreeFlowQualityEnum;

    const-string/jumbo v1, "FreeFlowQualityHD3"

    invoke-direct {v0, v1, v6}, Lcom/youku/phone/freeflow/FreeFlowQualityEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/freeflow/FreeFlowQualityEnum;->FreeFlowQualityHD3:Lcom/youku/phone/freeflow/FreeFlowQualityEnum;

    .line 7
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/youku/phone/freeflow/FreeFlowQualityEnum;

    sget-object v1, Lcom/youku/phone/freeflow/FreeFlowQualityEnum;->FreeFlowQuality3GP:Lcom/youku/phone/freeflow/FreeFlowQualityEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/phone/freeflow/FreeFlowQualityEnum;->FreeFlowQualityFLV:Lcom/youku/phone/freeflow/FreeFlowQualityEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/phone/freeflow/FreeFlowQualityEnum;->FreeFlowQualityMP4:Lcom/youku/phone/freeflow/FreeFlowQualityEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youku/phone/freeflow/FreeFlowQualityEnum;->FreeFlowQualityHD2:Lcom/youku/phone/freeflow/FreeFlowQualityEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/youku/phone/freeflow/FreeFlowQualityEnum;->FreeFlowQualityHD3:Lcom/youku/phone/freeflow/FreeFlowQualityEnum;

    aput-object v1, v0, v6

    sput-object v0, Lcom/youku/phone/freeflow/FreeFlowQualityEnum;->$VALUES:[Lcom/youku/phone/freeflow/FreeFlowQualityEnum;

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

.method public static valueOf(Ljava/lang/String;)Lcom/youku/phone/freeflow/FreeFlowQualityEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/youku/phone/freeflow/FreeFlowQualityEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/phone/freeflow/FreeFlowQualityEnum;

    return-object v0
.end method

.method public static values()[Lcom/youku/phone/freeflow/FreeFlowQualityEnum;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/youku/phone/freeflow/FreeFlowQualityEnum;->$VALUES:[Lcom/youku/phone/freeflow/FreeFlowQualityEnum;

    invoke-virtual {v0}, [Lcom/youku/phone/freeflow/FreeFlowQualityEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/phone/freeflow/FreeFlowQualityEnum;

    return-object v0
.end method
