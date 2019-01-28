.class public final enum Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;
.super Ljava/lang/Enum;
.source "CellImageLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/jdo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RatioType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;

.field public static final enum CUSTOM:Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;

.field public static final enum HOME:Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;

.field public static final enum NONE:Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;

.field public static final enum NORMAL:Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;

.field public static final enum SQUARE:Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;

.field public static final enum WIDE:Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 82
    new-instance v0, Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v4, v4}, Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;->NORMAL:Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;

    new-instance v0, Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;

    const-string/jumbo v1, "WIDE"

    invoke-direct {v0, v1, v5, v5}, Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;->WIDE:Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;

    new-instance v0, Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;

    const-string/jumbo v1, "HOME"

    invoke-direct {v0, v1, v6, v6}, Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;->HOME:Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;

    new-instance v0, Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;

    const-string/jumbo v1, "SQUARE"

    invoke-direct {v0, v1, v7, v7}, Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;->SQUARE:Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;

    new-instance v0, Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;

    const-string/jumbo v1, "CUSTOM"

    invoke-direct {v0, v1, v8, v8}, Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;->CUSTOM:Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;

    new-instance v0, Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;

    const-string/jumbo v1, "NONE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;->NONE:Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;

    .line 81
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;

    sget-object v1, Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;->NORMAL:Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;->WIDE:Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;->HOME:Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;->SQUARE:Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;->CUSTOM:Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;->NONE:Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;->$VALUES:[Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;->value:I

    .line 86
    iput p3, p0, Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;->value:I

    .line 87
    return-void
.end method

.method public static synthetic access$000(Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 81
    iget v0, p0, Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;->value:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    const-class v0, Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;

    return-object v0
.end method

.method public static values()[Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;->$VALUES:[Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;

    invoke-virtual {v0}, [Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;->value:I

    return v0
.end method
