.class public final enum Lcom/youku/analytics/data/PlayActionData$PlayGesture;
.super Ljava/lang/Enum;
.source "PlayActionData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/PHg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayGesture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/analytics/data/PlayActionData$PlayGesture;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/analytics/data/PlayActionData$PlayGesture;

.field public static final enum CLICK:Lcom/youku/analytics/data/PlayActionData$PlayGesture;

.field public static final enum SLIDE_DOWN:Lcom/youku/analytics/data/PlayActionData$PlayGesture;

.field public static final enum SLIDE_LEFT:Lcom/youku/analytics/data/PlayActionData$PlayGesture;

.field public static final enum SLIDE_RIGHT:Lcom/youku/analytics/data/PlayActionData$PlayGesture;

.field public static final enum SLIDE_UP:Lcom/youku/analytics/data/PlayActionData$PlayGesture;


# instance fields
.field private mGesture:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 756
    new-instance v0, Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    const-string/jumbo v1, "CLICK"

    const-string/jumbo v2, "click"

    invoke-direct {v0, v1, v3, v2}, Lcom/youku/analytics/data/PlayActionData$PlayGesture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youku/analytics/data/PlayActionData$PlayGesture;->CLICK:Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    .line 757
    new-instance v0, Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    const-string/jumbo v1, "SLIDE_LEFT"

    const-string/jumbo v2, "leftTouch"

    invoke-direct {v0, v1, v4, v2}, Lcom/youku/analytics/data/PlayActionData$PlayGesture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youku/analytics/data/PlayActionData$PlayGesture;->SLIDE_LEFT:Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    .line 758
    new-instance v0, Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    const-string/jumbo v1, "SLIDE_RIGHT"

    const-string/jumbo v2, "rightTouch"

    invoke-direct {v0, v1, v5, v2}, Lcom/youku/analytics/data/PlayActionData$PlayGesture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youku/analytics/data/PlayActionData$PlayGesture;->SLIDE_RIGHT:Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    .line 759
    new-instance v0, Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    const-string/jumbo v1, "SLIDE_UP"

    const-string/jumbo v2, "topTouch"

    invoke-direct {v0, v1, v6, v2}, Lcom/youku/analytics/data/PlayActionData$PlayGesture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youku/analytics/data/PlayActionData$PlayGesture;->SLIDE_UP:Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    .line 761
    new-instance v0, Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    const-string/jumbo v1, "SLIDE_DOWN"

    const-string/jumbo v2, "downTouch"

    invoke-direct {v0, v1, v7, v2}, Lcom/youku/analytics/data/PlayActionData$PlayGesture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youku/analytics/data/PlayActionData$PlayGesture;->SLIDE_DOWN:Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    .line 755
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    sget-object v1, Lcom/youku/analytics/data/PlayActionData$PlayGesture;->CLICK:Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/analytics/data/PlayActionData$PlayGesture;->SLIDE_LEFT:Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youku/analytics/data/PlayActionData$PlayGesture;->SLIDE_RIGHT:Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    aput-object v1, v0, v5

    sget-object v1, Lcom/youku/analytics/data/PlayActionData$PlayGesture;->SLIDE_UP:Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    aput-object v1, v0, v6

    sget-object v1, Lcom/youku/analytics/data/PlayActionData$PlayGesture;->SLIDE_DOWN:Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    aput-object v1, v0, v7

    sput-object v0, Lcom/youku/analytics/data/PlayActionData$PlayGesture;->$VALUES:[Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "gesture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 765
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 766
    iput-object p3, p0, Lcom/youku/analytics/data/PlayActionData$PlayGesture;->mGesture:Ljava/lang/String;

    .line 767
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$PlayGesture;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 755
    const-class v0, Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    return-object v0
.end method

.method public static values()[Lcom/youku/analytics/data/PlayActionData$PlayGesture;
    .locals 1

    .prologue
    .line 755
    sget-object v0, Lcom/youku/analytics/data/PlayActionData$PlayGesture;->$VALUES:[Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    invoke-virtual {v0}, [Lcom/youku/analytics/data/PlayActionData$PlayGesture;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$PlayGesture;->mGesture:Ljava/lang/String;

    return-object v0
.end method
