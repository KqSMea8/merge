.class public Lc8/uxe;
.super Ljava/lang/Object;
.source "AsyncWeiboRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/wxe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private error:Lcom/sina/weibo/sdk/exception/WeiboException;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 0
    .param p1, "error"    # Lcom/sina/weibo/sdk/exception/WeiboException;

    .prologue
    .line 253
    .local p0, "this":Lc8/uxe;, "Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, Lc8/uxe;->error:Lcom/sina/weibo/sdk/exception/WeiboException;

    .line 255
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "this":Lc8/uxe;, "Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p1, p0, Lc8/uxe;->result:Ljava/lang/Object;

    .line 250
    return-void
.end method


# virtual methods
.method public getError()Lcom/sina/weibo/sdk/exception/WeiboException;
    .locals 1

    .prologue
    .line 244
    .local p0, "this":Lc8/uxe;, "Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult<TT;>;"
    iget-object v0, p0, Lc8/uxe;->error:Lcom/sina/weibo/sdk/exception/WeiboException;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "this":Lc8/uxe;, "Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult<TT;>;"
    iget-object v0, p0, Lc8/uxe;->result:Ljava/lang/Object;

    return-object v0
.end method
