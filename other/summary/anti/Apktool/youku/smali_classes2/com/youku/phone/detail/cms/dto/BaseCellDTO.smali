.class public Lcom/youku/phone/detail/cms/dto/BaseCellDTO;
.super Lcom/youku/phone/detail/cms/dto/BaseDTO;
.source "BaseCellDTO.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/phone/detail/cms/dto/BaseCellDTO$OperationCornerMark;
    }
.end annotation


# instance fields
.field private avatar:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field private is_vv:I

.field private operationCornerMark:Lcom/youku/phone/detail/cms/dto/BaseCellDTO$OperationCornerMark;

.field private playCount:Ljava/lang/String;

.field private stripe:Ljava/lang/String;

.field private subtitle:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/youku/phone/detail/cms/dto/BaseDTO;-><init>()V

    .line 95
    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/BaseCellDTO;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/BaseCellDTO;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_vv()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/BaseCellDTO;->is_vv:I

    return v0
.end method

.method public getOperationCornerMark()Lcom/youku/phone/detail/cms/dto/BaseCellDTO$OperationCornerMark;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/BaseCellDTO;->operationCornerMark:Lcom/youku/phone/detail/cms/dto/BaseCellDTO$OperationCornerMark;

    return-object v0
.end method

.method public getPlayCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/BaseCellDTO;->playCount:Ljava/lang/String;

    return-object v0
.end method

.method public getStripe()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/BaseCellDTO;->stripe:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/BaseCellDTO;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/BaseCellDTO;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/BaseCellDTO;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0
    .param p1, "avatar"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/BaseCellDTO;->avatar:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/BaseCellDTO;->image:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setIs_vv(I)V
    .locals 0
    .param p1, "is_vv"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/BaseCellDTO;->is_vv:I

    .line 85
    return-void
.end method

.method public setOperationCornerMark(Lcom/youku/phone/detail/cms/dto/BaseCellDTO$OperationCornerMark;)V
    .locals 0
    .param p1, "operationCornerMark"    # Lcom/youku/phone/detail/cms/dto/BaseCellDTO$OperationCornerMark;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/BaseCellDTO;->operationCornerMark:Lcom/youku/phone/detail/cms/dto/BaseCellDTO$OperationCornerMark;

    .line 93
    return-void
.end method

.method public setPlayCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "playCount"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/BaseCellDTO;->playCount:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setStripe(Ljava/lang/String;)V
    .locals 0
    .param p1, "stripe"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/BaseCellDTO;->stripe:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/BaseCellDTO;->subtitle:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/BaseCellDTO;->title:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/BaseCellDTO;->url:Ljava/lang/String;

    .line 77
    return-void
.end method
