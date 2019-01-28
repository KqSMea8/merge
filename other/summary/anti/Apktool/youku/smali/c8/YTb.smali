.class public Lc8/YTb;
.super Ljava/lang/Object;
.source "UTReqDataBuildResult.java"


# instance fields
.field mPostUrl:Ljava/lang/String;

.field postReqData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPostReqData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lc8/YTb;->postReqData:Ljava/util/Map;

    return-object v0
.end method

.method public getReqUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lc8/YTb;->mPostUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setPostReqData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "postReqData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lc8/YTb;->postReqData:Ljava/util/Map;

    .line 20
    return-void
.end method

.method public setReqUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "aUrl"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lc8/YTb;->mPostUrl:Ljava/lang/String;

    .line 12
    return-void
.end method
