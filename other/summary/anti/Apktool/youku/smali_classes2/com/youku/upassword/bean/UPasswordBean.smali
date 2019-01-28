.class public Lcom/youku/upassword/bean/UPasswordBean;
.super Ljava/lang/Object;
.source "UPasswordBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bizId:Ljava/lang/String;

.field public btnName:Ljava/lang/String;

.field public cookieStr:Ljava/lang/String;

.field public durationWatchStr:Ljava/lang/String;

.field public h5UrlStr:Ljava/lang/String;

.field public imageUrlStr:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public sourceType:Ljava/lang/String;

.field public titleStr:Ljava/lang/String;

.field public vidStr:Ljava/lang/String;

.field public watchCount:I

.field public ykpwdOwnerId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .param p1, "titleStr"    # Ljava/lang/String;
    .param p2, "imageUrlStr"    # Ljava/lang/String;
    .param p3, "durationWatchStr"    # Ljava/lang/String;
    .param p4, "h5UrlStr"    # Ljava/lang/String;
    .param p5, "sourceType"    # Ljava/lang/String;
    .param p6, "vidStr"    # Ljava/lang/String;
    .param p7, "bizId"    # Ljava/lang/String;
    .param p8, "watchCount"    # I
    .param p9, "btnName"    # Ljava/lang/String;
    .param p10, "password"    # Ljava/lang/String;
    .param p11, "ykpwdOwnerId"    # J
    .param p13, "cookieStr"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/youku/upassword/bean/UPasswordBean;->titleStr:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/youku/upassword/bean/UPasswordBean;->imageUrlStr:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/youku/upassword/bean/UPasswordBean;->durationWatchStr:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/youku/upassword/bean/UPasswordBean;->h5UrlStr:Ljava/lang/String;

    .line 56
    iput-object p5, p0, Lcom/youku/upassword/bean/UPasswordBean;->sourceType:Ljava/lang/String;

    .line 57
    iput-object p6, p0, Lcom/youku/upassword/bean/UPasswordBean;->vidStr:Ljava/lang/String;

    .line 58
    iput-object p7, p0, Lcom/youku/upassword/bean/UPasswordBean;->bizId:Ljava/lang/String;

    .line 59
    iput p8, p0, Lcom/youku/upassword/bean/UPasswordBean;->watchCount:I

    .line 60
    iput-object p9, p0, Lcom/youku/upassword/bean/UPasswordBean;->btnName:Ljava/lang/String;

    .line 61
    iput-object p10, p0, Lcom/youku/upassword/bean/UPasswordBean;->password:Ljava/lang/String;

    .line 62
    iput-wide p11, p0, Lcom/youku/upassword/bean/UPasswordBean;->ykpwdOwnerId:J

    .line 63
    iput-object p13, p0, Lcom/youku/upassword/bean/UPasswordBean;->cookieStr:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public getBizId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/youku/upassword/bean/UPasswordBean;->bizId:Ljava/lang/String;

    return-object v0
.end method

.method public getBtnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/youku/upassword/bean/UPasswordBean;->btnName:Ljava/lang/String;

    return-object v0
.end method

.method public getCookieStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/youku/upassword/bean/UPasswordBean;->cookieStr:Ljava/lang/String;

    return-object v0
.end method

.method public getDurationWatchStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/youku/upassword/bean/UPasswordBean;->durationWatchStr:Ljava/lang/String;

    return-object v0
.end method

.method public getH5UrlStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/youku/upassword/bean/UPasswordBean;->h5UrlStr:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrlStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/youku/upassword/bean/UPasswordBean;->imageUrlStr:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/youku/upassword/bean/UPasswordBean;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/youku/upassword/bean/UPasswordBean;->sourceType:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/youku/upassword/bean/UPasswordBean;->titleStr:Ljava/lang/String;

    return-object v0
.end method

.method public getVidStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/youku/upassword/bean/UPasswordBean;->vidStr:Ljava/lang/String;

    return-object v0
.end method

.method public getWatchCount()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/youku/upassword/bean/UPasswordBean;->watchCount:I

    return v0
.end method

.method public getYkpwdOwnerId()J
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/youku/upassword/bean/UPasswordBean;->ykpwdOwnerId:J

    return-wide v0
.end method

.method public setBizId(Ljava/lang/String;)V
    .locals 0
    .param p1, "bizId"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/youku/upassword/bean/UPasswordBean;->bizId:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setBtnName(Ljava/lang/String;)V
    .locals 0
    .param p1, "btnName"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/youku/upassword/bean/UPasswordBean;->btnName:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setCookieStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "cookieStr"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/youku/upassword/bean/UPasswordBean;->cookieStr:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setDurationWatchStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "durationWatchStr"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/youku/upassword/bean/UPasswordBean;->durationWatchStr:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setH5UrlStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "h5UrlStr"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/youku/upassword/bean/UPasswordBean;->h5UrlStr:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setImageUrlStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUrlStr"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/youku/upassword/bean/UPasswordBean;->imageUrlStr:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/youku/upassword/bean/UPasswordBean;->password:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setSourceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceType"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/youku/upassword/bean/UPasswordBean;->sourceType:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setTitleStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "titleStr"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/youku/upassword/bean/UPasswordBean;->titleStr:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setVidStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "vidStr"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/youku/upassword/bean/UPasswordBean;->vidStr:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setWatchCount(I)V
    .locals 0
    .param p1, "watchCount"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/youku/upassword/bean/UPasswordBean;->watchCount:I

    .line 128
    return-void
.end method

.method public setYkpwdOwnerId(J)V
    .locals 1
    .param p1, "ykpwdOwnerId"    # J

    .prologue
    .line 151
    iput-wide p1, p0, Lcom/youku/upassword/bean/UPasswordBean;->ykpwdOwnerId:J

    .line 152
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "this is UPasswordBean:titleStr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/upassword/bean/UPasswordBean;->titleStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",imageUrlStr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/upassword/bean/UPasswordBean;->imageUrlStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",durationWatchStr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/upassword/bean/UPasswordBean;->durationWatchStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",h5UrlStr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/upassword/bean/UPasswordBean;->h5UrlStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",sourceType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/upassword/bean/UPasswordBean;->sourceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",vidStr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/upassword/bean/UPasswordBean;->vidStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",bizId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/upassword/bean/UPasswordBean;->bizId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",watchCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/upassword/bean/UPasswordBean;->watchCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",btnName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/upassword/bean/UPasswordBean;->btnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",password:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/upassword/bean/UPasswordBean;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",ykpwdOwnerId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/youku/upassword/bean/UPasswordBean;->ykpwdOwnerId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",cookieStr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/upassword/bean/UPasswordBean;->cookieStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
