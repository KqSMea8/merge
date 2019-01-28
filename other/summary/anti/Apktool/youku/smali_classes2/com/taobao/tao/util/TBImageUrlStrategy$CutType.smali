.class public final enum Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;
.super Ljava/lang/Enum;
.source "TBImageUrlStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/CNf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CutType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;

.field public static final enum non:Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;

.field public static final enum xz:Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;


# instance fields
.field mCutType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;

    const-string/jumbo v1, "xz"

    const-string/jumbo v2, "xz"

    invoke-direct {v0, v1, v3, v2}, Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;->xz:Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;

    .line 44
    new-instance v0, Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;

    const-string/jumbo v1, "non"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v4, v2}, Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;->non:Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;

    sget-object v1, Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;->xz:Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;->non:Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;->$VALUES:[Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "cuttype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;->mCutType:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;->mCutType:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;

    return-object v0
.end method

.method public static values()[Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;->$VALUES:[Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;

    invoke-virtual {v0}, [Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;

    return-object v0
.end method


# virtual methods
.method public getCutType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;->mCutType:Ljava/lang/String;

    return-object v0
.end method
