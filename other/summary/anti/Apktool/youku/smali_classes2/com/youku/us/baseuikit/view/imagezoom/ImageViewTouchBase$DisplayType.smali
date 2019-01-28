.class public final enum Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;
.super Ljava/lang/Enum;
.source "ImageViewTouchBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/bco;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

.field public static final enum FIT_IF_BIGGER:Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

.field public static final enum FIT_TO_SCREEN:Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

.field public static final enum NONE:Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;->NONE:Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

    .line 69
    new-instance v0, Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

    const-string/jumbo v1, "FIT_TO_SCREEN"

    invoke-direct {v0, v1, v3}, Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;->FIT_TO_SCREEN:Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

    .line 73
    new-instance v0, Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

    const-string/jumbo v1, "FIT_IF_BIGGER"

    invoke-direct {v0, v1, v4}, Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;->FIT_IF_BIGGER:Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

    sget-object v1, Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;->NONE:Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;->FIT_TO_SCREEN:Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;->FIT_IF_BIGGER:Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;->$VALUES:[Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    const-class v0, Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

    return-object v0
.end method

.method public static values()[Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;->$VALUES:[Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

    invoke-virtual {v0}, [Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

    return-object v0
.end method
