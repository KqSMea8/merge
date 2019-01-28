.class public final enum Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;
.super Ljava/lang/Enum;
.source "TitlePageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Zeo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LinePosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;

.field public static final enum Bottom:Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;

.field public static final enum Top:Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    new-instance v0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;

    const-string/jumbo v1, "Bottom"

    invoke-direct {v0, v1, v2, v2}, Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;->Bottom:Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;

    new-instance v0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;

    const-string/jumbo v1, "Top"

    invoke-direct {v0, v1, v3, v3}, Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;->Top:Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;

    .line 99
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;

    sget-object v1, Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;->Bottom:Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;->Top:Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;

    aput-object v1, v0, v3

    sput-object v0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;->$VALUES:[Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    iput p3, p0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;->value:I

    .line 106
    return-void
.end method

.method public static fromValue(I)Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 109
    invoke-static {}, Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;->values()[Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 110
    .local v0, "position":Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;
    iget v4, v0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;->value:I

    if-ne v4, p0, :cond_0

    .line 114
    .end local v0    # "position":Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;
    :goto_1
    return-object v0

    .line 109
    .restart local v0    # "position":Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "position":Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 99
    const-class v0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;

    return-object v0
.end method

.method public static values()[Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;->$VALUES:[Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;

    invoke-virtual {v0}, [Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$LinePosition;

    return-object v0
.end method
