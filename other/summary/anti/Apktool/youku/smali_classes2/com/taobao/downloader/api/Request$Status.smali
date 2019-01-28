.class public final enum Lcom/taobao/downloader/api/Request$Status;
.super Ljava/lang/Enum;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/fmf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/downloader/api/Request$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/downloader/api/Request$Status;

.field public static final enum CANCELED:Lcom/taobao/downloader/api/Request$Status;

.field public static final enum COMPLETED:Lcom/taobao/downloader/api/Request$Status;

.field public static final enum FAILED:Lcom/taobao/downloader/api/Request$Status;

.field public static final enum PAUSED:Lcom/taobao/downloader/api/Request$Status;

.field public static final enum STARTED:Lcom/taobao/downloader/api/Request$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/taobao/downloader/api/Request$Status;

    const-string/jumbo v1, "STARTED"

    invoke-direct {v0, v1, v2}, Lcom/taobao/downloader/api/Request$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/downloader/api/Request$Status;->STARTED:Lcom/taobao/downloader/api/Request$Status;

    .line 31
    new-instance v0, Lcom/taobao/downloader/api/Request$Status;

    const-string/jumbo v1, "COMPLETED"

    invoke-direct {v0, v1, v3}, Lcom/taobao/downloader/api/Request$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/downloader/api/Request$Status;->COMPLETED:Lcom/taobao/downloader/api/Request$Status;

    .line 32
    new-instance v0, Lcom/taobao/downloader/api/Request$Status;

    const-string/jumbo v1, "PAUSED"

    invoke-direct {v0, v1, v4}, Lcom/taobao/downloader/api/Request$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/downloader/api/Request$Status;->PAUSED:Lcom/taobao/downloader/api/Request$Status;

    .line 33
    new-instance v0, Lcom/taobao/downloader/api/Request$Status;

    const-string/jumbo v1, "CANCELED"

    invoke-direct {v0, v1, v5}, Lcom/taobao/downloader/api/Request$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/downloader/api/Request$Status;->CANCELED:Lcom/taobao/downloader/api/Request$Status;

    .line 34
    new-instance v0, Lcom/taobao/downloader/api/Request$Status;

    const-string/jumbo v1, "FAILED"

    invoke-direct {v0, v1, v6}, Lcom/taobao/downloader/api/Request$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/downloader/api/Request$Status;->FAILED:Lcom/taobao/downloader/api/Request$Status;

    .line 29
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/taobao/downloader/api/Request$Status;

    sget-object v1, Lcom/taobao/downloader/api/Request$Status;->STARTED:Lcom/taobao/downloader/api/Request$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/downloader/api/Request$Status;->COMPLETED:Lcom/taobao/downloader/api/Request$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/downloader/api/Request$Status;->PAUSED:Lcom/taobao/downloader/api/Request$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/downloader/api/Request$Status;->CANCELED:Lcom/taobao/downloader/api/Request$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/downloader/api/Request$Status;->FAILED:Lcom/taobao/downloader/api/Request$Status;

    aput-object v1, v0, v6

    sput-object v0, Lcom/taobao/downloader/api/Request$Status;->$VALUES:[Lcom/taobao/downloader/api/Request$Status;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/downloader/api/Request$Status;
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/taobao/downloader/api/Request$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/downloader/api/Request$Status;

    return-object v0
.end method

.method public static values()[Lcom/taobao/downloader/api/Request$Status;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/taobao/downloader/api/Request$Status;->$VALUES:[Lcom/taobao/downloader/api/Request$Status;

    invoke-virtual {v0}, [Lcom/taobao/downloader/api/Request$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/downloader/api/Request$Status;

    return-object v0
.end method
