.class public final enum Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;
.super Ljava/lang/Enum;
.source "TBImageUrlStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/CNf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageQuality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

.field public static final enum non:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

.field public static final enum q30:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

.field public static final enum q50:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

.field public static final enum q60:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

.field public static final enum q75:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

.field public static final enum q90:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;


# instance fields
.field mImageQuality:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 61
    new-instance v0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    const-string/jumbo v1, "q90"

    const-string/jumbo v2, "q90"

    invoke-direct {v0, v1, v4, v2}, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->q90:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    .line 62
    new-instance v0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    const-string/jumbo v1, "q75"

    const-string/jumbo v2, "q75"

    invoke-direct {v0, v1, v5, v2}, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->q75:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    .line 63
    new-instance v0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    const-string/jumbo v1, "q60"

    const-string/jumbo v2, "q60"

    invoke-direct {v0, v1, v6, v2}, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->q60:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    .line 64
    new-instance v0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    const-string/jumbo v1, "q50"

    const-string/jumbo v2, "q50"

    invoke-direct {v0, v1, v7, v2}, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->q50:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    .line 65
    new-instance v0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    const-string/jumbo v1, "q30"

    const-string/jumbo v2, "q30"

    invoke-direct {v0, v1, v8, v2}, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->q30:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    .line 66
    new-instance v0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    const-string/jumbo v1, "non"

    const/4 v2, 0x5

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->non:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    .line 60
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    sget-object v1, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->q90:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->q75:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->q60:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->q50:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    aput-object v1, v0, v7

    sget-object v1, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->q30:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->non:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->$VALUES:[Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "imageQuality"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->mImageQuality:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->mImageQuality:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    const-class v0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    return-object v0
.end method

.method public static values()[Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->$VALUES:[Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    invoke-virtual {v0}, [Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    return-object v0
.end method


# virtual methods
.method public getImageQuality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->mImageQuality:Ljava/lang/String;

    return-object v0
.end method
