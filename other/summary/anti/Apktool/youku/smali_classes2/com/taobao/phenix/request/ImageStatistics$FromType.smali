.class public final enum Lcom/taobao/phenix/request/ImageStatistics$FromType;
.super Ljava/lang/Enum;
.source "ImageStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Kxf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FromType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/phenix/request/ImageStatistics$FromType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/phenix/request/ImageStatistics$FromType;

.field public static final enum FROM_DISK_CACHE:Lcom/taobao/phenix/request/ImageStatistics$FromType;

.field public static final enum FROM_LARGE_SCALE:Lcom/taobao/phenix/request/ImageStatistics$FromType;

.field public static final enum FROM_LOCAL_FILE:Lcom/taobao/phenix/request/ImageStatistics$FromType;

.field public static final enum FROM_MEMORY_CACHE:Lcom/taobao/phenix/request/ImageStatistics$FromType;

.field public static final enum FROM_NETWORK:Lcom/taobao/phenix/request/ImageStatistics$FromType;

.field public static final enum FROM_UNKNOWN:Lcom/taobao/phenix/request/ImageStatistics$FromType;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    new-instance v0, Lcom/taobao/phenix/request/ImageStatistics$FromType;

    const-string/jumbo v1, "FROM_UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/taobao/phenix/request/ImageStatistics$FromType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/phenix/request/ImageStatistics$FromType;->FROM_UNKNOWN:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    .line 48
    new-instance v0, Lcom/taobao/phenix/request/ImageStatistics$FromType;

    const-string/jumbo v1, "FROM_NETWORK"

    invoke-direct {v0, v1, v4, v3}, Lcom/taobao/phenix/request/ImageStatistics$FromType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/phenix/request/ImageStatistics$FromType;->FROM_NETWORK:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    .line 51
    new-instance v0, Lcom/taobao/phenix/request/ImageStatistics$FromType;

    const-string/jumbo v1, "FROM_MEMORY_CACHE"

    invoke-direct {v0, v1, v5, v4}, Lcom/taobao/phenix/request/ImageStatistics$FromType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/phenix/request/ImageStatistics$FromType;->FROM_MEMORY_CACHE:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    .line 54
    new-instance v0, Lcom/taobao/phenix/request/ImageStatistics$FromType;

    const-string/jumbo v1, "FROM_DISK_CACHE"

    invoke-direct {v0, v1, v6, v5}, Lcom/taobao/phenix/request/ImageStatistics$FromType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/phenix/request/ImageStatistics$FromType;->FROM_DISK_CACHE:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    .line 57
    new-instance v0, Lcom/taobao/phenix/request/ImageStatistics$FromType;

    const-string/jumbo v1, "FROM_LARGE_SCALE"

    invoke-direct {v0, v1, v7, v6}, Lcom/taobao/phenix/request/ImageStatistics$FromType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/phenix/request/ImageStatistics$FromType;->FROM_LARGE_SCALE:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    .line 60
    new-instance v0, Lcom/taobao/phenix/request/ImageStatistics$FromType;

    const-string/jumbo v1, "FROM_LOCAL_FILE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v7}, Lcom/taobao/phenix/request/ImageStatistics$FromType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/phenix/request/ImageStatistics$FromType;->FROM_LOCAL_FILE:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    .line 42
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/taobao/phenix/request/ImageStatistics$FromType;

    sget-object v1, Lcom/taobao/phenix/request/ImageStatistics$FromType;->FROM_UNKNOWN:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/phenix/request/ImageStatistics$FromType;->FROM_NETWORK:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/phenix/request/ImageStatistics$FromType;->FROM_MEMORY_CACHE:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/phenix/request/ImageStatistics$FromType;->FROM_DISK_CACHE:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/phenix/request/ImageStatistics$FromType;->FROM_LARGE_SCALE:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/taobao/phenix/request/ImageStatistics$FromType;->FROM_LOCAL_FILE:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/phenix/request/ImageStatistics$FromType;->$VALUES:[Lcom/taobao/phenix/request/ImageStatistics$FromType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput p3, p0, Lcom/taobao/phenix/request/ImageStatistics$FromType;->value:I

    .line 67
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/phenix/request/ImageStatistics$FromType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lcom/taobao/phenix/request/ImageStatistics$FromType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/phenix/request/ImageStatistics$FromType;

    return-object v0
.end method

.method public static values()[Lcom/taobao/phenix/request/ImageStatistics$FromType;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/taobao/phenix/request/ImageStatistics$FromType;->$VALUES:[Lcom/taobao/phenix/request/ImageStatistics$FromType;

    invoke-virtual {v0}, [Lcom/taobao/phenix/request/ImageStatistics$FromType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/phenix/request/ImageStatistics$FromType;

    return-object v0
.end method
