.class public final enum Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;
.super Ljava/lang/Enum;
.source "TaobaoImageUrlStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/HNf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageQuality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

.field public static final enum non:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

.field public static final enum q30:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

.field public static final enum q50:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

.field public static final enum q60:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

.field public static final enum q75:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

.field public static final enum q90:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;


# instance fields
.field ossQ:Ljava/lang/String;

.field tfsQ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1118
    new-instance v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    const-string/jumbo v1, "q90"

    const-string/jumbo v2, "q90"

    const-string/jumbo v3, "90q"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q90:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    .line 1119
    new-instance v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    const-string/jumbo v1, "q75"

    const-string/jumbo v2, "q75"

    const-string/jumbo v3, "75q"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q75:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    .line 1120
    new-instance v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    const-string/jumbo v1, "q60"

    const-string/jumbo v2, "q60"

    const-string/jumbo v3, "60q"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q60:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    .line 1121
    new-instance v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    const-string/jumbo v1, "q50"

    const-string/jumbo v2, "q50"

    const-string/jumbo v3, "50q"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q50:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    .line 1122
    new-instance v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    const-string/jumbo v1, "q30"

    const-string/jumbo v2, "q30"

    const-string/jumbo v3, "30q"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q30:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    .line 1123
    new-instance v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    const-string/jumbo v1, "non"

    const/4 v2, 0x5

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->non:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    .line 1117
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    sget-object v1, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q90:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q75:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q60:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    aput-object v1, v0, v7

    sget-object v1, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q50:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    aput-object v1, v0, v8

    sget-object v1, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q30:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->non:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->$VALUES:[Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p3, "tfsQ"    # Ljava/lang/String;
    .param p4, "ossQ"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1125
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->tfsQ:Ljava/lang/String;

    .line 1126
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->ossQ:Ljava/lang/String;

    .line 1129
    iput-object p3, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->tfsQ:Ljava/lang/String;

    .line 1130
    iput-object p4, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->ossQ:Ljava/lang/String;

    .line 1131
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1117
    const-class v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    return-object v0
.end method

.method public static values()[Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;
    .locals 1

    .prologue
    .line 1117
    sget-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->$VALUES:[Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    invoke-virtual {v0}, [Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    return-object v0
.end method


# virtual methods
.method public getImageQuality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->tfsQ:Ljava/lang/String;

    return-object v0
.end method

.method public getOssQuality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->ossQ:Ljava/lang/String;

    return-object v0
.end method
