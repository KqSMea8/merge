.class public Lc8/zJj;
.super Ljava/lang/Object;
.source "MTopListener.java"

# interfaces
.implements Lc8/JNp;


# instance fields
.field private callback:Lc8/OIj;

.field private handler:Landroid/os/Handler;

.field private mTopConverter:Lc8/UJj;

.field private ykResponse:Lc8/eJj;


# direct methods
.method public constructor <init>(Lc8/OIj;Landroid/os/Handler;Lc8/TJj;)V
    .locals 0
    .param p1, "callback"    # Lc8/OIj;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "converter"    # Lc8/TJj;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lc8/zJj;->callback:Lc8/OIj;

    .line 36
    iput-object p2, p0, Lc8/zJj;->handler:Landroid/os/Handler;

    .line 37
    check-cast p3, Lc8/UJj;

    .end local p3    # "converter":Lc8/TJj;
    iput-object p3, p0, Lc8/zJj;->mTopConverter:Lc8/UJj;

    .line 38
    return-void
.end method

.method public constructor <init>(Lc8/OIj;Lc8/TJj;)V
    .locals 1
    .param p1, "callback"    # Lc8/OIj;
    .param p2, "converter"    # Lc8/TJj;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lc8/zJj;-><init>(Lc8/OIj;Landroid/os/Handler;Lc8/TJj;)V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lc8/zJj;)Lc8/eJj;
    .locals 1
    .param p0, "x0"    # Lc8/zJj;

    .prologue
    .line 19
    iget-object v0, p0, Lc8/zJj;->ykResponse:Lc8/eJj;

    return-object v0
.end method

.method static synthetic access$100(Lc8/zJj;)Lc8/OIj;
    .locals 1
    .param p0, "x0"    # Lc8/zJj;

    .prologue
    .line 19
    iget-object v0, p0, Lc8/zJj;->callback:Lc8/OIj;

    return-object v0
.end method

.method private onFinish()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lc8/zJj;->callback:Lc8/OIj;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lc8/zJj;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lc8/zJj;->handler:Landroid/os/Handler;

    new-instance v1, Lc8/yJj;

    invoke-direct {v1, p0}, Lc8/yJj;-><init>(Lc8/zJj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lc8/zJj;->callback:Lc8/OIj;

    iget-object v1, p0, Lc8/zJj;->ykResponse:Lc8/eJj;

    invoke-interface {v0, v1}, Lc8/OIj;->onFinish(Lc8/eJj;)V

    goto :goto_0
.end method


# virtual methods
.method public onFinished(Lc8/ONp;Ljava/lang/Object;)V
    .locals 2
    .param p1, "mtopFinishEvent"    # Lc8/ONp;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 43
    invoke-virtual {p1}, Lc8/ONp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    .line 44
    .local v0, "mTopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    iget-object v1, p0, Lc8/zJj;->mTopConverter:Lc8/UJj;

    invoke-virtual {v1, v0}, Lc8/UJj;->responseConvert(Lmtopsdk/mtop/domain/MtopResponse;)Lc8/eJj;

    move-result-object v1

    iput-object v1, p0, Lc8/zJj;->ykResponse:Lc8/eJj;

    .line 45
    invoke-direct {p0}, Lc8/zJj;->onFinish()V

    .line 46
    return-void
.end method
