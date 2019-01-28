.class public Lc8/WHd;
.super Ljava/lang/Object;
.source "ANResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mANError:Lcom/meizu/cloud/pushsdk/networking/error/ANError;

.field private final mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private response:Lc8/JId;


# direct methods
.method public constructor <init>(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V
    .locals 1
    .param p1, "anError"    # Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    .prologue
    .line 49
    .local p0, "this":Lc8/WHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANResponse<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/WHd;->mResult:Ljava/lang/Object;

    .line 51
    iput-object p1, p0, Lc8/WHd;->mANError:Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lc8/WHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANResponse<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lc8/WHd;->mResult:Ljava/lang/Object;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/WHd;->mANError:Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    .line 47
    return-void
.end method

.method public static failed(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lc8/WHd;
    .locals 1
    .param p0, "anError"    # Lcom/meizu/cloud/pushsdk/networking/error/ANError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/meizu/cloud/pushsdk/networking/error/ANError;",
            ")",
            "Lc8/WHd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lc8/WHd;

    invoke-direct {v0, p0}, Lc8/WHd;-><init>(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    return-object v0
.end method

.method public static success(Ljava/lang/Object;)Lc8/WHd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lc8/WHd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "result":Ljava/lang/Object;, "TT;"
    new-instance v0, Lc8/WHd;

    invoke-direct {v0, p0}, Lc8/WHd;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getError()Lcom/meizu/cloud/pushsdk/networking/error/ANError;
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Lc8/WHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANResponse<TT;>;"
    iget-object v0, p0, Lc8/WHd;->mANError:Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    return-object v0
.end method

.method public getOkHttpResponse()Lc8/JId;
    .locals 1

    .prologue
    .line 71
    .local p0, "this":Lc8/WHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANResponse<TT;>;"
    iget-object v0, p0, Lc8/WHd;->response:Lc8/JId;

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
    .line 55
    .local p0, "this":Lc8/WHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANResponse<TT;>;"
    iget-object v0, p0, Lc8/WHd;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lc8/WHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANResponse<TT;>;"
    iget-object v0, p0, Lc8/WHd;->mANError:Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOkHttpResponse(Lc8/JId;)V
    .locals 0
    .param p1, "response"    # Lc8/JId;

    .prologue
    .line 67
    .local p0, "this":Lc8/WHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANResponse<TT;>;"
    iput-object p1, p0, Lc8/WHd;->response:Lc8/JId;

    .line 68
    return-void
.end method
