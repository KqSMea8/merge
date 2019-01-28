.class public Lc8/VMp;
.super Ljava/lang/Object;
.source "NetworkConvertBeforeFilter.java"

# interfaces
.implements Lc8/KMp;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.NetworkConvertBeforeFilter"


# instance fields
.field private networkConverter:Lc8/TOp;


# direct methods
.method public constructor <init>(Lc8/TOp;)V
    .locals 0
    .param p1, "networkConverter"    # Lc8/TOp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lc8/VMp;->networkConverter:Lc8/TOp;

    .line 28
    return-void
.end method


# virtual methods
.method public doBefore(Lc8/IMp;)Ljava/lang/String;
    .locals 6
    .param p1, "mtopContext"    # Lc8/IMp;

    .prologue
    .line 39
    iget-object v1, p0, Lc8/VMp;->networkConverter:Lc8/TOp;

    invoke-interface {v1, p1}, Lc8/TOp;->convert(Lc8/IMp;)Lc8/FPp;

    move-result-object v0

    .line 41
    .local v0, "request":Lc8/FPp;
    iput-object v0, p1, Lc8/IMp;->networkRequest:Lc8/FPp;

    .line 43
    if-nez v0, :cond_0

    .line 44
    new-instance v1, Lmtopsdk/mtop/domain/MtopResponse;

    iget-object v2, p1, Lc8/IMp;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lc8/IMp;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ANDROID_SYS_NETWORK_REQUEST_CONVERT_ERROR"

    const-string/jumbo v5, "\u7f51\u7edcRequest\u8f6c\u6362\u5931\u8d25"

    invoke-direct {v1, v2, v3, v4, v5}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p1, Lc8/IMp;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 45
    invoke-static {p1}, Lc8/jNp;->handleExceptionCallBack(Lc8/IMp;)V

    .line 46
    const-string/jumbo v1, "STOP"

    .line 48
    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, "CONTINUE"

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "mtopsdk.NetworkConvertBeforeFilter"

    return-object v0
.end method
