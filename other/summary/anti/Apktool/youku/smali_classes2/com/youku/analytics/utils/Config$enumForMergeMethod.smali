.class public final enum Lcom/youku/analytics/utils/Config$enumForMergeMethod;
.super Ljava/lang/Enum;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/QHg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "enumForMergeMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/analytics/utils/Config$enumForMergeMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/analytics/utils/Config$enumForMergeMethod;

.field public static final enum CONCAT:Lcom/youku/analytics/utils/Config$enumForMergeMethod;

.field public static final enum COUNT:Lcom/youku/analytics/utils/Config$enumForMergeMethod;

.field public static final enum COVER:Lcom/youku/analytics/utils/Config$enumForMergeMethod;

.field public static final enum SUM:Lcom/youku/analytics/utils/Config$enumForMergeMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 444
    new-instance v0, Lcom/youku/analytics/utils/Config$enumForMergeMethod;

    const-string/jumbo v1, "COUNT"

    invoke-direct {v0, v1, v2}, Lcom/youku/analytics/utils/Config$enumForMergeMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/analytics/utils/Config$enumForMergeMethod;->COUNT:Lcom/youku/analytics/utils/Config$enumForMergeMethod;

    .line 445
    new-instance v0, Lcom/youku/analytics/utils/Config$enumForMergeMethod;

    const-string/jumbo v1, "SUM"

    invoke-direct {v0, v1, v3}, Lcom/youku/analytics/utils/Config$enumForMergeMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/analytics/utils/Config$enumForMergeMethod;->SUM:Lcom/youku/analytics/utils/Config$enumForMergeMethod;

    .line 446
    new-instance v0, Lcom/youku/analytics/utils/Config$enumForMergeMethod;

    const-string/jumbo v1, "CONCAT"

    invoke-direct {v0, v1, v4}, Lcom/youku/analytics/utils/Config$enumForMergeMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/analytics/utils/Config$enumForMergeMethod;->CONCAT:Lcom/youku/analytics/utils/Config$enumForMergeMethod;

    .line 447
    new-instance v0, Lcom/youku/analytics/utils/Config$enumForMergeMethod;

    const-string/jumbo v1, "COVER"

    invoke-direct {v0, v1, v5}, Lcom/youku/analytics/utils/Config$enumForMergeMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/analytics/utils/Config$enumForMergeMethod;->COVER:Lcom/youku/analytics/utils/Config$enumForMergeMethod;

    .line 443
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/youku/analytics/utils/Config$enumForMergeMethod;

    sget-object v1, Lcom/youku/analytics/utils/Config$enumForMergeMethod;->COUNT:Lcom/youku/analytics/utils/Config$enumForMergeMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/analytics/utils/Config$enumForMergeMethod;->SUM:Lcom/youku/analytics/utils/Config$enumForMergeMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/analytics/utils/Config$enumForMergeMethod;->CONCAT:Lcom/youku/analytics/utils/Config$enumForMergeMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youku/analytics/utils/Config$enumForMergeMethod;->COVER:Lcom/youku/analytics/utils/Config$enumForMergeMethod;

    aput-object v1, v0, v5

    sput-object v0, Lcom/youku/analytics/utils/Config$enumForMergeMethod;->$VALUES:[Lcom/youku/analytics/utils/Config$enumForMergeMethod;

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
    .line 443
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/analytics/utils/Config$enumForMergeMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 443
    const-class v0, Lcom/youku/analytics/utils/Config$enumForMergeMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/analytics/utils/Config$enumForMergeMethod;

    return-object v0
.end method

.method public static values()[Lcom/youku/analytics/utils/Config$enumForMergeMethod;
    .locals 1

    .prologue
    .line 443
    sget-object v0, Lcom/youku/analytics/utils/Config$enumForMergeMethod;->$VALUES:[Lcom/youku/analytics/utils/Config$enumForMergeMethod;

    invoke-virtual {v0}, [Lcom/youku/analytics/utils/Config$enumForMergeMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/analytics/utils/Config$enumForMergeMethod;

    return-object v0
.end method
