.class public Lc8/OJj;
.super Ljava/lang/Object;
.source "OkHttpListener.java"

# interfaces
.implements Lc8/nSe;


# instance fields
.field private callback:Lc8/OIj;

.field private handler:Landroid/os/Handler;

.field private okHttpConverter:Lc8/WJj;

.field private ykResponse:Lc8/eJj;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lc8/OIj;Lc8/TJj;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Lc8/OIj;
    .param p3, "okHttpConverter"    # Lc8/TJj;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lc8/eJj;->newInstance()Lc8/eJj;

    move-result-object v0

    iput-object v0, p0, Lc8/OJj;->ykResponse:Lc8/eJj;

    .line 34
    iput-object p1, p0, Lc8/OJj;->handler:Landroid/os/Handler;

    .line 35
    iput-object p2, p0, Lc8/OJj;->callback:Lc8/OIj;

    .line 36
    check-cast p3, Lc8/WJj;

    .end local p3    # "okHttpConverter":Lc8/TJj;
    iput-object p3, p0, Lc8/OJj;->okHttpConverter:Lc8/WJj;

    .line 37
    return-void
.end method

.method public constructor <init>(Lc8/OIj;Lc8/TJj;)V
    .locals 1
    .param p1, "callback"    # Lc8/OIj;
    .param p2, "okHttpConverter"    # Lc8/TJj;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lc8/OJj;-><init>(Landroid/os/Handler;Lc8/OIj;Lc8/TJj;)V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lc8/OJj;)Lc8/eJj;
    .locals 1
    .param p0, "x0"    # Lc8/OJj;

    .prologue
    .line 19
    iget-object v0, p0, Lc8/OJj;->ykResponse:Lc8/eJj;

    return-object v0
.end method

.method static synthetic access$100(Lc8/OJj;)Lc8/OIj;
    .locals 1
    .param p0, "x0"    # Lc8/OJj;

    .prologue
    .line 19
    iget-object v0, p0, Lc8/OJj;->callback:Lc8/OIj;

    return-object v0
.end method

.method private onFinish()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lc8/OJj;->callback:Lc8/OIj;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lc8/OJj;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lc8/OJj;->handler:Landroid/os/Handler;

    new-instance v1, Lc8/NJj;

    invoke-direct {v1, p0}, Lc8/NJj;-><init>(Lc8/OJj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lc8/OJj;->callback:Lc8/OIj;

    iget-object v1, p0, Lc8/OJj;->ykResponse:Lc8/eJj;

    invoke-interface {v0, v1}, Lc8/OIj;->onFinish(Lc8/eJj;)V

    goto :goto_0
.end method


# virtual methods
.method public onFailure(Lc8/VSe;Ljava/io/IOException;)V
    .locals 2
    .param p1, "request"    # Lc8/VSe;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/OJj;->ykResponse:Lc8/eJj;

    invoke-virtual {v0, p2}, Lc8/eJj;->setError(Ljava/lang/Throwable;)V

    .line 42
    iget-object v0, p0, Lc8/OJj;->ykResponse:Lc8/eJj;

    const/16 v1, -0xbbc

    invoke-static {v0, p2, v1}, Lc8/QJj;->judgeException(Lc8/eJj;Ljava/io/IOException;I)Lc8/eJj;

    move-result-object v0

    iput-object v0, p0, Lc8/OJj;->ykResponse:Lc8/eJj;

    .line 43
    invoke-direct {p0}, Lc8/OJj;->onFinish()V

    .line 44
    return-void
.end method

.method public onResponse(Lc8/cTe;)V
    .locals 1
    .param p1, "response"    # Lc8/cTe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lc8/OJj;->okHttpConverter:Lc8/WJj;

    invoke-virtual {v0, p1}, Lc8/WJj;->responseConvert(Lc8/cTe;)Lc8/eJj;

    move-result-object v0

    iput-object v0, p0, Lc8/OJj;->ykResponse:Lc8/eJj;

    .line 49
    invoke-direct {p0}, Lc8/OJj;->onFinish()V

    .line 50
    return-void
.end method
