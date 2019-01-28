.class public Lc8/sOf;
.super Ljava/lang/Object;
.source "ImageLoadFeature.java"

# interfaces
.implements Lc8/rxf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/tOf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageRetryHandler"
.end annotation


# instance fields
.field private retryUrl:Ljava/lang/String;

.field final synthetic this$0:Lc8/tOf;


# direct methods
.method constructor <init>(Lc8/tOf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/tOf;

    .prologue
    .line 698
    iput-object p1, p0, Lc8/sOf;->this$0:Lc8/tOf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRetryUrl(Lc8/mxf;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .param p1, "creator"    # Lc8/mxf;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 713
    instance-of v0, p2, Lcom/taobao/phenix/loader/network/HttpCodeResponseException;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/taobao/phenix/loader/network/HttpCodeResponseException;

    .end local p2    # "throwable":Ljava/lang/Throwable;
    invoke-virtual {p2}, Lcom/taobao/phenix/loader/network/HttpCodeResponseException;->getHttpCode()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    .line 714
    iget-object v0, p0, Lc8/sOf;->this$0:Lc8/tOf;

    iget-object v1, p0, Lc8/sOf;->retryUrl:Ljava/lang/String;

    iput-object v1, v0, Lc8/tOf;->mLoadingUrl:Ljava/lang/String;

    .line 715
    iget-object v0, p0, Lc8/sOf;->retryUrl:Ljava/lang/String;

    .line 717
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRetryUrl(Ljava/lang/String;)Lc8/sOf;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 703
    if-eqz p1, :cond_0

    const-string/jumbo v0, "END_IMAGE_URL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string/jumbo v2, "END_IMAGE_URL"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/sOf;->retryUrl:Ljava/lang/String;

    .line 708
    :goto_0
    return-object p0

    .line 706
    :cond_0
    iput-object p1, p0, Lc8/sOf;->retryUrl:Ljava/lang/String;

    goto :goto_0
.end method
