.class public Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;
.super Ljava/lang/Object;
.source "HomeRecommandCardsInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/HomeRecommandCardsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CardEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity$VideosEntity;,
        Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity$FbReasonEntity;
    }
.end annotation


# instance fields
.field private algInfo:Ljava/lang/String;

.field private dct:I

.field private displayNum:I

.field private dma:I

.field private drawerName:Ljava/lang/String;

.field private exchange:I

.field private fbReason:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity$FbReasonEntity;",
            ">;"
        }
    .end annotation
.end field

.field private hasSubPage:I

.field private id:Ljava/lang/String;

.field private is_for_a_change:I

.field private jump_info:Lcom/youku/vo/HomeJumpInfo;

.field private layout:I

.field private recReason:Ljava/lang/String;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/HomeTagInfo;",
            ">;"
        }
    .end annotation
.end field

.field private tail:Lcom/youku/vo/HomeTagInfo;

.field private testId:Ljava/lang/String;

.field private type:I

.field private videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity$VideosEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->hasSubPage:I

    .line 289
    return-void
.end method


# virtual methods
.method public getAlgInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->algInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getDct()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->dct:I

    return v0
.end method

.method public getDisplayNum()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->displayNum:I

    return v0
.end method

.method public getDma()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->dma:I

    return v0
.end method

.method public getDrawerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->drawerName:Ljava/lang/String;

    return-object v0
.end method

.method public getExchange()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->exchange:I

    return v0
.end method

.method public getFbReason()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity$FbReasonEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->fbReason:Ljava/util/List;

    return-object v0
.end method

.method public getHasSubPage()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->hasSubPage:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_for_a_change()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->is_for_a_change:I

    return v0
.end method

.method public getJump_info()Lcom/youku/vo/HomeJumpInfo;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->jump_info:Lcom/youku/vo/HomeJumpInfo;

    return-object v0
.end method

.method public getLayout()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->layout:I

    return v0
.end method

.method public getRecReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->recReason:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/HomeTagInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getTail()Lcom/youku/vo/HomeTagInfo;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->tail:Lcom/youku/vo/HomeTagInfo;

    return-object v0
.end method

.method public getTestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->testId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->type:I

    return v0
.end method

.method public getVideos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity$VideosEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->videos:Ljava/util/List;

    return-object v0
.end method

.method public setAlgInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "algInfo"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->algInfo:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setDct(I)V
    .locals 0
    .param p1, "dct"    # I

    .prologue
    .line 207
    iput p1, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->dct:I

    .line 208
    return-void
.end method

.method public setDisplayNum(I)V
    .locals 0
    .param p1, "displayNum"    # I

    .prologue
    .line 175
    iput p1, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->displayNum:I

    .line 176
    return-void
.end method

.method public setDma(I)V
    .locals 0
    .param p1, "dma"    # I

    .prologue
    .line 223
    iput p1, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->dma:I

    .line 224
    return-void
.end method

.method public setDrawerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "drawerName"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->drawerName:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setExchange(I)V
    .locals 0
    .param p1, "exchange"    # I

    .prologue
    .line 153
    iput p1, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->exchange:I

    .line 154
    return-void
.end method

.method public setFbReason(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity$FbReasonEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "fbReason":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity$FbReasonEntity;>;"
    iput-object p1, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->fbReason:Ljava/util/List;

    .line 248
    return-void
.end method

.method public setHasSubPage(I)V
    .locals 0
    .param p1, "hasSubPage"    # I

    .prologue
    .line 235
    iput p1, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->hasSubPage:I

    .line 236
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->id:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setIs_for_a_change(I)V
    .locals 0
    .param p1, "is_for_a_change"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->is_for_a_change:I

    .line 118
    return-void
.end method

.method public setJump_info(Lcom/youku/vo/HomeJumpInfo;)V
    .locals 0
    .param p1, "jump_info"    # Lcom/youku/vo/HomeJumpInfo;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->jump_info:Lcom/youku/vo/HomeJumpInfo;

    .line 150
    return-void
.end method

.method public setLayout(I)V
    .locals 0
    .param p1, "layout"    # I

    .prologue
    .line 167
    iput p1, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->layout:I

    .line 168
    return-void
.end method

.method public setRecReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "recReason"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->recReason:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/HomeTagInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/HomeTagInfo;>;"
    iput-object p1, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->tags:Ljava/util/List;

    .line 138
    return-void
.end method

.method public setTail(Lcom/youku/vo/HomeTagInfo;)V
    .locals 0
    .param p1, "tail"    # Lcom/youku/vo/HomeTagInfo;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->tail:Lcom/youku/vo/HomeTagInfo;

    .line 130
    return-void
.end method

.method public setTestId(Ljava/lang/String;)V
    .locals 0
    .param p1, "testId"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->testId:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 183
    iput p1, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->type:I

    .line 184
    return-void
.end method

.method public setVideos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity$VideosEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, "videos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity$VideosEntity;>;"
    iput-object p1, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;->videos:Ljava/util/List;

    .line 232
    return-void
.end method
