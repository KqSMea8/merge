.class public Lc8/Olf;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lc8/Amf;


# instance fields
.field final synthetic a:Lc8/Emf;

.field final synthetic b:Lc8/Jlf;


# direct methods
.method constructor <init>(Lc8/Jlf;Lc8/Emf;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lc8/Olf;->b:Lc8/Jlf;

    iput-object p2, p0, Lc8/Olf;->a:Lc8/Emf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 153
    const/16 v0, 0x9c4

    return v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 158
    const/16 v0, 0x9c4

    return v0
.end method

.method public getRetryCount()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lc8/Olf;->a:Lc8/Emf;

    iget-object v0, v0, Lc8/Emf;->downloadParam:Lcom/taobao/downloader/request/Param;

    iget v0, v0, Lcom/taobao/downloader/request/Param;->retryTimes:I

    return v0
.end method
