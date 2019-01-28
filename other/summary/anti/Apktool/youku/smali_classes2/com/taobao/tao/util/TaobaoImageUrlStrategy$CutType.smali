.class public final enum Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;
.super Ljava/lang/Enum;
.source "TaobaoImageUrlStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/HNf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CutType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

.field public static final enum non:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

.field public static final enum xz:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;


# instance fields
.field ossCut:Ljava/lang/String;

.field tfsCut:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1094
    new-instance v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    const-string/jumbo v1, "xz"

    const-string/jumbo v2, "xz"

    const-string/jumbo v3, "1c"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;->xz:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    .line 1095
    new-instance v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    const-string/jumbo v1, "non"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;->non:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    .line 1093
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    sget-object v1, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;->xz:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;->non:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;->$VALUES:[Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p3, "tfsCut"    # Ljava/lang/String;
    .param p4, "ossCut"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1097
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;->tfsCut:Ljava/lang/String;

    .line 1098
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;->ossCut:Ljava/lang/String;

    .line 1101
    iput-object p3, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;->tfsCut:Ljava/lang/String;

    .line 1102
    iput-object p4, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;->ossCut:Ljava/lang/String;

    .line 1103
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1093
    const-class v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    return-object v0
.end method

.method public static values()[Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;
    .locals 1

    .prologue
    .line 1093
    sget-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;->$VALUES:[Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    invoke-virtual {v0}, [Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    return-object v0
.end method


# virtual methods
.method public getCutType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;->tfsCut:Ljava/lang/String;

    return-object v0
.end method

.method public getOssCut()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;->ossCut:Ljava/lang/String;

    return-object v0
.end method
