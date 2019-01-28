.class public final enum Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;
.super Ljava/lang/Enum;
.source "ImageStrategyConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/nHf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SizeLimitType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

.field public static final enum ALL_LIMIT:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

.field public static final enum HEIGHT_LIMIT:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

.field public static final enum WIDTH_LIMIT:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 182
    new-instance v0, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    const-string/jumbo v1, "WIDTH_LIMIT"

    invoke-direct {v0, v1, v2}, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;->WIDTH_LIMIT:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    .line 184
    new-instance v0, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    const-string/jumbo v1, "HEIGHT_LIMIT"

    invoke-direct {v0, v1, v3}, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;->HEIGHT_LIMIT:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    .line 186
    new-instance v0, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    const-string/jumbo v1, "ALL_LIMIT"

    invoke-direct {v0, v1, v4}, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;->ALL_LIMIT:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    .line 180
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    sget-object v1, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;->WIDTH_LIMIT:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;->HEIGHT_LIMIT:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;->ALL_LIMIT:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;->$VALUES:[Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

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
    .line 180
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 180
    const-class v0, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    return-object v0
.end method

.method public static values()[Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;->$VALUES:[Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    invoke-virtual {v0}, [Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    return-object v0
.end method
