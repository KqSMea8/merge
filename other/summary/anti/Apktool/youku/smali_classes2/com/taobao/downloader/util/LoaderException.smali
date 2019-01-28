.class public Lcom/taobao/downloader/util/LoaderException;
.super Ljava/lang/Exception;
.source "Taobao"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/downloader/util/LoaderException;->a:I

    .line 14
    iput p1, p0, Lcom/taobao/downloader/util/LoaderException;->a:I

    .line 15
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/downloader/util/LoaderException;->a:I

    .line 24
    iput p1, p0, Lcom/taobao/downloader/util/LoaderException;->a:I

    .line 25
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/downloader/util/LoaderException;->a:I

    .line 19
    iput p1, p0, Lcom/taobao/downloader/util/LoaderException;->a:I

    .line 20
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/taobao/downloader/util/LoaderException;->a:I

    return v0
.end method
