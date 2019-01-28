.class public Lcom/youku/vo/HomeRecommandCardsInfo;
.super Ljava/lang/Object;
.source "HomeRecommandCardsInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;
    }
.end annotation


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private hasNoData:Ljava/lang/String;

.field private ord:Ljava/lang/String;

.field private req_id:Ljava/lang/String;

.field private sam:Ljava/lang/String;

.field private totalNum:I

.field private ver:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/youku/vo/HomeRecommandCardsInfo;->data:Ljava/util/List;

    return-object v0
.end method

.method public getE()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/youku/vo/HomeRecommandCardsInfo;->e:I

    return v0
.end method

.method public getHasNoData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/youku/vo/HomeRecommandCardsInfo;->hasNoData:Ljava/lang/String;

    return-object v0
.end method

.method public getOrd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/youku/vo/HomeRecommandCardsInfo;->ord:Ljava/lang/String;

    return-object v0
.end method

.method public getReq_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/youku/vo/HomeRecommandCardsInfo;->req_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/youku/vo/HomeRecommandCardsInfo;->sam:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalNum()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/youku/vo/HomeRecommandCardsInfo;->totalNum:I

    return v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/vo/HomeRecommandCardsInfo;->ver:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;>;"
    iput-object p1, p0, Lcom/youku/vo/HomeRecommandCardsInfo;->data:Ljava/util/List;

    .line 83
    return-void
.end method

.method public setE(I)V
    .locals 0
    .param p1, "e"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/youku/vo/HomeRecommandCardsInfo;->e:I

    .line 35
    return-void
.end method

.method public setHasNoData(Ljava/lang/String;)V
    .locals 0
    .param p1, "hasNoData"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/youku/vo/HomeRecommandCardsInfo;->hasNoData:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setOrd(Ljava/lang/String;)V
    .locals 0
    .param p1, "ord"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/youku/vo/HomeRecommandCardsInfo;->ord:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setReq_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "req_id"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/youku/vo/HomeRecommandCardsInfo;->req_id:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setSam(Ljava/lang/String;)V
    .locals 0
    .param p1, "sam"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/youku/vo/HomeRecommandCardsInfo;->sam:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setTotalNum(I)V
    .locals 0
    .param p1, "totalNum"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/youku/vo/HomeRecommandCardsInfo;->totalNum:I

    .line 59
    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "ver"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/youku/vo/HomeRecommandCardsInfo;->ver:Ljava/lang/String;

    .line 43
    return-void
.end method
