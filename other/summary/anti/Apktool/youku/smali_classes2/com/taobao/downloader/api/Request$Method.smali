.class public final enum Lcom/taobao/downloader/api/Request$Method;
.super Ljava/lang/Enum;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/fmf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/downloader/api/Request$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/downloader/api/Request$Method;

.field public static final enum GET:Lcom/taobao/downloader/api/Request$Method;

.field public static final enum POST:Lcom/taobao/downloader/api/Request$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/taobao/downloader/api/Request$Method;

    const-string/jumbo v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/taobao/downloader/api/Request$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/downloader/api/Request$Method;->GET:Lcom/taobao/downloader/api/Request$Method;

    .line 39
    new-instance v0, Lcom/taobao/downloader/api/Request$Method;

    const-string/jumbo v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/taobao/downloader/api/Request$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/downloader/api/Request$Method;->POST:Lcom/taobao/downloader/api/Request$Method;

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/taobao/downloader/api/Request$Method;

    sget-object v1, Lcom/taobao/downloader/api/Request$Method;->GET:Lcom/taobao/downloader/api/Request$Method;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/downloader/api/Request$Method;->POST:Lcom/taobao/downloader/api/Request$Method;

    aput-object v1, v0, v3

    sput-object v0, Lcom/taobao/downloader/api/Request$Method;->$VALUES:[Lcom/taobao/downloader/api/Request$Method;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/downloader/api/Request$Method;
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/taobao/downloader/api/Request$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/downloader/api/Request$Method;

    return-object v0
.end method

.method public static values()[Lcom/taobao/downloader/api/Request$Method;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/taobao/downloader/api/Request$Method;->$VALUES:[Lcom/taobao/downloader/api/Request$Method;

    invoke-virtual {v0}, [Lcom/taobao/downloader/api/Request$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/downloader/api/Request$Method;

    return-object v0
.end method
