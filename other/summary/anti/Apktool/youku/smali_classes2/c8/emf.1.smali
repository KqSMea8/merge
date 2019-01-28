.class public Lc8/emf;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/fmf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Build"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/taobao/downloader/api/Request$Method;

.field private k:Ljava/lang/String;

.field private l:[B

.field private m:Lcom/taobao/downloader/api/Request$Priority;

.field private n:Lcom/taobao/downloader/api/Request$Network;

.field private o:Lc8/vmf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lc8/fmf;
    .locals 4

    .prologue
    .line 313
    new-instance v0, Lc8/fmf;

    invoke-direct {v0}, Lc8/fmf;-><init>()V

    .line 314
    iget-object v1, p0, Lc8/emf;->a:Ljava/lang/String;

    iput-object v1, v0, Lc8/fmf;->url:Ljava/lang/String;

    .line 315
    iget-object v1, p0, Lc8/emf;->b:Ljava/lang/String;

    iput-object v1, v0, Lc8/fmf;->name:Ljava/lang/String;

    .line 316
    iget-object v1, p0, Lc8/emf;->c:Ljava/lang/String;

    iput-object v1, v0, Lc8/fmf;->md5:Ljava/lang/String;

    .line 317
    iget-wide v2, p0, Lc8/emf;->d:J

    iput-wide v2, v0, Lc8/fmf;->size:J

    .line 318
    iget-object v1, p0, Lc8/emf;->e:Ljava/lang/String;

    iput-object v1, v0, Lc8/fmf;->bizId:Ljava/lang/String;

    .line 319
    iget-object v1, p0, Lc8/emf;->f:Ljava/lang/String;

    iput-object v1, v0, Lc8/fmf;->tag:Ljava/lang/String;

    .line 320
    iget-object v1, p0, Lc8/emf;->g:Ljava/lang/String;

    iput-object v1, v0, Lc8/fmf;->cachePath:Ljava/lang/String;

    .line 321
    iget-boolean v1, p0, Lc8/emf;->h:Z

    iput-boolean v1, v0, Lc8/fmf;->useCache:Z

    .line 322
    iget-object v1, p0, Lc8/emf;->i:Ljava/util/Map;

    iput-object v1, v0, Lc8/fmf;->headers:Ljava/util/Map;

    .line 323
    iget-object v1, p0, Lc8/emf;->j:Lcom/taobao/downloader/api/Request$Method;

    iput-object v1, v0, Lc8/fmf;->method:Lcom/taobao/downloader/api/Request$Method;

    .line 324
    iget-object v1, p0, Lc8/emf;->k:Ljava/lang/String;

    iput-object v1, v0, Lc8/fmf;->bodyContentType:Ljava/lang/String;

    .line 325
    iget-object v1, p0, Lc8/emf;->l:[B

    iput-object v1, v0, Lc8/fmf;->body:[B

    .line 326
    iget-object v1, p0, Lc8/emf;->m:Lcom/taobao/downloader/api/Request$Priority;

    iput-object v1, v0, Lc8/fmf;->priority:Lcom/taobao/downloader/api/Request$Priority;

    .line 327
    iget-object v1, p0, Lc8/emf;->n:Lcom/taobao/downloader/api/Request$Network;

    iput-object v1, v0, Lc8/fmf;->network:Lcom/taobao/downloader/api/Request$Network;

    .line 328
    iget-object v1, p0, Lc8/emf;->o:Lc8/vmf;

    iput-object v1, v0, Lc8/fmf;->listener:Lc8/vmf;

    .line 329
    return-object v0
.end method

.method public setBizId(Ljava/lang/String;)Lc8/emf;
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lc8/emf;->e:Ljava/lang/String;

    .line 374
    return-object p0
.end method

.method public setBody([B)Lc8/emf;
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lc8/emf;->l:[B

    .line 439
    return-object p0
.end method

.method public setBodyContentType(Ljava/lang/String;)Lc8/emf;
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lc8/emf;->k:Ljava/lang/String;

    .line 430
    return-object p0
.end method

.method public setCachePath(Ljava/lang/String;)Lc8/emf;
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lc8/emf;->g:Ljava/lang/String;

    .line 392
    return-object p0
.end method

.method public setHeaders(Ljava/util/Map;)Lc8/emf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lc8/emf;"
        }
    .end annotation

    .prologue
    .line 411
    iput-object p1, p0, Lc8/emf;->i:Ljava/util/Map;

    .line 412
    return-object p0
.end method

.method public setListener(Lc8/vmf;)Lc8/emf;
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lc8/emf;->o:Lc8/vmf;

    .line 469
    return-object p0
.end method

.method public setMd5(Ljava/lang/String;)Lc8/emf;
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lc8/emf;->c:Ljava/lang/String;

    .line 356
    return-object p0
.end method

.method public setMethod(Lcom/taobao/downloader/api/Request$Method;)Lc8/emf;
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lc8/emf;->j:Lcom/taobao/downloader/api/Request$Method;

    .line 421
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lc8/emf;
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lc8/emf;->b:Ljava/lang/String;

    .line 347
    return-object p0
.end method

.method public setNetwork(Lcom/taobao/downloader/api/Request$Network;)Lc8/emf;
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lc8/emf;->n:Lcom/taobao/downloader/api/Request$Network;

    .line 460
    return-object p0
.end method

.method public setPriority(Lcom/taobao/downloader/api/Request$Priority;)Lc8/emf;
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lc8/emf;->m:Lcom/taobao/downloader/api/Request$Priority;

    .line 449
    return-object p0
.end method

.method public setSize(J)Lc8/emf;
    .locals 1

    .prologue
    .line 364
    iput-wide p1, p0, Lc8/emf;->d:J

    .line 365
    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lc8/emf;
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lc8/emf;->f:Ljava/lang/String;

    .line 383
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lc8/emf;
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lc8/emf;->a:Ljava/lang/String;

    .line 338
    return-object p0
.end method

.method public setUseCache(Z)Lc8/emf;
    .locals 0

    .prologue
    .line 402
    iput-boolean p1, p0, Lc8/emf;->h:Z

    .line 403
    return-object p0
.end method
